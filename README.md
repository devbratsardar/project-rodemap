# Server Performance Stats

A Bash script to analyse basic server performance statistics.  
This project is based on the [roadmap.sh “Server Performance Stats” challenge](https://roadmap.sh/projects/server-stats) which asks for a script that runs on any Linux server and reports key system metrics.  

## 🎯 Project Goal  
Write a script (`server-stats.sh`) that:

- Reports **Total CPU usage**  
- Reports **Total memory usage** (Free vs Used including percentage)  
- Reports **Total disk usage** (Free vs Used including percentage)  
- Lists **Top 5 processes by CPU usage**  
- Lists **Top 5 processes by Memory usage**  

**Stretch goals** (optional): OS version, uptime, load average, logged-in users, failed login attempts, etc.  

## ✅ Why this is useful  
Running this script gives a quick snapshot of your server’s health — helping you debug performance issues, monitor resource consumption, or simply understand your system better.

## 🧰 Requirements  
- Linux (or other Unix-like) OS  
- Bash shell  
- Standard tools: `top`, `free`, `df`, `ps`, `awk`  

## 🚀 Installation & Usage  
1. Clone or download this repo:  
   ```bash
   git clone https://github.com/devbratsardar/project-rodemap.git
   sudo chmod +x server-stats.sh
   ./server-stats.sh
   ```
   
   
