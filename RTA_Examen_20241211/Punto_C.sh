 
#!/bin/bash
cd

cd /home/lucioalco/UTN-FRA_SO_Examenes

cd 202408

cd docker

cd web

cat <<FIN > index.html
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sistemas Operativos - UTNFRA</title>
</head>
<body>
    <div>
        <h1>Recuperatorio 2do Parcial</h1>
        <h2>Detalles del Alumno</h2>
        <ul>
            <li>Lucio Alcoba</li>
            <li>División: 116</li>
            <li id="examen">Examen: 2do Parcial - Recuperatorio <span id="fecha"></span></li>
            <li>IP Pública: <span id="ip-publica"></span></li>
        </ul>
    </div>

    <div id="contenido-archivo">
        <h2>Archivo:</h2>
        <textarea id="contenido-archivo-texto" rows="10" cols="50" readonly></textarea>
    </div>

    <script src="scripts/get-current-date.js"></script>
    <script src="scripts/get-ip-publica.js"></script>
    <script src="scripts/get-file-content.js"></script>
</body>
</html>
FIN

docker build -t lucioalcoba1/web3-ri2024-alcoba:latest .

docker push lucioalcoba1/web3-ri2024-alcoba:latest

cat <<FIN > docker-compose.yml
version: '3'

services:
    web:
        image: lucioalcoba1/web3-ri2024-alcoba:latest
        ports:
            
"8081:80"
      volumes:
./web/file:/usr/share/nginx/html/file
    networks:
code-network
networks:
  code-network:
    driver: bridge
FIN

mkdir -p web/file
cat <<FIN > web/file/info.txt
CPU Modelo: $(grep "model name" /proc/cpuinfo | head -n1 | awk -F ':' '{print$2}') 
Frecuencia: $(grep "cpu MHz" /proc/cpuinfo | head -n1 | awk -F ':' '{print$2}')
FIN

cd ..
docker run -d -p 8081:80 lucioalcoba1/web3-ri2024-alcoba

docker ps
