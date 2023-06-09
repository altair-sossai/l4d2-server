FROM ubuntu:18.04

# Update package lists
RUN apt-get update

# Upgrade installed packages
RUN apt-get upgrade -y

# Install screen for session management
RUN apt-get install screen -y

# Install UFW for firewall configuration
RUN apt-get install ufw -y

# Install required dependencies for SteamCMD
RUN apt-get install lib32gcc1 libc6-i386 -y

# Install wget for downloading files
RUN apt-get install wget -y

WORKDIR /home

# Create steam directory
RUN mkdir steam

WORKDIR /home/steam

# Download SteamCMD
RUN wget http://media.steampowered.com/installer/steamcmd_linux.tar.gz

# Extract SteamCMD
RUN tar -xvzf steamcmd_linux.tar.gz

# Run SteamCMD to install Left 4 Dead 2
RUN ./steamcmd.sh +force_install_dir ./l4d2/ +login anonymous +app_update 222860 validate +exit

WORKDIR /home/steam/l4d2

# Expose necessary ports for Left 4 Dead 2 server
EXPOSE 27015/udp 27015/tcp