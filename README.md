# marathon
docker file for marathon 0.8.1
The office document is not updated.

### Overview
If you only install marathon with yum from mesosphere, there is not start script to startup marathon.
So I install marathon from its github release.
Note: you need to install mesos from mesosphere with yum commond before update the marathon tarball. otherwise there is no enough lib files to startup it.

###run marathon
- startup zookeeper. (you can get a image from my dockfile in github)
- startup mesos master (you can get a image from my dockfile in github)
- startup marthon as a container. (you can get a image from my dockfile in github) the running command is 

```
docker run -d --name marathon  -p 8080:8080 duffqiu/marathon --master zk://<ZK_IP>:2181/mesos --zk zk://<ZK_IP>:2181/marathon --checkpoint --task_launch_timeout 300000
```

