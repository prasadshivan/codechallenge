# Code Challenge

This project is created to install a two-tier application. The poject is split into two modules, Infrastructure management and Configuation management. 

Terraform is used for Infrastructure Management and Ansible is used for Configuration Management. Nginx server is the endpoint of this project. Nginx can be accessed from your web browser through using port 80.

Terraform will provision a AWS EC2 server with a Ubuntu operating systemn.

Ansible will install docker on the AWS EC2 and run a docker container with Nginx.

## Getting Started

Copy/Clone the repository codechallenge to your local system.

## Prerequisites
```
Operating System: CentOS 7
Terraform
Ansible
AWS Account
```
## Folder structure
```

├── ansible
│   ├── config-management
│   │   ├── defaults
│   │   │   └── main.yml
│   │   ├── files
│   │   ├── handlers
│   │   │   └── main.yml
│   │   ├── meta
│   │   │   └── main.yml
│   │   ├── README.md
│   │   ├── tasks
│   │   │   ├── install.yml
│   │   │   └── main.yml
│   │   ├── templates
│   │   ├── tests
│   │   │   ├── inventory
│   │   │   └── test.yml
│   │   └── vars
│   │       └── main.yml
│   └── installdocker.yml
└── terraform
    ├── dev
    │   └── main.tf
    └── modules
        ├── ec2
        │   ├── instances.tf
        │   ├── Jenkins.pem
        │   └── variables.tf
        └── vpc
            ├── network.tf
            └── variables.tf

```

## Installation
```
Initializing Terraform:

Download Terraform tool and Install it in your CentOS 7 workstation
$ cd /terraform/dev/ and run "terraorm init" to intiatlize the Terraform


Intializing Ansible:

copy your AWS PEM Key to /ansible/

```

## Running the tests

```
$ cd /terraform/dev/ and run "terraform plan" to create a execution plan and check the current state.

Output will show the entire infrastructure of the AWS EC2 Instance if the code is executed correctly.

```

## Deployment

```
AWS EC2:

commands:
 $ cd /codechallenge/terraform/dev
 $ Terraform apply -auto-approve
 
 - Verify if the code is executed without errors
 - Log into AWS Console to check if the 'one project' EC2 is initialized.
 
 Docker and Nginx server:
 
 commands:
  $ cd /codechallange/ansible
  $ ansible-playbook installdocker.yml
 


```

## Built With

* [Dropwizard](http://www.dropwizard.io/1.0.2/docs/) - The web framework used
* [Maven](https://maven.apache.org/) - Dependency Management
* [ROME](https://rometools.github.io/rome/) - Used to generate RSS Feeds

## Contributing

Please read [CONTRIBUTING.md](https://gist.github.com/PurpleBooth/b24679402957c63ec426) for details on our code of conduct, and the process for submitting pull requests to us.

## Versioning

We use [SemVer](http://semver.org/) for versioning. For the versions available, see the [tags on this repository](https://github.com/your/project/tags). 

## Authors

* **Shiva Prasad** 

See also the list of [contributors](https://github.com/your/project/contributors) who participated in this project.

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details

## Acknowledgments

* Hat tip to anyone whose code was used
* Inspiration
* etc
