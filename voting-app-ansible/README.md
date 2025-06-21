# 📦 Voting App - Ansible

Este proyecto automatiza el despliegue de una aplicación de votación basada en Flask y Node.js, utilizando **Ansible** para la configuración y **Vagrant** como entorno virtual de desarrollo.

## Estructura

- **inventories/**: Inventarios y variables de entorno.
- **roles/**: Roles reutilizables para instalar dependencias y configurar servicios (app, database, redis, vote, result, worker, etc).
- **playbooks/**: Playbooks principales para orquestar el despliegue.
- **ansible.cfg**: Configuración de Ansible.
- **Vagrantfile**: Provisión local con Vagrant para pruebas.

## Requisitos

- Ansible 2.10+
- Vagrant (opcional, para pruebas locales)
- Acceso SSH a los hosts de destino

## Uso rápido

1. Clona el repositorio y entra al directorio:

   ```sh
   git clone https://github.com/oscarock17/devops-project-voting-app.git
   cd devops-project-voting-app/voting-app-ansible
   ```

2. Edita el inventario y variables según tu entorno en `inventories/dev/group_vars/vars.yml`.

3. Ejecuta el playbook principal:

   ```sh
   ansible-playbook playbooks/main.yml
   ```

4. (Opcional) Levanta un entorno local con Vagrant:

   ```sh
   vagrant up
   ```

## Roles incluidos

- **apt**: Instalación de paquetes base.
- **database**: Configuración de PostgreSQL.
- **redis**: Instalación y configuración de Redis.
- **app**: Clona el repositorio
- **vote**: Despliegue del servicio Flask.
- **result**: Despliegue del frontend Node.js.
- **worker**: Despliegue del worker Node.js.

## Puertos de la aplicación

| Servicio         | Puerto por defecto|
|------------------|-------------------|
| Vote (Flask)     | 5000              |
| Result (Node.js) | 5001              |
| Worker           | -                 |
| PostgreSQL       | 5432              |
| Redis            | 6379              |

## Verificar servicios

Después del despliegue, puedes verificar el estado de los servicios principales ejecutando:

```sh
sudo systemctl status voting
sudo systemctl status result
sudo systemctl status worker
```

## Notas

- Puedes personalizar los servicios y variables en los archivos de inventario.
- El sistema crea servicios systemd para cada componente.
- Ideal para pruebas locales y como base para despliegues en servidores reales.

---

> Consulta el [README principal](../README.md) para más