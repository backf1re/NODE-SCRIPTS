dd if=/dev/zero of=/mnt/myswap.swap bs=1M count=3500
mkswap /mnt/myswap.swap
chmod 0600 /mnt/myswap.swap
swapon /mnt/myswap.swap

sudo apt-get update -y
sudo apt-get upgrade -y
sudo apt-get dist-upgrade -y
sudo apt-get install software-properties-common curl -y
sudo apt-get install nano git -y
sudo apt-get install build-essential libtool autotools-dev automake pkg-config libssl-dev libevent-dev bsdmainutils software-properties-common libgmp3-dev  -y
sudo apt-get install libboost-all-dev -y
sudo add-apt-repository ppa:bitcoin/bitcoin -y
sudo apt-get update -y
sudo apt-get install libdb4.8-dev libdb4.8++-dev -y
sudo apt-get install libminiupnpc-dev -y
cd $HOME
sudo mkdir quix
git clone https://github.com/quixcoin/quix.git quix
cd $HOME/quix
chmod 777 autogen.sh
./autogen.sh
./configure
chmod 777 share/genbuild.sh
sudo make
sudo make install
mkdir $HOME/.quixcore
YOURIP=`wget -qO- eth0.me`
printf "rpcuser=masternode\nrpcpassword=PutHereRandomPassword\ndaemon=1\nlisten=1\nserver=1\nmaxconnections=512\nrpcallowip=127.0.0.1\nexternalip=$YOURIP:6333\nmasternode=1\nmasternodeprivkey=" > /$HOME/.quixcore/quix.conf