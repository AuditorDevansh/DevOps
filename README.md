# 🖥️ Server Stats Analyzer 

**Project Type:** Bash Script  
**Domain:** DevOps, System Monitoring  
**Author:** Devansh Mishra  
**Status:** ✅ Completed  
**License:** GPL-3.0

🔗 **Project URL**: https://github.com/AuditorDevansh/server-stats-analyzer


---

## 🎯 Objective

This project is part of my DevOps journey to build practical and efficient tooling for server monitoring.  
`server-stats.sh` is a lightweight Bash script designed to monitor essential server performance statistics in real-time.  
It can be executed on any Linux server and helps administrators stay on top of system health.

---

## 📊 Features

The script reports the following key system metrics:

- ✅ **CPU Usage** — Breakdown of user, system, and idle CPU percentages.
- ✅ **Memory Usage** — Free vs used memory in MB with percentage usage.
- ✅ **Disk Usage** — Free vs used disk space on root (`/`) with percentage usage.
- ✅ **Top 5 CPU-consuming Processes** — Based on real-time `ps` metrics.
- ✅ **Top 5 Memory-consuming Processes** — For identifying heavy memory processes.
- ✅ **Uptime** — Duration the system has been running.
- ✅ **Operating System Info** — Kernel version and architecture.
- ✅ **Logged-in Users** — Active SSH or local sessions.
- ✅ **Failed SSH Login Attempts** — Only for Debian/Ubuntu systems (via `/var/log/auth.log`).

---

## 🚀 Setup & Usage

### 1. Clone or Download the Script

```bash
git clone https://github.com/AuditorDevansh/server-stats-analyzer.git
cd server-stats-analyzer
```
## 2. Make the Script Executable
```
      chmod +x server-stats.sh
```
## 3. Run the Script
```
      ./server-stats.sh
```
    ⚠️ For accurate failed login stats, you may need to run with sudo.

## 🛠 Tech Stack

    Linux (Ubuntu/Debian)

    Bash

    top, ps, df, free, who, uptime, grep

## 📂 Sample Output
```
        ================= SERVER PERFORMANCE REPORT =================
        
        >> Operating System:
        Linux myserver 5.15.0-86-generic #96-Ubuntu SMP x86_64 GNU/Linux
        
        >> Uptime:
        up 5 hours, 21 minutes
        
        >> CPU Usage Summary:
        User: 6.4%, System: 1.3%, Idle: 91.6%
        
        >> Memory Usage (MB):
        Used: 2038MB / 4096MB (49.77% Used)
        
        >> Disk Usage on /:
        Used: 12G / 40G (30% Used)
        
        >> Top 5 Processes by CPU Usage:
        PID   PPID  CMD                     %CPU
        1342  1     /usr/lib/firefox        6.3
        2219  1342  /usr/lib/firefox        4.1
        ...
        
        >> Failed SSH Login Attempts:
        7
        
        ================= END OF REPORT =================
```
📈 Roadmap (Future Enhancements)

    🔔 Add email/Slack alerts for threshold breaches

    🐳 Containerize the script using Docker

    📊 Integrate with Prometheus/Grafana for dashboard visualization

    ⏱️ Automate via cron jobs for periodic monitoring 

## 📜 License

   This project is licensed under the GPL-3.0 License.


## 🙋‍♂️ About Me
  
  I'm * Devansh Mishra *, an aspiring DevOps Engineer and Cloud Practitioner.
  This is my first step toward building production-grade automation and observability tools.
  
      📧 Email: auditor.devansh.in@gmail.com
  
      🧠 Skills: Bash · Linux · Monitoring · Cloud · Security
  
      🔗 Portfolio: Coming Soon
  [![GitHub](https://img.shields.io/badge/GitHub-Repository-black?style=flat&logo=github)](https://github.com/AuditorDevansh/server-stats-analyzer)

      
  
   ## 🤝 Contributions

Open to collaboration! If you find bugs or want to add features, feel free to open an issue or submit a pull request.

