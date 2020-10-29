# docker
docker-compose configuration for my vps :)

### for Grafana run
`sudo chown -R 472:472 .data/grafana/`

### Container Starting Order:

    1. database
     
    2. hastebin
     
    3. portainer
    
    4. teamcity
       
    5. kittybot-dev
    
    6. kittybot
                    
    7. nginx
    
    

or run the start script

### Updating KittyBot
run `$ ./docker/kittybot/update`
