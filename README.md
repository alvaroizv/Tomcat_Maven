# Despliegue de Aplicaciones Java con Tomcat y Maven

Este proyecto tiene como objetivo **desplegar apliacaciones en java (ficheros .war) con Tomcat y Maven** en una máquina virtual Debian, desplegada mediante **Vagrant** y **VirtualBox**. 

---

## Índice

1. [Instalación de Tomcat y OpenJDK](#1-instalación-de-tomcat-y-openjdk)
   - [Creación de Usuario y Grupo](#11-creación-de-usuario-y-grupo)
2. [Tomcat9 y su configuración](#2-tomcat9-y-su-configuración)
   - [Configuración del acceso remoto](#21-configuración-del-acceso-remoto)
   - [Gestión de usuarios en Tomcat9](#22-usuarios-en-tomcat9)
3. [Admin-Area de Tomcat9](#3-admin-area-de-tomcat9)
   - [Uso de Paneles de Administración Gráficos](#31-paneles-de-administración-gráficos)
   - [Despliegue manual mediante GUI](#32-despliegue-manual-mediante-gui)
4. [Despliegue mediante Maven](#4-despliegue-mediante-maven)
   - [Generación de aplicaciones con Maven](#41-generación-de-aplicaciones-con-maven)
   - [Configuración del plugin y despliegue](#42-despliegue-de-la-aplicación)
5. [Tarea: Despliegue Rock-Paper-Scissors](#5-tarea-despliegue-rock-paper-scissors)

---

## Descripción general

Este proyecto consiste en la instalación y configuración manual de un servidor Tomcat sobre Debian. Se usará Maven para realizar pruebas de despliegue de aplicaciones Java mediante archivos .war y desde un repositorio de GitHub externo.

También se configurará e instalará el admin - area de tomcat9, para la administración de proyectos desplegados y host conectados.

La documentación,tanto imagenes como Markdown, se hayan en la carpeta **doc**
---
