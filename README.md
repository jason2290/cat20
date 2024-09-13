# cat20

fast: 選取最新塊的fast fee  
median-h: 選取近8塊中最高的median fee  
median-l: 選取近8塊中最低的median fee   
median-l2: 選取近8塊中第二低的median fee  
median-l wait: 選取近8塊中最低的median fee，追加檢查過塊功能  

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
