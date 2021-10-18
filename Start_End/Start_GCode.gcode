;
; SV01 Custom Start G-code
; BLTOUCH, 300x255 Build Size, AUTO_BED_LEVELING_UBL, Junction Deviation
;
M201 X800.00 Y800.00 Z100.00 E1000.00 ;Setup machine max acceleration
M203 X300.00 Y300.00 Z10.00 E50.00 ;Setup machine max feedrate
M204 P500.00 R1000.00 T800.00 ;Setup Print/Retract/Travel acceleration
M900 K0.20 ; PA K-Factor
M220 S100 ;Reset Feedrate
M221 S100 ;Reset Flowrate
M140 S{material_bed_temperature_layer_0} ; Set Heat Bed temperature
M190 S{material_bed_temperature_layer_0} ; Wait for Heat Bed temperature
M104 S160; start warming extruder to 160
G28 ; Home all axes
G29 L1 ; Load Mesh L1
G29 J ; 3-point probe, tilt mesh
G92 E0 ; Reset Extruder
G1 X2.1 Y20 Z10 F8000.0 ; move above start-line position
M104 S{material_print_temperature_layer_0} ; Set Extruder temperature
M109 S{material_print_temperature_layer_0} ; Wait for Extruder temperature
G1 X2.1 Y20 Z0.3 F5000.0 ; move to start-line position
M117 LET THE PURGE BEGIN!
G1 X2.1 Y220.0 Z0.3 F1500.0 E15 ; draw 1st line
G1 X2.7 Y220.0 Z0.3 F5000.0 ; move to side a little
G1 X2.7 Y20 Z0.3 F1500.0 E30 ; draw 2nd line
G92 E0 ; reset extruder
G1 Z6.0 F3000 ; move z up to clear bed clips
M117 Starting Print!
;
; End of custom start GCode
;
