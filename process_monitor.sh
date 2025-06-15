#!/bin/bash

# Title
echo "====================================="
echo "   🖥️  Top 5 Processes Monitor (CPU)   "
echo "====================================="
echo ""

# Timestamp
echo "Scan Time: $(date)"
echo ""

# Table Header
echo -e "PID\tUSER\t%CPU\tCOMMAND"

# Show top 5 CPU consuming processes
top_processes=$(ps -eo pid,user,%cpu,comm --sort=-%cpu | head -n 6)
echo "$top_processes"

# Ask user if they want to kill a process
echo ""
read -p "❓ Do you want to kill any of these processes? (y/n): " choice

if [[ "$choice" == "y" || "$choice" == "Y" ]]; then
  read -p "🔪 Enter the PID to kill: " pid_to_kill

  if kill -9 "$pid_to_kill" 2>/dev/null; then
    echo "✅ Process $pid_to_kill terminated."
    kill_result="SUCCESS"
  else
    echo "❌ Failed to kill process $pid_to_kill. It may not exist or you lack permission."
    kill_result="FAILED"
  fi
else
  echo "🛑 No process was killed."
  kill_result="SKIPPED"
fi

# Save to log file
echo ""
echo "Saving output to process_log.txt..."
{
  echo "====================================="
  echo "   🖥️  Top 5 Processes Monitor (CPU)   "
  echo "====================================="
  echo ""
  echo "Scan Time: $(date)"
  echo ""
  echo -e "PID\tUSER\t%CPU\tCOMMAND"
  echo "$top_processes"
  echo ""
  echo "Kill Action: $kill_result"
  if [[ "$kill_result" == "SUCCESS" ]]; then
    echo "Terminated PID: $pid_to_kill"
  fi
  echo "-------------------------------------"
} >> process_log.txt

echo ""
echo "✅ Done. Output saved to log."
