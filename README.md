# Combination Lock (Keypad Based)
The aim of this project was to create a physical prototype of a keypad-based combinational lock. It was written in system verilog and implemented on an Altera Cyclone V board. The hardware employs a smart scanning method to figure out which key was precessed, after 
de-bouncing the input, and then performs the comparison. Based on the result, it will either open the lock or display an error. After enough failed attempts the lock will seal itself and the hardware will need to be reset as it will assume a security risk.
