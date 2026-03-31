cat << 'EOF' > README.md
# Open Source Software Audit Project

## Student Information
* **Name:** Soumya Ghosh
* **Reg Number:** 24MIM10093
* **Environment:** Ubuntu 25.10 (ARM64) via OrbStack

## Chosen Software
* **Software Name:** MySQL Server
* **Description:** An open-source Relational Database Management System (RDBMS) licensed under the GPL.

## Project Description
This audit demonstrates the power of the Unix philosophy by using modular shell scripts to perform complex system tasks. The project covers system identification, package inspection, permission auditing, log analysis, and the generation of a FOSS manifesto.

---

## Script Descriptions

| Script | Title | Description and Logic |
| :--- | :--- | :--- |
| `script1.sh` | System Identity Report | Extracts live data (Kernel, Distro, Uptime) using command substitution to summarize the audit environment. |
| `script2.sh` | FOSS Package Inspector | Uses if-else blocks and dpkg to verify if MySQL is installed and provides philosophical context via case statements. |
| `script3.sh` | Disk and Permission Auditor | Loops through critical directories (like /var/lib/mysql) to report on ownership, permissions, and disk usage using AWK. |
| `script4.sh` | Log File Analyzer | Processes system logs line-by-line using a while-read loop to search for specific keywords like "mysql" or "error". |
| `script5.sh` | Manifesto Generator | An interactive script that collects user input to generate a formatted "Personal FOSS Manifesto" text file. |

---

## Dependencies
To run these scripts on an Ubuntu 25.10 (ARM64) environment, ensure the following are available:
* **Interpreter:** Bash Shell
* **Package Manager:** dpkg (for script 2)
* **Text Processing:** grep, cut, awk, printf
* **Privileges:** sudo access (required for directory sizing in script 3 and log access in script 4)

To install basic requirements:
```bash
sudo apt update && sudo apt install mysql-server coreutils -y
