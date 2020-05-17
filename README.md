
https://hub.docker.com/r/linuxserver/cloud9

docker create \
  --name=cloud9 \
  -e PUID=1000 \
  -e PGID=1000 \
  -e TZ=Europe/London \
  -e GITURL=https://github.com/linuxserver/docker-cloud9.git `#optional` \
  -e USERNAME= `#optional` \
  -e PASSWORD= `#optional` \
  -p 8000:8000 #for cloud9 service \
  -p 3000:3000 #for rails app \
  -v /path/to/your/code:/code `#optional` \
  -v /var/run/docker.sock:/var/run/docker.sock `#optional` \
  --restart unless-stopped \
  linuxserver/cloud9
  
  
   
  Using kubernetes, create secret with USERNAME and PASSWORD for secretRef:
  
  kubectl create ns room01
  
  +
  
  kubectl create secret generic auth --from-literal USERNAME=xxx --from-literal PASSWORD=xxxxxx --namespace room01
