# fakelist
fakelist is a fake craigslist webapp built for learning purpose. It uses LAMP stack. Full tutorials will be available sometimes in the future at upretip.github.io/fakelist  

Run it on a local LAMP stack by installing LAMPP on a VM from [here](https://www.apachefriends.org/download.html). This will probably require learning and starting apache and mysql servers using LAMP. 

Or use this [`Dockerfile`](./dockerfile) if docker is installed and started on your machine.   

Execute [`rebuild.sh`](./rebuild.sh) as it already contains docker build commands using bash shell. 
```
>$ chmod 784 ./rebuild.sh
>$ bash ./rebuild.sh
```

Visit the app by going to http://localhost:8000/.  

Stop the container when done.

```
# stop and remove the container
>$ docker rm -f faker 

# remove the docker image
>$ docker rmi lamp

#remove all unused volume
>$ docker volume prune 
```

Issues:

Need to execute the `queries.sql` file  on mysql to get the underlying table and default data. Dockerfile copies it inside working directory /app already.

