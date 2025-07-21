---------------------------------------------------------------------

Hola! Este carpeta contiene todos los codigos necesarios para 
correr el instalador para controlar el Fred Device:

----------------------- Correr el instalador ------------------------	

	El proceso es sencillo, abre una terminal git o similar
	dentro de la raspberry pi y escribe el siguiente comando:

	cd /c/Controls/app_settings

	Posteriormente corre el siguiente comando para poder asignar
	los permisos necesarios al programa
	
	chmod +x build.sh 

	Y finalmente corre el siguiente comando para empezar a instalarlo.
	
	./build.sh	

---------------------- Settings de la Aplicación -------------------

	La aplicación esta en la carpeta llamada dist_app 
	y se llama control_fred.
	
	Para correr la aplicación primero debes asegurarte de 
	haber subido el código de Arduino al Arduino Mega, si 
	no se sube antes de correr la app, el código fallara.
	
	Habiendo subido el Arduino, procede a correr la app!!


--------------------------  Consultas -------------------------------
Para mas dudas consulta al equipo de IOT,Control o similares!!
Leonardo Andrade.
---------------------------------------------------------------------