MY_NAME=`whoami`

cd ~/

# update apt
sudo apt -y update
sudo apt -y upgrade

# install aptitude
sudo apt -y install aptitude

# install ssh
sudo aptitude -y install ssh

# restart sshd
sudo /etc/init.d/ssh restart
# install curl
sudo apt -y install curl

# install dpdk and decompress
curl http://fast.dpdk.org/rel/dpdk-18.11.1.tar.xz | tar xJvf -

cd dpdk-stable-18.11.1.tar.xz 

export RTE_SDK="/home/$MY_NAME/dpdk-stable-18.11.1"
export RTE_TARGET="x86_64-native-linuxapp-gcc"

# あとhugepageみたいなのを設定しないといけない

