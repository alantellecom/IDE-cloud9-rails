
https://hub.docker.com/r/linuxserver/cloud9

docker create \
  --name=cloud9 \
  -e PUID=1000 \
  -e PGID=1000 \
  -e TZ=Europe/London \
  -e GITURL=https://github.com/linuxserver/docker-cloud9.git `#optional` \
  -e USERNAME= `#optional` \
  -e PASSWORD= `#optional` \
  -p 8000:8000 \
  -v /path/to/your/code:/code `#optional` \
  -v /var/run/docker.sock:/var/run/docker.sock `#optional` \
  --restart unless-stopped \
  linuxserver/cloud9
  
  
  create secret with USERNAME and PASSWORD for secretRef:
  
  kubectl create secret generic auth --from-literal USERNAME=alunox --from-literal PASSWORD=xxxxxx --namespace alunox
