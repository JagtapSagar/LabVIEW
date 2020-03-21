Project 1 : Analog Data Acquisition and Digital Filtering
=========================================================


The project consists on building a data acquisition VI that reads and filters data from two analog sensors (accelerometer or gyroscope) and one digital sensor (optical encoder). The VI will have the following characteristics:The control panel will prompt you for the following input:

- Number of points to acquire
- Scan rate
- Which channels to read (for the analog sensors)
- Parameters needed for reading the encoder
- Name of the file to store the data points
- Calibration constant (conversion factor from volts (analog) to measurement)
- Filter characteristics:<br/> &nbsp; &nbsp; &nbsp; 
    Choose filter type from a pull-down menu<br/> &nbsp; &nbsp; &nbsp; 
    Choose order of the filter<br/> &nbsp; &nbsp; &nbsp; 
    Choose filter cut-off frequency<br/>  &nbsp; &nbsp; &nbsp; 
    Other filter parameters if necessary

The  VI  will  have  three  graph  windows,  one  for  each  channel  to  be  acquired  (two  analog,  one digital). Each window will show both the raw and filtered data, for one channel. The horizontal axis should be seconds and the vertical axis should be reading, including UNITS.

NOTE:  the  analog  sensors  provide  readings  in  Volts.  You  need  to  find  the  scaling  factors  that convert  volts  to  m/sec^2  or  rad/sec.  Consult  the  sensor  documentation.  How  can  you  verify your  scaling  factor  is  correct?    The  encoder  needs  different  filter  parameters  than  the  analog sensors.
