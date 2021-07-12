;
; Begin Custom End GCode
;
M400
G91 ;Relative positioning
G1 E-3 Z0.2 F2400 ;Retract and raise Z
G90 ;Absolute positioning
G1 X0 Y{machine_depth} F6000 ; Move Heat Bed to the front for easy print removal
M106 S0 ;Turn-off fan
M104 S0 ;Turn-off hotend
M140 S0 ;Turn-off bed
M84 X Y E ;Disable all steppers but Z

M300 S440 P200 ; Play a tune
M300 S660 P250
M300 S880 P300
M117 That's All Folks!
;
; End of custom end GCode
;
