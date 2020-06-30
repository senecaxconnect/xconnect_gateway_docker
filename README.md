# xConnect Gateway Container 
Docker container for the bare minimum components of the xConnect Gateway (Selene) engine. 
This container will only install:
- Selene Gateway Engine
- MQTT Broker for xConnect Agents pub/sub

## Installation (Linux)

1. `apt install docker.io docker-compose`
2. `git clone https://github.com/senecaxconnect/xconnect_gateway_docker`
3. Modify gw.env with the provided API and SecretKey provided by the Seneca xConnect Support Team
4. Set Environmental Variables:

    `MQTT_PORT=1883` 
    
    `GW_NAME=XCGW_UNIQUENAMEHERE` 

5. docker-compose up -d

###### Linux Example: 
`MQTT_PORT=15001 GW_NAME=XCGW-DOCK01 docker-compose up -d`

## Installation (Windows)
1. Enable Hyper-V and Containers Feature in Windows Add/Remove Features
2. Install git client for Windows
3. `git clone https://github.com/senecaxconnect/xconnect_gateway_docker`
4. Modify gw.env with the provided API and SecretKey provided by the Seneca xConnect Support Team
5. Set Environmental Variables:
    
    `$env:MQTT_PORT=1883`

    `$env:GW_NAME=XCGW_UNIQUENAMEHERE`
6. `docker-compose up -d`


## Multiple Instances (Linux)

1. `bash scale.sh`
2. Enter number of gateways to create (Currently support up to 9)




