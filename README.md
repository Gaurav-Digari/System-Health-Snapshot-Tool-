# System Health Checker

## What is this project?

System Health Checker is a simple Bash script that displays basic information about the current Linux system.

It shows:

- System running time
- Memory usage
- Disk usage
- Running processes

The collected information can also be saved into a text file.

## What problem does it solve?

When checking a Linux system, we normally need to run different commands to check memory, disk space, system uptime, and running processes.

This script brings some of this information together in one place so that we can quickly check the basic health of the system.

## How I created it

I created this project using Bash scripting and common Linux commands.

The script uses:

- `uptime` to check system running time
- `free` to check memory usage
- `df` to check disk usage
- `ps` to view running processes
- `getopts` to handle command-line options

The script saves the collected information into an output text file.

## How to run

First, give the script execute permission:

```bash
chmod +x health.sh