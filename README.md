This is a project to have generic bash script to:

1. List information of All network devices on your machine. This is good from a security standpoint to know devices connect to your system.
2. The script find the IP range that are possible on LAN.
3. iterate through the IP address range and ping the each one to see if its reachable and finally print out IP addresses that responded.
4. Finally nmap utility is used to scan the IP's that responded to the pingg connection.

Note: this is script was tested on a ubuntu machine. This will work on linux to get the IP address of your ethernet connections. It uses a "For Loop" to iterate and ping all the possible IP ranges once for responds.
