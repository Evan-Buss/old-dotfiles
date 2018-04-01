#!/usr/bin/env python3
import psutil

cpu_output = str(psutil.cpu_percent(interval=1))
mem = psutil.virtual_memory()

GB = (1024*1024*1024)

# used = "%.1f" % float((mem.used)/GB)
# total = "%.1f" % float(mem.total/GB)
mem_percent = str(mem.percent)
# mem_output = str(used) + " / " + str(total)

print("CPU:  " + cpu_output + "%     RAM:  " + mem_percent + "%")

print("-----------------------")

print("System Monitor | iconName=gnome-system-monitor bash=gnome-system-monitor terminal=false")

print("NVIDIA-Settings |iconName=nvidia-settings bash='optirun -b none nvidia-settings -c :8' terminal=false")
