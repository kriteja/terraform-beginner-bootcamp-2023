# Terraform Beginner Bootcamp 2023

## Semantic Versioning :mage:

This project is going to utilize [Sematic](https://semver.org/) versioning for it's tagging. 

The general format: 

**MAJOR.MINOR.PATCH**, eg. `1.0.1`

- **MAJOR** version when you make incompatible API changes
- **MINOR** version when you add functionality in a backward compatible manner
- **PATCH** version when you make backward compatible bug fixes
Additional labels for pre-release and build metadata are available as extensions to the MAJOR.MINOR.PATCH format.

## Install Terraform CLI 

### Considerations with the Terraform CLI changes 
The Terraform CLI intallation steps have changes due to gpg keyrng changes. So we needed to refer to the latest install CLI instructions via Terraform documentation and change the scripting for install.  

[Terraform CLI Installation Guide Documentation](https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli) 

### Consderations for Linux Distribution 
This project is built againt Ubuntu. 
Please consider checking your Linux Distribution and cange accordingly to distribution needs. 
- [How to check OS version in Linux ](https://www.cyberciti.biz/faq/how-to-check-os-version-in-linux-command-line/)
```sh
$ cat /etc/os-release
```

### Refactoring into Bash scripts 
While fixing the Terraform CLI gpg depreciation issues we've noticed that bash scripts steps were a considerable amount more code. So we decided to create a bash script t install the Terraform CLI. 

This bash script is located here: [./bin/install_terraform_cli](./bin/install_terraform_cli)
- This will keep the Gitpod Task file ([.gitpod.yml](.gitpod.yml)) tidy. 
- This allows us an easier to debug and execute manually Terraform CLI Install. 
- This will allow better portability for other projects that need to install Terraform CLI. 

### Shebang considerations 
A Shebang (prounced Sha-bang) tells the bash script what program that will interpet the script. eg. `#!/bin/bash` 

ChatGPT recommended this format for bash `#!/usr/bin/env bash` 
- For portability for different OS distributions 
- Will search the user's PATH for the bash executable  

- https://en.wikipedia.org/wiki/Shebang_(Unix) 

eg. `./bin/install_terraform_cli`

If we are using a script in .gitpod.yml  we need to point the script to a program to interpert it.

eg. `source ./bin/install_terraform_cli`

### Linux Permissions Considerations

In order to make our bash scripts executable we need to change linux permission for the fix to be exetuable at the user mode.

```sh
chmod u+x ./bin/install_terraform_cli
```

Alternatively:

```sh
chmod 744 ./bin/install_terraform_cli
```

https://en.wikipedia.org/wiki/Chmod

### Gitpod Lifecycle (Before, Init, Command)

We need to be careful when using the Init because it will not rerun if we restart an existing workspace.

https://www.gitpod.io/docs/configure/workspaces/tasks
