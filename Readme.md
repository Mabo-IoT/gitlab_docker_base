# 使用范围

启动时来一次就好。

gitlab-runner每次跑pipline的时候运行的镜像。





# 使用方法

1. **在外网，带有docker客户端的电脑中**，通过运行`download_docker_base.sh`文件后，生成一个名为docker_base的大文件。
2. 然后直接向gitlab提交即可，后续程序的构建，会由ci自动执行。





# 实现说明

1. 原因：
   1. 内网
   2. docker:latest没有curl，无法调用ci的api接口，所以需要构建一个。

2. docker-compose

   使用curl太慢了。



# 构建命令行：

#### alpine版本：

```
docker build -f mabopython_Dockerfile_alpine -t mabo/python:3.7.1-alpine-0.1.5 .

# 修改tag 
docker tag mabo/python:3.7.1-alpine-0.1.5 mabo/python:latest
```

#### 完整版本：（不需要）

```
docker build -f mabopython_Dockerfile -t mabo/python:3.7.0-stretch .
```





