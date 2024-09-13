# cat20
先至cli資料夾中  
 ```
cd cat-token-box/packages/cli
 ```
取得金鑰安裝後  
先授權
 ```
cd aspwe
chmod +x "median3.sh"
chmod +x "median2.sh"
chmod +x "median1.sh"
chmod +x "median0.sh"
chmod +x "median1or2.sh"
chmod +x "median1or2v2.sh"
chmod +x "fast.sh"
cd ..
 ```
## 一般模式
挑一種策略執行  
0,1,2,3分別會對應到當前未過塊的median fee  
<img src="截圖 2024-09-13 上午10.17.02.jpg" width="70%">  
 ```
./aspwe/"median2.sh"
 ```
 ```
./aspwe/"median1.sh"
 ```
以此類推  
## 機動調整模式
median1or2:平常使用1，gas高於指定值時會切換成2(預設為4300)  
median1or2v2:上述功能外，增加隨著gas增加速度滾動多給fee的功能  

 ```
./aspwe/"median1or2.sh"
 ```
 ```
./aspwe/"median1or2v2.sh"
 ```
## 常用錢包指令
 ```
cd cat-token-box/packages/cli
 ```
 ```
sudo yarn cli wallet create
yarn cli wallet address
 ```
 ```
sudo yarn cli mint -i 45ee725c2c5993b3e4d308842d87e973bf1951f5f7a804b21e4dd964ecd12d6b_0 5 --fee-rate 2300
 ```
 ```
yarn cli wallet balances
 ```

## 新伺服器一鍵安裝
 ```
sudo apt-get update
sudo apt-get install npm -y
sudo npm install n -g
sudo n stable
sudo npm i -g yarn

git clone https://github.com/CATProtocol/cat-token-box
    cd cat-token-box
sudo yarn install
sudo yarn build

cd packages/cli
 ```
  
## 設定調整&魔改cli
 ```
nano config.json
 ```
 ```
cd src
cd commands
cd mint
 ```
 ```
nano mint.command.ts
 ```
 ```
cd ..
cd ..
cd ..
 ```
## 維護相關指令  
重置更新腳本  
 ```
rm -r aspwe
 ```
檢查log檔
 ```
docker logs --since 10s -f tracker
 ```
重啟docker
 ```
sudo docker restart tracker
sudo docker restart tracker-bitcoind-1
 ```
本地ip
 ```
127.0.0.1
 ```
