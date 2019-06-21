# Ansible Controller with Python3 support

Vagrant and Docker project to configure a ansible management server. In order to change ansible version move to a specific tag with the desired ansible version.


# Running with Vagrant

```
vagrant up
```
```
vagrant ssh
```

# Running with Docker

## Pull docker image from Nexus

```
docker pull registry-dev.ascentio.com.ar/ansible-management
```

## Log in to the container and run ansible-playbook inside the container

```
docker run -it --name ansible-management -v $(pwd):/ansible registry-dev.ascentio.com.ar/ansible-management
```

Where $(pwd) is the path where the deploy scripts are placed, which are mounted into /ansible directory in the container

## Run container as an excecutable

```
docker run -v "$(pwd)":/ansible --entrypoint "ansible-playbook" ansible-management [playbook-example.yml] -i [inventory_file]
```

```
docker run -v "$(pwd)":/ansible --entrypoint "ansible" ansible-management -m setup -i [inventory_file]
```
