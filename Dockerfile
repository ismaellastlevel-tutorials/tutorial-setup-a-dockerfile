#the start image: see this as a new linus computer that you set
FROM debian:9

#RUN: executes a given command , within the container (here the command is the one that installs nodejs on debian OS
RUN apt-get update -yq \
&& apt-get install curl gnupg -yq \
&& curl -sL https://deb.nodesource.com/setup_10.x | bash \
&& apt-get install nodejs -yq \
&& apt-get clean -y


#ADD: copy the files
    #from here (the "." symbol means relative to the position of this dockerfile file , and as it is only '.' it means the files in the same level )
    #to /my_app_folder_name_in_container (my_app_folder_name_in_container is the name of the folder (inside the container) that will contain my app content)
ADD . /my_app_folder_name_in_container/

#WORKDIR from the container , move now in my app (the folder created inside the container (my_app_folder_name_in_container) and ...
WORKDIR /my_app_folder_name_in_container

#RUN the command  "npm install" (to install the project dependencies in my app (inside the container))
RUN npm install

#the port number on which the app is listening should be exposed : (see the file: bin/www line 15)
EXPOSE 3000

#
#VOLUME /my_app_folder_name_in_container/logs

#CMD this is the command taht tells to docker how to launch the app
CMD npm run start
