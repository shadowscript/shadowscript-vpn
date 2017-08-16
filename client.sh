#!/bin/sh
## first argument will be name of client whose config file you generating
  # ./client.sh client_name client/server proto tcp/udp remote url/ip port dev tun/tap
CER_KEYS=/etc/easy-rsa/keys
OVN_DIR=./clients

echo "Generating .ovpn config file.."



  echo $'\b' ${1} $'\n' \
< echo ${2}  $'\n' \
< echo ${3} ${4}  $'\n' \
< echo ${5} ${6}  $'\n' \
< echo ${7} ${8}  $'\n' \
> ${OVN_DIR}/${1}.ovpn

echo "...Complete. Config file available in clients"
# <(echo -e '<ca>') \
# ${KEY_DIR}/ca.crt \
# <(echo -e '</ca>\n<cert>') \
# ${KEY_DIR}/${1}.crt \
# <(echo -e '</cert>\n<key>') \
# ${KEY_DIR}/${1}.key \
# <(echo -e '</key>\n<tls-auth>') \
# ${KEY_DIR}/ta.key \
# <(echo -e '</tls-auth>') \
