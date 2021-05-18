git pull

yarn --registry=https://registry.npm.taobao.org/ && yarn build

docker rm -f demo1 &> /dev/null

docker run -d --restart=on-failure:5\
    -p 8080:80 \
    -v $PWD/dist:/usr/share/nginx/html \
    --name demo1 nginx
