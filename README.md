# cat20
先至cli資料夾中  
 ```
cd cat-token-box/packages/cli
 ```
取得金鑰安裝後  
先授權
 ```
cd aspwe
chmod +x "median1or2v2.sh"
cd ..
 ```
## 一般模式
挑一種策略執行  
0,1,2,3分別會對應到當前未過塊的median fee  
<img src="截圖 2024-09-13 上午10.17.02.jpg" width="70%">  
 ```
sudo ./aspwe/"median2.sh"
 ```
 ```
sudo ./aspwe/"median1.sh"
 ```
以此類推  
## 機動調整模式
median1or2:平常使用1，gas高於指定值時會切換成2(預設為4300)  
median1or2v2:上述功能外，增加隨著gas增加速度滾動多給fee的功能  

 ```
sudo ./aspwe/"median1or2.sh"
 ```
 ```
sudo ./aspwe/"median1or2v2.sh"
 ```
## 常用錢包指令
 ```
cd cat-token-box/packages/cli
 ```
 ```
sudo yarn cli wallet create
 ```
 ```
sudo yarn cli wallet address
 ```
 ```
sudo yarn cli mint -i cc1b4c7e844c8a7163e0fccb79a9ade20b0793a2e86647825b7c05e8002b9f6a_0 --fee-rate 1350
 ```
 ```
sudo yarn cli wallet balances
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
