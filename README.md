# cat20
需要租用節點歡迎私訊  
一鍵安裝
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
 ```
git clone https://github.com/jason2290/cat20.git
 ```
 ```
cd cat20
chmod +x "cat20 median-hl wait.sh"
cd ..
./cat20/"cat20 median-hl wait.sh"
 ```
錢包指令
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
 ```
 ```
