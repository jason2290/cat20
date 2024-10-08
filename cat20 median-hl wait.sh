counter=0  # 初始化计数器

while [ $counter -lt 20 ]; do
    fastestFee="null" 

    while [ -z "$fastestFee" ] || [ "$fastestFee" == "null" ]; do
        response=$(curl -s https://mempool.fractalbitcoin.io/api/v1/fees/mempool-blocks)

        fastestFee=$(echo $response | jq '.[1].medianFee')
        echo "獲取medianFee: $fastestFee"

        if [ -z "$fastestFee" ] || [ "$fastestFee" == "null" ]; then
            echo "獲取medianFee失敗，重新嘗試"
            sleep 1
        fi
    done
    
        if (( $(echo "$fastestFee > 3250" | bc -l) )); then
        echo "medianFee $fastestFee 大於3250，設置為3250"
        fastestFee=3250
        fi

    echo "有效medianFee: $fastestFee"

    command="yarn cli mint -i 45ee725c2c5993b3e4d308842d87e973bf1951f5f7a804b21e4dd964ecd12d6b_0 5 --fee-rate $fastestFee"
    $command

    if [ $? -ne 0 ]; then
        echo "mint失敗，腳本暫停"
        exit 1
    fi

    counter=$((counter+1))
    echo "mint成功，當前執行次數: $counter 次"

    sleep 1
done

echo "腳本已執行20次，結束"
