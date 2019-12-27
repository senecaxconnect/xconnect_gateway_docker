# xConnect Gateway Container 
Docker container for the bare minimum components of the xConnect Gateway (Selene) engine. 
This container will only install:
- Selene Gateway Engine
- MQTT Broker for xConnect Agents pub/sub

# Getting Started

1. apt install docker.io docker-compose
2. git clone https://github.com/senecaxconnect/xconnect_gateway_docker
3. Modify gw.env with the provided API and SecretKey provided by the Seneca xConnect Support Team
4. MQTT_PORT={Desired MQTT Input Port} GW_NAME={Desired Gateway Name} docker-compose up -d

###### Example: 
MQTT_PORT=15001 GW_NAME=XCGW-DOCK01 docker-compose up -d
