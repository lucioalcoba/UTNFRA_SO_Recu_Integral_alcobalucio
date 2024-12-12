git clone https://github.com/upszot/UTN-FRA_SO_Examenes.git
./UTN-FRA_SO_Examenes/202408/script_Precondicion.sh
ll
sudo fdisk -l
sudo fdisk /dev/sdc
sudo fdisk /dev/sdd
sudo fdisk /dev/sde
sudo fdisk /dev/sdd
sudo fdisk -l
sudo pvcreate /dev/sdd1 /dev/sdd2 /dev/sde1 /dev/sdc1 /dev/sdc2
sudo vgcreate vg_datos /dev/sde1 /dev/sdd1 /dev/sdc2
sudo vgcreate vg_temp /dev/sdc1
sudo vgs
sudo lvcreate -L 1G vg_datos -n lv_docker
sudo lvcreate -l 100%FREE vg_datos -n lv_multimedia
sudo lvcreate -l 100%FREE vg_temp -n lv_swap
sudo mkfs.ext4 /dev/mapper/vg_datos-lv_docker
sudo mkfs.ext4 /dev/mapper/vg_datos-lv_multimedia
sudo mkfs.ext4 /dev/mapper/vg_temp-lv_swap
sudo mount /dev/mapper/vg_datos-lv_docker /var/lib/docker/
sudo mkdir Multimedia/
sudo mount /dev/mapper/vg_datos-lv_multimedia Multimedia/
sudo systemctl restart docker
sudo systemctl status Docker
sudo vgs
ll
cd UTN-FRA_SO_Examenes/
LL
ll
cd ..
cd RTA_Examen_20241211/
ll
sudo nano punto_A.SH
cd ..
cd /usr/local/bin/
ll
ls
sudo nano alcoba_check_URL.sh
cd
ll
cd UTN-FRA_SO_Examenes/202408/bash_script/
ls
cat Lista_URL.txtis
sudo cat Lista_URL.txt 
cd /usr/local/bin/
ls
sudo nano alcoba_check_URL.sh 
apt install tree
sudo apt install tree
sudo nano alcoba_check_URL.sh 
./script.sh
~/.bashrc
sudo ./script.sh
sudo ~/.bashrc
sudo chmod +x
sudo ~/.bashrc
sudo chmod +x Punto_B.sh
ll
cat alcoba_check_URL.sh 
cd UTN-FRA_SO_Examenes/202408/bash_script/
cd
ll
cd RTA_Examen_20241211/
LL
ll
sudo nano punto_B.SH 
sudo chmod +x Punto_B.sh
./Punto_B.sh
ll
cd
ll
tree /tmp/head-check
sudo tree /tmp/head-check
cd RTA_Examen_20241211/
LL
ll
tree /tmp/head-check
sudo tree /tmp/head-check
sudo nano punto_A.SH 
sudo nano punto_B.SH 
./Punto_B.sh 
sudo apt-get install tree
./Punto_B.sh 
ll
sudo ./Punto_B.sh 
sudo rm -f /home/alcoba/RTA_Examen_20241211/Punto_A.sh
ll
sudo rm -f /home/alcoba/RTA_Examen_20241211/Punto_A.sh
ll
./Punto_B.sh 
sudo rm -f /home/alcoba/RTA_Examen_20241205/Punto_A.sh
sudo chmod +x Punto_A.sh
ll
sudo rm -f /home/alcoba/RTA_Examen_20241205/Punto_B.sh
LL
ll
sudo rm -f /home/alcoba/RTA_Examen_20241205/Punto_A.sh
ll
sudo rm -f /home/lucioalco/RTA_Examen_20241205/Punto_A.sh
ll
sudo rm -f /home/lucioalco/RTA_Examen_20241211/Punto_B.sh
ll
sudo nano punto_B.SH 
sudo chmod +x Punto_B.SH
sudo chmod +x punto_B.sh
sudo chmod +x Punto_B.sh
sudo nano punto_b.sh
sudo nano Punto_B.sh
sudo chmod +x Punto_B.sh
ll
./Punto_B.sh
cd
ll
cd UTN-FRA_SO_Examenes/
LL
ll
cd 202408/docker/
ll
sudo nano dockerfile 
sudo nano web/
cd
cd UTN-FRA_SO_Examenes/
ll
cd
cd RTA_Examen_20241211/
ll
sudo nano Punto_C.sh
sudo chmod +x Punto_C.sh
./Punto_C.sh
sudo nano Punto_C.sh
cd 202408/docker/
LL
ll
cd 202408/docker/
cd
cd 202408/docker/
cd /UTN-FRA_SO_Examenes/202408/docker/web/
lll
ll
cd UTN-FRA_SO_Examenes/
cd 202408/docker/web/
ll
docker build -t lucioalcoba1/web3-ri2024-alcoba:latest
docker push lucioalcoba1/web3-ri2024-alcoba:latest
docker login -u lucioalcoba1
docker push lucioalcoba1/web3-ri2024-alcoba:latest
docker ps
./Punto_C.sh
sudo./Punto_C.sh
cd
ll
c
cd RTA_Examen_20241211/
LL
ll
./Punto_C.sh
docker run -d -p 8081:80 lucioalcoba1/web3-ri2024-alcoba
docker build -t lucioalcoba1/web3-ri2024-alcoba:latest -f /home/alcoba/UTN-FRA_SO_Examenes/202408/docker .
cd 202408
CD
cd
UTN-FRA_SO_Examenes/
cd UTN-FRA_SO_Examenes/
ll
cd 202408
cd UTN-FRA_SO_Examenes
cd docker
ll
docker build -t lucioalcoba1/web3-ri2024-alcoba:latest -f /home/alcoba/UTN-FRA_SO_Examenes/202408/docker 
docker build -t lucioalcoba1/web3-ri2024-alcoba:latest -f /home/alcoba/UTN-FRA_SO_Examenes/202408/docker
docker build -t lucioalcoba1/web3-ri2024-alcoba:latest -f 
docker build -t lucioalcoba1/web3-ri2024-alcoba:latest 
docker build -t lucioalcoba1/web3-ri2024-alcoba:latest -f /home/alcoba/UTN-FRA_SO_Examenes/202408/docker
docker build -t lucioalcoba1/web3-ri2024-alcoba:latest -f /home/alcoba/UTN-FRA_SO_Examenes/202408/docker.
docker build -t lucioalcoba1/web3-ri2024-alcoba:latest 
docker build -t lucioalcoba1/web3-ri2024-alcoba:latest
docker buildx build -t lucioalcoba1/web3-ri2024-alcoba:latest --load -f /home/alcoba/UTN-FRA_SO_Examenes/202408/docker .
docker buildx build -t lucioalcoba1/web3-ri2024-alcoba:latest --load -f /home/lucioalco/UTN-FRA_SO_Examenes/202408/docker .
docker build -t lucioalcoba1/web3-ri2024-alcoba:latest -f /home/lucioalco/UTN-FRA_SO_Examenes/202408/docker .
docker build -t lucioalcoba1/web3-ri2024-alcoba:latest -f /home/lucioalco/UTN-FRA_SO_Examenes/202408/docker
docker build -t web3-ri2024-alcoba:latest .
docker push lucioalcoba1/web3-ri2024-alcoba:latest
ucioalco@v3recuperatorio:~/UTN-FRA_SO_Examenes/202408/docker$ docker push lucioalcoba1/web3-ri2024-alcoba:latest
The push refers to repository [docker.io/lucioalcoba1/web3-ri2024-alcoba]
An image does not exist locally with the tag: lucioalcoba1/web3-ri2024-alcoba
docker push web3-ri2024-alcoba:latest
docker build -t web3-ri2024-alcoba:latest .
docker push lucioalcoba1/web3-ri2024-alcoba:latest .
docker push lucioalcoba1/web3-ri2024-alcoba:latest
ll
cd UTN-FRA_SO_Examenes
ll
cd
cd UTN-FRA_SO_Examenes/
ll
cd 202408
ll
cd docker/
ll
sudo nano docker-compose.yml 
docker push lucioalcoba1/web3-ri2024-alcoba:latest .
docker push lucioalcoba1/web3-ri2024-alcoba:latest
docker push web3-ri2024-alcoba:latest
docker build -t lucioalcoba1/web3-ri2024-alcoba:latest -f /home/lucioalco/UTN-FRA_SO_Examenes/202408/docker .
docker build -t web3-ri2024-alcoba:latest .
ll
sudo nano dockerfile 
docker build -t web3-ri2024-alcoba:latest .
docker push web3-ri2024-alcoba:latest
docker push lucioalcoba1/web3-ri2024-alcoba:latest
docker build -t lucioalcoba1/web3-ri2024-alcoba:latest
docker build -t lucioalcoba1/web3-ri2024-alcoba:latest .
docker push lucioalcoba1/web3-ri2024-alcoba:latest
cd
cd RTA_Examen_20241211/
ll
sudo nano punto_D.sh
sudo chmod +x Punto_D.sh
ll
./Punto_D.sh
./punto_D.sh
sudo ./punto_D.sh
sudo chmod +x punto_D.sh
./punto_D.sh
cd
ll
git clone https://github.com/lucioalcoba/UTNFRA_SO_Recu_Integral_alcobalucio.git
ll
cd RTA_Examen_20241211/
LL
ll
cd
cd UTN-FRA_SO_Examenes/
ll
cd 202408
ll
cd docker/
ll
cat docker-compose.yml 
cd
sudo mkdir /home/lucioalco/UTNFRA_SO_Recu_Integral_alcobalucio/202408/
ll
cd UTNFRA_SO_Recu_Integral_alcobalucio/
ll
sudo cp -r /home/lucioalco/UTN-FRA_SO_Examenes/202408/* /home/lucioalco/UTNFRA_SO_Recu_Integral_alcobalucio/202408/
cd 202408/
ll
cd ..
sudo mkdir /home/lucioalco/UTNFRA_SO_Recu_Integral_alcobalucio/RTA_Examen_20241211/
ll
sudo cp -r /home/lucioalco/RTA_Examen_20241211/* /home/lucioalco/UTNFRA_SO_Recu_Integral_alcobalucio/RTA_Examen_20241211/
ll
cd RTA_Examen_20241211/
ll
c
cd
cd UTNFRA_SO_Recu_Integral_alcobalucio/RTA_Examen_20241211/
cd ..
