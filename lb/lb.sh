# Set the virtual IP/Port for the LB inside the container: 11.11.11.20:27017
LB_IP=11.11.11.20
NODE1_IP=11.11.11.7
NODE2_IP=11.11.11.8
NODE3_IP=11.11.11.9
PORT=27017
APP_PORT=80

# 1. Direct 1/3 of traffic to node1 (11.11.11.7:80)
iptables -t nat -A PREROUTING -p tcp -d $LB_IP --dport $PORT -m statistic --mode nth --every 3 --packet 0 -j DNAT --to-destination $NODE1_IP:$APP_PORT

# 2. Direct 1/3 of traffic to node2 (11.11.11.8:80)
iptables -t nat -A PREROUTING -p tcp -d $LB_IP --dport $PORT -m statistic --mode nth --every 2 --packet 0 -j DNAT --to-destination $NODE2_IP:$APP_PORT

# 3. Direct the remaining traffic (1/3) to node3 (11.11.11.9:80)
iptables -t nat -A PREROUTING -p tcp -d $LB_IP --dport $PORT -j DNAT --to-destination $NODE3_IP:$APP_PORT

# 4. Rewrite source address
iptables -t nat -A POSTROUTING -s 11.11.11.0/24 -d 11.11.11.0/24 -j MASQUERADE
