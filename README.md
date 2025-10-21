# Bash Scripting Exercises

A collection of Bash scripts developed during my Software Engineering training at Endava Uruguay. These scripts automate common system administration tasks and demonstrate practical shell scripting techniques.

## Overview

This repository contains practical Bash scripts created as part of a professional training program. The scripts cover topics such as:

- Directory navigation and inspection
- File operations (creation, copying, moving, deletion)
- Viewing and searching text content
- Process monitoring and control
- SSH service management and command history usage
- File permissions and ownership management

Each script is documented with comments to explain its purpose and usage.

## Usage

Clone the repository and run the scripts on a Linux system with Bash.  
Some scripts may require `sudo` privileges for administrative tasks.

```bash
git clone git@github.com:codenamecoffee/Linux_Scripting_Exercises.git
cd your-repo
bash scriptname.sh
```

## Scripts Included

- NavigateAndInspect.sh: Creates and enters a directory, then displays its location, lists its contents, and checks disk usage.

- FileOperations.sh: Demonstrates basic file operations by creating, copying, moving, and deleting files and directories, with visual feedback using the tree command.

- ViewingAndSearchingText.sh: Shows how to view, search, and filter text content in files using commands like cat, less, grep, and more.

- ProcessesAndControl.sh: Displays and monitors active system processes using commands such as ps, top, and htop. Includes examples of real-time monitoring and connectivity testing with the ping command.

- RemoteAndHistory.sh: Manage SSH service, generate keys, and review command history explaning how to use recursive search with Ctrl + R.

- PermissionsAndOwnership.sh: Demonstrates how to change file permissions and ownership, including setting files to read-only and assigning them to different users and groups.

## Author

Federico González Lage.