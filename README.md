# This and that about developing of JPT and ....

GCP (Google Cloud Platform):

Create new project:
Project ID: jpt-21

Lokal den Projket setzen:
λ gcloud config set project jpt-21

gcoud muss hierfür bereits installiert sein:
TODO

https://jpt-21.appspot.com/


Travis-CI: https://travis-ci.org/JustPlainText/front



# Developing

## git flow - how to run on windows

As windows console <a href="http://cmder.net/">cmder</a> is super good!

Read: http://www.effectivetrainings.de/blog/2012/04/22/git-flow-einfaches-arbeiten-mit-dem-perfekten-git-workflow/

### Installation (use cmder)

10. curl -OL https://raw.github.com/nvie/gitflow/develop/contrib/gitflow-installer.sh

20. gitflow-installer.sh

30. restart cmder

 for ( every repo ) {

  40a. change to repo(s)

  40b. git flow init #(just access all proposals)

 }

## Docker

## Install Docker for Windows:
https://docs.docker.com/docker-for-windows/#explore-the-application-and-run-examples

### Docker quick control
Build container (Dockerfile inside current dir):
$ docker build -t my-angular-app .
#my-angular-app - new image name

Create & Run docker in forderground:
docker run -p 80:8080 --name my_app -it my-angular-app
#my-angular-app - image name | my_app - new container name | 80:8080 out(wolrd) <-> in(container) Ports
#for run in background: -d

Stop container:
docker stop my_app

Start existing container:
docker start my_app

List running & stoped container:
$ docker ps -a

Delete container:
$ docker rm my_app

Go inside container:
$ docker  665b4a1e17b6 #by ID
$ docker attach loving_heisenberg #by Name

Copy files to/from container:
docker cp foo.txt mycontainer:/foo.txt
docker cp mycontainer:/foo.txt foo.txt

### Angular on Docker
http://queirozf.com/entries/angular-2-app-running-on-nginx-on-docker-a-simple-example

### Docker in GAE

Running docker container in GAE - step-by-step:
https://graysonkoonce.com/deploying-to-google-app-engine-using-docker/
WARN: Docker out-port for GAE = 8080!!!

Running docker container in GAE, example with nginx:
https://cloud.google.com/appengine/docs/flexible/custom-runtimes/quickstart

Update GAE docker over Travis-CI:
https://graysonkoonce.com/continuous-deployment-to-google-app-engine-using-travis-ci/

https://cloud.google.com/solutions/continuous-delivery-with-travis-ci


## Kubernetes:

Installation von minikube und kubectl unter Windows:
https://blogs.msdn.microsoft.com/wasimbloch/2017/01/23/setting-up-kubernetes-on-windows10-laptop-with-minikube/

Start minikube in Powershell mit Admin:

minikube.exe start --kubernetes-version="v1.6.0" --vm-driver="hyperv" --memory=2048 --hyperv-virtual-switch="My Virtual Switch" --v=7 --alsologtostderr

Test:
λ minikube.exe status
```
minikubeVM: Running
localkube: Running
```
