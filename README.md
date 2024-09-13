# cat20
先至cli資料夾中  
取得金鑰安裝後  
先授權
 ```
cd aspwe
chmod +x "median3.sh"
chmod +x "median2.sh"
chmod +x "median1.sh"
chmod +x "median0.sh"
chmod +x "median1or2.sh"
chmod +x "fast.sh"
cd ..
 ```
挑一種策略執行
 ```
./aspwe/"median3.sh"
 ```
 ```
./aspwe/"median2.sh"
 ```
 ```
./aspwe/"median1.sh"
 ```
 ```
./aspwe/"median1or2.sh"
 ```
 ```
./aspwe/"median0.sh"
 ```
常用錢包指令
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

新伺服器一鍵安裝
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
  
設定調整
 ```
nano config.json
 ```
 ```
cd src
cd commands
cd mint
 ```
