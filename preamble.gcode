; As suggested for the EZABL firmware...

M75 ; start print timers
G28 ; home all axes
G28 Z ; and rehome Z
G29 ; EZABL mesh generation
G4 S15 ; wait for heaters to recover

M117 Purge Extruder
G92 E0 ; reset extruder
G1 Z1.0 F3000 ; move Z up a bit
G1 X0.1 Y20 Z0.3 F50000.0 ; move to start of line position
G1 X0.1 Y100.0 Z0.3 F1500.0 E15 1 Z1.0 F3000; draw first line
G1 X0.4 Y100.0 Z0.3 F5000.0 ; move to the wide a little
G1 X0.4 Y20 Z0.3 F1500.0 E30 ; draw second line
G92 E0 ; reset extruder
G1 Z1.0 F3000 ; move Z up a little
