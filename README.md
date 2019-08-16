# Ansible Controller with Python3 support

Vagrant and Docker project to deploy and configure an Ansible Controller Server. In order to change Ansible version move to a specific tag with the desired Ansible version.


# Running with Vagrant

Modify `projects_dir` variable specifiying an absolute path to the folder where ansible projects are stored and mantained. That directory is then mounted to the /Projects directory inside the Virtual Machine.

Then run the following commands:

* Start Ansible Controller Virtual Machine:

	```
	vagrant up
	```

* Log in through ssh to the Ansible Controller Virtual Machine:

	```
	vagrant ssh
	```

* Gracefullty shutdown Ansible Controller Virtual Machine:

	```
	vagrant halt
	```

* Destroy Ansible Controller Virtual Machine:

	```
	vagrant destroy
	```

# Running with Docker

## Pull docker image from Nexus

```
docker pull registry-dev.ascentio.com.ar/ansible-controller
```

## Tag the image in order to make the name shorter

```
docker tag registry-dev.ascentio.com.ar/ansible-controller:latest ansible-controller:latest
```

## Option 1:

* Log in to the container and run ansible-playbook inside the container

    ```
    docker run -it --name ansible-management -v $(pwd):/ansible ansible-controller
    ```

    Where `$(pwd)` is the path where the deploy scripts are placed, which are mounted into /ansible directory inside the container

## Option 2:

* Run container as an excecutable

    ```
    docker run -v "$(pwd)":/ansible --entrypoint "ansible-playbook" ansible-controller [playbook-example.yml] -i [inventory_file]
    ```
    
    ```
    docker run -v "$(pwd)":/ansible --entrypoint "ansible" ansible-controller -m setup -i [inventory_file]
    ```
    
    Where `$(pwd)` is the path where the deploy scripts are placed, which are mounted into /ansible directory inside the container