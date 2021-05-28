### **dockerfile creation**

I- Writing the Dockerfile

See instructions explanations within the Dockerfile file

II-building the container

1-to build the image:
`docker build -t basic-nodejs-app .`

2-run 
`$ docker run -d -p $_PORT:3000 basic-nodejs-app`

example: `$ docker run -d -p 8000:3000 basic-nodejs-app`
to start an instance of the container with '$_PORT' replaced by one of your machine port 
(3000 is the port defined by the nodejs app (so the in the container the app is running on port 3000))
 
 3- open your navigator on : "http://localhost:$_PORT" (in the example it would be http://localhost:8000)
