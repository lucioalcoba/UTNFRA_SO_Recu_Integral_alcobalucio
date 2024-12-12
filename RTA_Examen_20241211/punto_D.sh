#!/bin/bash
cd ..
# Cambiar a la carpeta del proyecto
cd UTN-FRA_SO_Examenes/202408/ansible/

# Crear roles con ansible-galaxy
cd roles/
ansible-galaxy role init Alta_Usuarios_Alcoba
ansible-galaxy role init Sudoers_Alcoba
ansible-galaxy role init Instala-tools_Alcoba

# Configurar el rol 2PRecuperatorio
echo "---
# tasks file for 2PRecuperatorio

- name: Crear directorio para el archivo
  file:
    path: /tmp/alumno
    state: directory

- name: Crear archivo con los datos requeridos
  copy:
    dest: /tmp/alumno/datos.txt
    content: |
      Nombre: {{ nombre }}  Apellido: {{ apellido }}
      División: {{ division }}
      Fecha: {{ fecha }}
      -------------------------
      Distribución: {{ distro }}
      Cantidad de Cores: {{ cores }}" > 2PRecuperatorio/tasks/main.yml

# Configurar archivo de inventario
cd ../../inventory/
echo "[all:children]
testing
produccion

[testing]
127.0.0.1

[produccion]
localhost ansible_connection=local" > hosts

# Configurar el rol Alta_Usuarios_Alcoba
cd ../roles/Alta_Usuarios_Alcoba/tasks/
echo "---
# tasks file for Alta_Usuarios_Alcoba

- name: Crear grupo GProfesores
  group:
    name: GProfesores
    state: present

- name: Crear grupo GAlumnos
  group:
    name: GAlumnos
    state: present

- name: Crear usuario Profesor y agregarlo al grupo GProfesores
  user:
    name: Profesor
    groups: GProfesores
    state: present

- name: Crear usuario Alumno y agregarlo al grupo GAlumnos
  user:
    name: Alumno
    groups: GAlumnos
    state: present" > main.yml

# Configurar el rol Sudoers_Alcoba
cd ../../Sudoers_Alcoba/tasks/
echo "---
# tasks file for Sudoers_Alcoba

- name: Permitir que el grupo GProfesores ejecute sudo sin contraseña
  copy:
    dest: /etc/sudoers.d/GProfesores
    content: |
      %GProfesores ALL=(ALL) NOPASSWD:ALL
    owner: root
    group: root
    mode: '0440'" > main.yml

# Configurar el rol Instala-tools_Alcoba
cd ../../Instala-tools_Alcoba/tasks/
echo "---
# tasks file for Instala-tools_Alcoba

- name: Actualizar el índice de paquetes
  ansible.builtin.apt:
    update_cache: yes
  when: ansible_os_family == \"Debian\"

- name: Instalar paquetes requeridos
  ansible.builtin.package:
    name:
      - htop
      - tmux
      - tree
      - speedtest-cli
    state: present" > main.yml

# Crear el archivo del playbook
cd ../../../
echo "---
- name: Playbook para crear el archivo de datos
  hosts: localhost
  become: true
  vars:
    nombre: Lucio
    apellido: Alcoba
    division: 116
    fecha: 12/12/24
    distro: Ubuntu
    cores: 6
  roles:
    - 2PRecuperatorio

- name: Crear usuarios y asignar grupos
  hosts: localhost
  become: true
  roles:
    - Alta_Usuarios_Alcoba

- name: Configurar sudoers para GProfesores
  hosts: localhost
  become: true
  roles:
    - Sudoers_Alcoba

- name: Instalar herramientas necesarias
  hosts: localhost
  become: true
  roles:
    - Instala-tools_Alcoba" > playbook.yml

# Ejecutar el playbook
ansible-playbook -i inventory playbook.yml
