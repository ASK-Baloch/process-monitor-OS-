# 🖥️ Process Monitor CLI Tool (Ubuntu)

This project is a simple Bash script that shows the **top 5 running processes** on your system based on **CPU usage**. It uses Linux commands like `ps`, `sort`, and `head`.

## 🛠 Technologies Used
- Bash
- `ps`
- `sort`, `head`, `awk`
- No external packages required

## 📦 Files

| File | Purpose |
|------|---------|
| `process_monitor.sh` | Main script |
| `process_log.txt` | Output log (generated when script runs) |
| `sample_output.txt` | Sample result (used for WSL demo) |
| `README.md` | This guide and viva help |

## ▶️ How to Run

```bash
chmod +x process_monitor.sh
./process_monitor.sh
```

## 📂 Output Example

```
PID     USER    %CPU    COMMAND
2123    ahmed   42.0    chrome
1789    ahmed   30.3    code
...
```

<<<<<<< HEAD
![IMAGE1](codeimg.jpeg)
![IMAGE2](outputimg.jpeg)
![IMAGE3](readmeimg.jpeg)

=======


