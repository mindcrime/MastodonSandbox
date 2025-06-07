#!/bin/bash

echo $1

if [ -z $1 ]
then

    java -cp target/demo-1.0.0.jar -Dloader.main=org.fogbeam.demo.ListAppsApplication  org.springframework.boot.loader.launch.PropertiesLauncher

else
    
    java -cp target/demo-1.0.0.jar -Dloader.main=org.fogbeam.demo.$1Application  org.springframework.boot.loader.launch.PropertiesLauncher

fi
