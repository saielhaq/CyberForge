#!/bin/bash

# Define log files
LOG_FILE="installation_log.txt"
ERROR_LOG="installation_errors.txt"

# Initialize log files
> $LOG_FILE
> $ERROR_LOG

# Function to log messages
log() {
    echo "[$(date '+%Y-%m-%d %H:%M:%S')] $1" | tee -a $LOG_FILE
}

# Function to install packages with error handling
install_package() {
    package=$1
    log "Installing $package..."
    
    if sudo apt install -y $package >> $LOG_FILE 2>&1; then
        log "✓ Successfully installed $package"
    else
        error_message="✗ Failed to install $package"
        log "$error_message"
        echo "[$(date '+%Y-%m-%d %H:%M:%S')] $error_message" >> $ERROR_LOG
    fi
}

# Update and upgrade system
log "[+] Updating and upgrading system..."
sudo apt update >> $LOG_FILE 2>&1 || echo "[$(date '+%Y-%m-%d %H:%M:%S')] Failed to update system" >> $ERROR_LOG
sudo apt upgrade -y >> $LOG_FILE 2>&1 || echo "[$(date '+%Y-%m-%d %H:%M:%S')] Failed to upgrade system" >> $ERROR_LOG

# Install essential tools
log "[+] Installing essential packages..."
for package in git curl wget net-tools unzip build-essential; do
    install_package $package
done

# Install cybersecurity tools
log "[+] Installing cybersecurity tools..."
for package in nmap wireshark netcat tcpdump metasploit-framework sqlmap john hydra nikto gobuster binwalk ghidra exploitdb; do
    install_package $package
done

# Install Python libraries
log "[+] Installing Python libraries..."
pip3 install requests bs4 pwntools >> $LOG_FILE 2>&1 || {
    error_message="Failed to install Python libraries"
    log "$error_message"
    echo "[$(date '+%Y-%m-%d %H:%M:%S')] $error_message" >> $ERROR_LOG
}

# Install Kali Linux tools manually
log "[+] Installing additional Kali Linux tools..."

# Information Gathering tools
log "[+] Installing Information Gathering tools..."
for package in whois dnsenum dnsrecon theharvester recon-ng; do
    install_package $package
done

# Vulnerability Analysis tools
log "[+] Installing Vulnerability Analysis tools..."
for package in wpscan lynis; do
    install_package $package
done

# Web Application Security tools
log "[+] Installing Web Application Security tools..."
for package in burpsuite zap; do
    install_package $package
done

# Exploitation Tools
log "[+] Installing Exploitation Tools..."
for package in metasploit-framework beef-xss exploitdb; do
    install_package $package
done

# Wireless Attacks tools
log "[+] Installing Wireless Attacks tools..."
for package in aircrack-ng reaver fern-wifi-cracker; do
    install_package $package
done

# Forensics & Reverse Engineering tools
log "[+] Installing Forensics & Reverse Engineering tools..."
for package in autopsy foremost radare2 binwalk ghidra; do
    install_package $package
done

# Password Attack tools
log "[+] Installing Password Attack tools..."
for package in john hydra hashcat; do
    install_package $package
done

# Sniffing & Spoofing tools
log "[+] Installing Sniffing & Spoofing tools..."
for package in ettercap-common ettercap-graphical bettercap wireshark; do
    install_package $package
done

# Social Engineering tools
log "[+] Installing Social Engineering tools..."
install_package set

# Stress Testing & DOS tools
log "[+] Installing Stress Testing & DOS tools..."
for package in slowloris hping3; do
    install_package $package
done

# Miscellaneous Tools
log "[+] Installing Miscellaneous Tools..."
for package in chrootkit docker.io; do
    install_package $package
done

log "[+] Installation process completed!"
log "[+] Full installation log saved to: $LOG_FILE"
log "[+] Error log saved to: $ERROR_LOG"