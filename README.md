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

```
docker run -v "$(pwd)":/ansible ansible-playbook playbook-example.yml -i hosts
```
```
docker run -v "$(pwd)":/ansible ansible-playbook --entrypoint ansible playbook-example.yml -i hosts
```
