Project 3 : DC Motor Position and Velocity Control by Encoder Feedback
======================================================================


This project uses Labview and the MyDAQ general purpose signal interface to implement feedback control of both position and velocity of a permanent magnet DC motor using digital feedback from an optical encoder. The user interface is split to support two cases: either velocity control or position control.

Position Control:
- A desired position (in degrees) and direction (left or right) will be prompted at the control panel. A display should update (every 500 msec) to show the current position (degrees) AND encoder (counts, converted to degrees) versus time, in the same chart.
- The motor should be able to correct position errors both in positive and negative direction.

Velocity Control:
- A desired velocity (in rev/sec) and direction (left or right) will be prompted at the control panel. A display should update (every 500 msec) to show the current velocity (rev/sec) AND encoder (counts/sec, converted to rev/sec) versus time, in the same chart.
- The motor should be able to correct velocity errors both in positive and negative direction.

NOTES:  
- A PWM (pulse width modulated) motor driver used to run the motor.
- The motor driver used (DRV8871 for PWM Control) has two pins (IN1 & IN2) used as both logic and PWM inputs.
- Both encoder signals (A and B) are interfaced to the myDAQ using encoder interface code as developed for Project 1.
- To eliminate steady-state error, a digital PID controller is implemented.
