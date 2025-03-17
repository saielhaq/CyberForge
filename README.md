# Cyberforge

A robust Bash script for automatically installing a comprehensive suite of cybersecurity tools on Debian-based Linux distributions (Ubuntu, Debian, etc.).

## Overview

This script automates the installation of essential cybersecurity tools and utilities across various security domains including:

- Information Gathering
- Vulnerability Analysis
- Web Application Security
- Exploitation
- Wireless Attacks
- Forensics & Reverse Engineering
- Password Attacks
- Sniffing & Spoofing
- Social Engineering
- Stress Testing & Denial of Service

The script is designed with error handling to continue installation even if individual packages fail, making it ideal for setting up new security environments quickly and reliably.

## Features

- **Comprehensive Tool Collection**: Installs 40+ popular cybersecurity tools
- **Error Handling**: Continues installation even if individual packages fail
- **Detailed Logging**: Creates two log files:
  - `installation_log.txt`: Complete installation logs
  - `installation_errors.txt`: Error-only logs for troubleshooting
- **Visual Progress Indicators**: Shows real-time installation status
- **Categorized Installation**: Tools are organized by security domain

## Prerequisites

- Debian-based Linux distribution (Ubuntu, Kali Linux, etc.)
- Root/sudo privileges
- Internet connection

## Installation

1. Clone this repository:

   ```bash
   git clone https://github.com/saielhaq/cyberforge.git
   cd cyberforge
   ```

2. Make the script executable:

   ```bash
   chmod +x install.sh
   ```

3. Run the script:
   ```bash
   ./install.sh
   ```

## Included Tools

### Essential Utilities

- git, curl, wget, net-tools, unzip, build-essential

### Core Security Tools

- nmap, wireshark, netcat, tcpdump
- metasploit-framework, sqlmap, john, hydra
- nikto, gobuster, binwalk, ghidra

### Python Security Libraries

- requests, bs4 (BeautifulSoup4), pwntools

### Information Gathering

- whois, dnsenum, dnsrecon, theharvester, recon-ng

### Vulnerability Analysis

- wpscan, lynis

### Web Application Security

- burpsuite, zap (OWASP ZAP)

### Exploitation Tools

- metasploit-framework, beef-xss, exploitdb

### Wireless Attacks

- aircrack-ng, reaver, fern-wifi-cracker

### Forensics & Reverse Engineering

- autopsy, foremost, radare2, binwalk, ghidra

### Password Attacks

- john, hydra, hashcat

### Sniffing & Spoofing

- ettercap-common, ettercap-graphical, bettercap, wireshark

### Social Engineering

- set (Social Engineering Toolkit)

### Stress Testing & DOS

- slowloris, hping3

### Miscellaneous

- chrootkit, docker.io

## Log Files

After installation, you can review the logs:

- `installation_log.txt`: Contains all installation information
- `installation_errors.txt`: Contains only error messages for quick troubleshooting

## Customization

You can easily modify the script to add or remove tools based on your specific needs. Simply edit the appropriate sections in the script.

## Troubleshooting

If you encounter installation issues:

1. Check the `installation_errors.txt` file for specific error messages
2. Ensure your system repositories are properly configured
3. Verify you have sufficient disk space
4. Make sure you have stable internet connection

## Disclaimer

This tool is provided for educational and legitimate security testing purposes only. Always ensure you have proper authorization before using these tools on any system or network.

## Contributing

Contributions are welcome! Please feel free to submit a Pull Request.
