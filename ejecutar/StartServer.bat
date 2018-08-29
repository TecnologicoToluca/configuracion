@rem Servidor de aplicaciones Cloud
@echo off
echo Ejecutando Eureka 1
start cmd /k java -jar -Dspring.profiles.active=primary C:\Users\Ruben.Mondragon\Documents\workspace-sts\EurekaServer\target\EurekaServer-0.0.1-SNAPSHOT.jar>>Eurreka1.log 


@echo off
echo Ejecutando Eureka 2
start cmd /k java -jar -Dspring.profiles.active=secondary C:\Users\Ruben.Mondragon\Documents\workspace-sts\EurekaServer\target\EurekaServer-0.0.1-SNAPSHOT.jar>>Eurreka2.log 


@echo off
echo Ejecutando Eureka 3
start cmd /k java -jar -Dspring.profiles.active=tertiary C:\Users\Ruben.Mondragon\Documents\workspace-sts\EurekaServer\target\EurekaServer-0.0.1-SNAPSHOT.jar>>Eurreka3.log 
echo cuanto esten levantados los eurekas presiona enter
@pause

@echo off
echo Ejecutando Config Server
start cmd /k java -jar C:\Users\Ruben.Mondragon\Documents\workspace-sts\ConfigServer\target\ConfigServer-0.0.1-SNAPSHOT.jar>>Config.log 
echo cuanto esten levantado los Servidor de configuracion presiona enter
@pause

@echo off
echo Ejecutando Zuul
start cmd /k java -jar C:\Users\Ruben.Mondragon\Documents\workspace-sts\ZuulServer\target\ZuulServer-0.0.1-SNAPSHOT.jar>>Zuul.log 

@echo off 
echo Ejecutando Hystrix Dashboard
start cmd /k java -jar C:\Users\Ruben.Mondragon\Documents\workspace-sts\HystrixDashboard\target\HystrixDashboard-0.0.1-SNAPSHOT.jar>>Histrix.log

@echo off   
echo Ejecutando MicroServicio-Usuarios
start cmd /k java -jar C:\Users\Ruben.Mondragon\Documents\workspace-sts\MicroServicio-Usuarios\target\MicroServicio-Usuarios-0.0.1-SNAPSHOT.jar>>Usuarios.log 

@echo off 
echo Ejecutando MicroServicio-Vales
start cmd /k java -jar C:\Users\Ruben.Mondragon\Documents\workspace-sts\MicroServicio-Vales\target\MicroServicio-Vales-2.0.4.RELEASE.jar>>Vales.log 