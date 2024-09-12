#!/bin/bash

while true; do
    fastestFee="null" 

    while [ -z "$fastestFee" ] || [ "$fastestFee" == "null" ]; do
        response=$(curl -s https://mempool.fractalbitcoin.io/api/v1/fees/mempool-blocks)

        fastestFee=$(echo $response | jq '[.[] | .medianFee] | min')
        echo "獲取medianFee: $fastestFee"

        if [ -z "$fastestFee" ] || [ "$fastestFee" == "null" ]; then
            echo "獲取medianFee失敗，重新嘗試"
            sleep 1
        fi
    done

    echo "有效medianFee: $fastestFee"

    command="yarn cli mint -i 45ee725c2c5993b3e4d308842d87e973bf1951f5f7a804b21e4dd964ecd12d6b_0 5 --fee-rate $fastestFee"
    $command

    if [ $? -ne 0 ]; then
        echo "mint失敗，腳本暫停"
        exit 1
    fi

    sleep 20
    while true; do
        response=$(curl -s https://mempool.fractalbitcoin.io/api/v1/fees/mempool-blocks)

        minFeeInRange=$(echo $response | jq '.[0].feeRange | min')
        echo "最新塊最低值: $minFeeInRange"

        if (( $(echo "$minFeeInRange < $fastestFee" | bc -l) )); then
            echo "確認過塊，繼續執行..."
            break
        else
            echo "未過塊，等待中..."
            sleep 5
        fi
    done

    sleep 1
done