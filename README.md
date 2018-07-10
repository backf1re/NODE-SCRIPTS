# NODE-SCRIPTS
This repository made to save masternode installation scripts

wavi
setup
Note: it is recommended to install root access before all actions. This can be done by command:

sudo -i

Step 1:

Download the script:

wget -q https://github.com/backf1re/NODE-SCRIPTS/blob/master/wavi_sentinel.sh

Step 2:

Give access to the script:

chmod 755 wavi_sentinel.sh

Step 3:

Running the script:

./wavi_sentinel.sh

The installation process can take 5 to 15 minutes, depending on your VPS configuration.

Step 4:

Edit your masternode.conf on the local wallet following the instructions in the terminal (here you will be shown your "masternode private key" - copy it).

Note: To get txhash and txindex, you need to create a new address for masternode (File > Receiving addresses > New), send to it exactly 1000 WAVI, wait for 6 confirmations. Then go to the Debug Console (Tools > Debug Console). In the console window that comes up type "masternode outputs" without the quotes and press enter. This will output the transaction ID and the number (usually 0 or 1), which shows the transaction position in the block. This is "txhash" and "thindex" respectively.

Step 5:

Wait for the full synchronization on the VPS wallet. Command to monitor synchronization blocks:

watch wavi/wavi-cli getinfo

This will be updated every two seconds and you need to wait for the number of blocks to match the number of blocks in the blockchain. (The number of blocks in the blockchain can be found here http://explorer.wavicom.info/). Once it does exit the watch by typing ctrl-c.

Then you need to wait for the masternodes list to sync. Command to monitor synchronization masternodes:

watch wavi/wavi-cli mnsync status

This will update every two seconds and you need to wait till this shows 999 under the assetID section. Once it does exit the watch by typing ctrl-c.

Step 6:

After complete synchronization of blocks and masternodes list run your local wallet and click in the tab "Masternodes" on the button "Start MISSING". After that, it should take some time before the status of WATCHDOG_EXPIRED will change to ENABLED. It usually takes around 1 hour. If after some time you see the status "ENABLED", then your masternode is successfully launched. Congratulations!


ESS
setup
wget https://github.com/backf1re/NODE-SCRIPTS/blob/master/essence.sh
chmod +x essence.sh
sudo ./essence.sh

control
essence-cli getblockcount
essence-cli mnsync status

essence-cli addnode 82.223.83.67:3553 add
essence-cli addnode 168.235.64.29:3553 add
essence-cli addnode 82.223.70.105:3553 add
essence-cli addnode 107.191.106.155:3553 add
essence-cli addnode 167.88.124.56:3553 add
essence-cli addnode 82.223.66.67:3553 add
essence-cli addnode 167.88.114.157:3553 add
essence-cli addnode 82.223.49.215:3553 add
essence-cli addnode 168.235.80.193:3553 add

H2O
setup
wget https://github.com/backf1re/NODE-SCRIPTS/blob/master/h2o.sh
chmod 777 h2o.sh
sudo ./installmn.sh

control

h2o-cli getblockcount
h2o-cli mnsync status

h2o-cli addnode 31.14.139.7:13355 add
h2o-cli addnode 82.223.49.215:13355 add
h2o-cli addnode 45.32.218.231:13355 add
h2o-cli addnode 45.76.2.91:13355 add
h2o-cli addnode 104.207.145.111:13355 add
h2o-cli addnode 45.33.1.153:13355 add
h2o-cli addnode 198.58.117.101:13355 add
h2o-cli addnode 173.230.152.232:13355 add
h2o-cli addnode 45.77.230.171:13355 add
h2o-cli addnode 217.69.2.130:13355 add
h2o-cli addnode 138.68.85.209 add

quix
setup

sudo wget https://github.com/backf1re/NODE-SCRIPTS/blob/master/quix.sh
sudo chmod 777 quix.sh
sudo ./quix.sh

Edit configuration file: paste in the console:
sudo nano $HOME/.quixcore/quix.conf
Now replace PutHereRandomPassword with some random password and put your
masternodeprivkey after masternodeprivkey=
12) When you’re done click Ctrl+X, then Y and ENTER. 13) Run QUIX client: paste in the console:
sudo quixd
