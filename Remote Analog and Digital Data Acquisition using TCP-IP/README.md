Project 4 : Remote Analog and Digital Data Acquisition using TCP/IP
===================================================================


The project consists on operating the data acquisition VI developed for Project 1 from a remote computer. The VI will receive inputs from a “client”, while the server is connected to your myDAQ device.  The myDAQ (“server”) is connected to the hardware/circuit and reads and filters data from two analog sensors (accelerometer or gyroscope) and one digital sensor (optical encoder). The VI will have the following characteristics:

The CLIENT control panel will prompt you for the following inputs:
-	Number of points to acquire
-	Scan rate
-	Which channels to read (for the analog sensors)
-	Name of the file to store the data points (in the CLIENT)
-	Filter characteristics: filter type, filter order, cut-off frequency. The encoder will need different filter parameters than the analog sensors.

The Client VI will have three graph windows, one for each channel to be acquired (two analog, one digital). Each window will show both the raw and filtered data, for each channel. The horizontal axis should be secs and the vertical axis should be sensor reading, including UNITS.
-	The hardware is connected to the server and is running – data is ready to be captured.
-	The CLIENT specifies control panel parameters. When the Client hits “START”, data acquisition takes place in the server, and the data is transferred to the client only after data capture is completed. After transfer, plots in Client are refreshed and data is saved to file in the Client.
-	Both analog data and counter data must be saved to the same data file ON THE CLIENT. The data file has to be formatted in four columns: time, analog_ch1, analog_ch2, counter. 
