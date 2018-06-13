OVPN_DATA="ovpn"
docker run -v $OVPN_DATA:/etc/openvpn -d -p 1194:1194/udp --name openvpn --cap-add=NET_ADMIN kylemanna/openvpn
