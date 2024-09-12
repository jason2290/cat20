while true; do
    fastestFee="null" 

    while [ -z "$fastestFee" ] || [ "$fastestFee" == "null" ]; do
        response=$(curl -s https://mempool.fractalbitcoin.io/api/v1/fees/mempool-blocks)
        fastestFee=$(echo $response | jq '.[0].feeRange | .[-3]') 
        echo "獲取fastestFee: $fastestFee"


        if [ -z "$fastestFee" ] || [ "$fastestFee" == "null" ]; then
            echo "未獲取fastestFee，retrying"
            sleep 1
        fi
    done

    echo "有效的 fastestFee: $fastestFee"

    command="yarn cli mint -i 45ee725c2c5993b3e4d308842d87e973bf1951f5f7a804b21e4dd964ecd12d6b_0 5 --fee-rate $fastestFee"
    $command

    if [ $? -ne 0 ]; then
        echo "mint失敗，腳本暫停"
        exit 1
    fi

    sleep 1
done
