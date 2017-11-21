# GeoIp - Gif Maker

This project is a mashup of these 2 projects: 

	- https://github.com/pierrrrrrre/PyGeoIpMap
	
	- https://github.com/tristantoupin/Ecse414-Project

Special thanks to all contributors of the project PyGeoIpMap!

Create a gif of how a packet is trasmitted from source (your laptop) to any destination. Using my other project ECSE414-Project (see for more info) you can easily study how packets circulate in a network.


![screenshot.jpg](https://github.com/tristantoupin/GeoIp-GifMaker/blob/master/output.gif)

## Requirements

* [numpy](http://www.numpy.org/)
* [matplotlib](http://matplotlib.org/)
* [Basemap](http://matplotlib.org/basemap/)
* [pygeoip](https://pypi.python.org/pypi/pygeoip)
* [imageMagik](https://www.imagemagick.org/script/download.php)

Create a gif with the following command:

```bash
sh makegif.sh
```

The list of IP address must be saved to a text file named ip.txt with each IP
address separated by a newline as shown below:

```
218.60.148.32
59.63.175.24
109.207.56.22
59.63.175.25
59.39.71.222
222.186.62.17
72.80.16.100
60.199.196.144
…
```


or run a trace route (to Google's servers) with the following command:

mac
```bash
traceroute 8.8.8.8 >> ip.txt

or

traceroute google.com >> ip.txt
```

windows
```bash
tracert 8.8.8.8 >> ip.txt

or 

tracert google.com >> ip.txt
```
