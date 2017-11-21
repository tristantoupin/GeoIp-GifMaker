import os
import sys

ips = ""

print ("Preparing IPs' file...")
with open("ip.txt", 'r') as file:
    for l in file:
    	#print (l.strip())
    	l = l[l.find("(")+1:l.find(")")]
    	if (("." in l) and not ("*" in l) and not any((char.islower()) for char in l)):
    		ips += l + "\n"
    	file.close

with open("ip.txt", 'w') as file:
    file.write(ips)
    file.close

