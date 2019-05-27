#Ansible Controller with Python3 support

Vagrant project to configure a ansible management server.


#Running with Vagrant

```vagrant up```
```vagrant ssh```

#Running with Docker

```docker run -v "$(pwd)":/ansible ansible-playbook playbook-example.yml -i hosts```
```docker run -v "$(pwd)":/ansible ansible-playbook --entrypoint ansible playbook-example.yml -i hosts```
