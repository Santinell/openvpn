if [ $# -eq 0 ]
  then
    echo "No arguments supplied. Example:"
    echo "./adduser.sh pavel"
    exit 0
fi
OVPN_DATA="ovpn"
docker run -v $OVPN_DATA:/etc/openvpn --rm -it kylemanna/openvpn easyrsa build-client-full $1 nopass
docker run -v $OVPN_DATA:/etc/openvpn --rm kylemanna/openvpn ovpn_getclient $1 > $1.ovpn
echo "File saved as $1.ovpn"
