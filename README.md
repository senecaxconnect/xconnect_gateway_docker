# xConnect Gateway Container 
This repository provides an easy path to standing up an xConnect Gateway (vBridge) within your own environment. 

To continue, you must have already been provided an APIKey and SecretKey from the xConnect Support Team.

This container image includes:
- xConnect Gateway Engine (Required to connect edge devices/agents to your cloud instance)
- MQTT Broker for xConnect Agents pub/sub (Responsible for telemetry handling between edge devices/agents and the gateway)

Currently unsupported in Gateway Container
- Remote Desktop
- Custom Tunnels

## Installation (Linux)

1. `apt install docker.io docker-compose`
2. `git clone https://github.com/senecaxconnect/xconnect_gateway_docker`
3. Modify gw.env with the provided API and SecretKey provided by the xConnect Support Team
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
4. Modify gw.env with the provided API and SecretKey provided by the xConnect Support Team
5. Set Environmental Variables:
    
    `$env:MQTT_PORT=1883`

    `$env:GW_NAME=XCGW_UNIQUENAMEHERE`
6. `docker-compose up -d`




