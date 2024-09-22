# cat20
先至cli資料夾中  
 ```
cd cat-token-box/packages/cli
 ```
若你是要重置更新腳本(首次安裝則跳過)  
 ```
rm -rf aspwe
 ```
取得金鑰安裝後  
 ```
git clone https://（給你的金鑰）@github.com/jason2290/aspwe.git
 ```
先授權
 ```
cd aspwe
chmod +x "median1or2v2.sh"
chmod +x "median0v3.sh"
cd ..
 ```
安裝環境
 ```
sudo apt-get update
sudo apt-get install jq
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
**針對FBull更新版**  
median0v3:平常使用0至1之間的gas，比例依鏈上gas情況調整，追加gas下限1000  
 ```
sudo ./aspwe/"median1or2v2.sh"
 ```
 ```
sudo ./aspwe/"median0v3.sh"
 ```
救Tx給高gas
 ```
sudo yarn cli mint -i c468e99ac3b533e503eac5ccf4f0e3362772f80cead8b7f71d802305d02f73d0_0 --fee-rate 4000
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
sudo yarn cli mint -i c468e99ac3b533e503eac5ccf4f0e3362772f80cead8b7f71d802305d02f73d0_0 --fee-rate 2000
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

git clone https://github.com/jason2290/cat-token-box
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
 ```
sudo yarn build
 ```
## 維護相關指令  
重置更新腳本  
 ```
rm -rf aspwe
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
