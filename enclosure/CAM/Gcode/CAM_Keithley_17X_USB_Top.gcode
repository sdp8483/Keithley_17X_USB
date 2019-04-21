(Exported by FreeCAD)
(Post Processor: linuxcnc_post)
(Output Time:2019-04-20 21:34:59.607802)
(begin preamble)
G17 G54 G40 G49 G80 G90
G21
(begin operation: Clearout)
(machine: not set, mm/min)
(Pocket_Shape)
G0 Z17.700
G0 X34.625 Y16.550
G0 Z15.700
G1 X34.625 Y16.550 Z11.180 F160.000
G1 X28.275 Y16.550 Z11.180 F160.000
G1 X28.275 Y-16.550 Z11.180 F160.000
G1 X34.625 Y-16.550 Z11.180 F160.000
G1 X34.625 Y16.550 Z11.180 F160.000
G1 X34.625 Y16.550 Z9.660 F160.000
G1 X28.275 Y16.550 Z9.660 F160.000
G1 X28.275 Y-16.550 Z9.660 F160.000
G1 X34.625 Y-16.550 Z9.660 F160.000
G1 X34.625 Y16.550 Z9.660 F160.000
G1 X34.625 Y16.550 Z8.140 F160.000
G1 X28.275 Y16.550 Z8.140 F160.000
G1 X28.275 Y-16.550 Z8.140 F160.000
G1 X34.625 Y-16.550 Z8.140 F160.000
G1 X34.625 Y16.550 Z8.140 F160.000
G1 X34.625 Y16.550 Z6.620 F160.000
G1 X28.275 Y16.550 Z6.620 F160.000
G1 X28.275 Y-16.550 Z6.620 F160.000
G1 X34.625 Y-16.550 Z6.620 F160.000
G1 X34.625 Y16.550 Z6.620 F160.000
G1 X34.625 Y16.550 Z5.100 F160.000
G1 X28.275 Y16.550 Z5.100 F160.000
G1 X28.275 Y-16.550 Z5.100 F160.000
G1 X34.625 Y-16.550 Z5.100 F160.000
G1 X34.625 Y16.550 Z5.100 F160.000
G1 X34.625 Y16.550 Z3.580 F160.000
G1 X28.275 Y16.550 Z3.580 F160.000
G1 X28.275 Y-16.550 Z3.580 F160.000
G1 X34.625 Y-16.550 Z3.580 F160.000
G1 X34.625 Y16.550 Z3.580 F160.000
G1 X34.625 Y16.550 Z2.060 F160.000
G1 X28.275 Y16.550 Z2.060 F160.000
G1 X28.275 Y-16.550 Z2.060 F160.000
G1 X34.625 Y-16.550 Z2.060 F160.000
G1 X34.625 Y16.550 Z2.060 F160.000
G1 X34.625 Y16.550 Z1.500 F160.000
G1 X28.275 Y16.550 Z1.500 F160.000
G1 X28.275 Y-16.550 Z1.500 F160.000
G1 X34.625 Y-16.550 Z1.500 F160.000
G1 X34.625 Y16.550 Z1.500 F160.000
G0 Z17.700
(finish operation: Clearout)
(begin operation: T1: 1/4 inch 3 flute endmil)
(machine: not set, mm/min)
(T1: 1/4 inch 3 flute endmil)
M6 T1
M3 S1050
(finish operation: T1: 1/4 inch 3 flute endmil)
(begin operation: Contour)
(machine: not set, mm/min)
(Contour)
(Compensated Tool Path. Diameter: 6.35)
G0 Z18.700
G0 X33.695 Y24.470
G0 Z16.700
G1 X33.695 Y24.470 Z12.180 F160.000
G2 X34.625 Y22.225 Z12.180 I-2.245 J-2.245 F160.000
G1 X34.625 Y-22.225 Z12.180 F160.000
G2 X31.450 Y-25.400 Z12.180 I-3.175 J0.000 F160.000
G1 X-39.050 Y-25.400 Z12.180 F160.000
G2 X-42.225 Y-22.225 Z12.180 I0.000 J3.175 F160.000
G1 X-42.225 Y22.225 Z12.180 F160.000
G2 X-39.050 Y25.400 Z12.180 I3.175 J-0.000 F160.000
G1 X31.450 Y25.400 Z12.180 F160.000
G2 X33.695 Y24.470 Z12.180 I-0.000 J-3.175 F160.000
G1 X33.695 Y24.470 Z10.660 F160.000
G2 X34.625 Y22.225 Z10.660 I-2.245 J-2.245 F160.000
G1 X34.625 Y-22.225 Z10.660 F160.000
G2 X31.450 Y-25.400 Z10.660 I-3.175 J0.000 F160.000
G1 X-39.050 Y-25.400 Z10.660 F160.000
G2 X-42.225 Y-22.225 Z10.660 I0.000 J3.175 F160.000
G1 X-42.225 Y22.225 Z10.660 F160.000
G2 X-39.050 Y25.400 Z10.660 I3.175 J-0.000 F160.000
G1 X31.450 Y25.400 Z10.660 F160.000
G2 X33.695 Y24.470 Z10.660 I-0.000 J-3.175 F160.000
G1 X33.695 Y24.470 Z9.140 F160.000
G2 X34.625 Y22.225 Z9.140 I-2.245 J-2.245 F160.000
G1 X34.625 Y-22.225 Z9.140 F160.000
G2 X31.450 Y-25.400 Z9.140 I-3.175 J0.000 F160.000
G1 X-39.050 Y-25.400 Z9.140 F160.000
G2 X-42.225 Y-22.225 Z9.140 I0.000 J3.175 F160.000
G1 X-42.225 Y22.225 Z9.140 F160.000
G2 X-39.050 Y25.400 Z9.140 I3.175 J-0.000 F160.000
G1 X31.450 Y25.400 Z9.140 F160.000
G2 X33.695 Y24.470 Z9.140 I-0.000 J-3.175 F160.000
G1 X33.695 Y24.470 Z7.620 F160.000
G2 X34.625 Y22.225 Z7.620 I-2.245 J-2.245 F160.000
G1 X34.625 Y-22.225 Z7.620 F160.000
G2 X31.450 Y-25.400 Z7.620 I-3.175 J0.000 F160.000
G1 X-39.050 Y-25.400 Z7.620 F160.000
G2 X-42.225 Y-22.225 Z7.620 I0.000 J3.175 F160.000
G1 X-42.225 Y22.225 Z7.620 F160.000
G2 X-39.050 Y25.400 Z7.620 I3.175 J-0.000 F160.000
G1 X31.450 Y25.400 Z7.620 F160.000
G2 X33.695 Y24.470 Z7.620 I-0.000 J-3.175 F160.000
G1 X33.695 Y24.470 Z6.100 F160.000
G2 X34.625 Y22.225 Z6.100 I-2.245 J-2.245 F160.000
G1 X34.625 Y-22.225 Z6.100 F160.000
G2 X31.450 Y-25.400 Z6.100 I-3.175 J0.000 F160.000
G1 X-39.050 Y-25.400 Z6.100 F160.000
G2 X-42.225 Y-22.225 Z6.100 I0.000 J3.175 F160.000
G1 X-42.225 Y22.225 Z6.100 F160.000
G2 X-39.050 Y25.400 Z6.100 I3.175 J-0.000 F160.000
G1 X31.450 Y25.400 Z6.100 F160.000
G2 X33.695 Y24.470 Z6.100 I-0.000 J-3.175 F160.000
G1 X33.695 Y24.470 Z4.580 F160.000
G2 X34.625 Y22.225 Z4.580 I-2.245 J-2.245 F160.000
G1 X34.625 Y-22.225 Z4.580 F160.000
G2 X31.450 Y-25.400 Z4.580 I-3.175 J0.000 F160.000
G1 X-39.050 Y-25.400 Z4.580 F160.000
G2 X-42.225 Y-22.225 Z4.580 I0.000 J3.175 F160.000
G1 X-42.225 Y22.225 Z4.580 F160.000
G2 X-39.050 Y25.400 Z4.580 I3.175 J-0.000 F160.000
G1 X31.450 Y25.400 Z4.580 F160.000
G2 X33.695 Y24.470 Z4.580 I-0.000 J-3.175 F160.000
G1 X33.695 Y24.470 Z3.060 F160.000
G2 X34.625 Y22.225 Z3.060 I-2.245 J-2.245 F160.000
G1 X34.625 Y-22.225 Z3.060 F160.000
G2 X31.450 Y-25.400 Z3.060 I-3.175 J0.000 F160.000
G1 X-39.050 Y-25.400 Z3.060 F160.000
G2 X-42.225 Y-22.225 Z3.060 I0.000 J3.175 F160.000
G1 X-42.225 Y22.225 Z3.060 F160.000
G2 X-39.050 Y25.400 Z3.060 I3.175 J-0.000 F160.000
G1 X31.450 Y25.400 Z3.060 F160.000
G2 X33.695 Y24.470 Z3.060 I-0.000 J-3.175 F160.000
G1 X33.695 Y24.470 Z1.540 F160.000
G2 X34.625 Y22.225 Z1.540 I-2.245 J-2.245 F160.000
G1 X34.625 Y-22.225 Z1.540 F160.000
G2 X31.450 Y-25.400 Z1.540 I-3.175 J0.000 F160.000
G1 X-39.050 Y-25.400 Z1.540 F160.000
G2 X-42.225 Y-22.225 Z1.540 I0.000 J3.175 F160.000
G1 X-42.225 Y22.225 Z1.540 F160.000
G2 X-39.050 Y25.400 Z1.540 I3.175 J-0.000 F160.000
G1 X31.450 Y25.400 Z1.540 F160.000
G2 X33.695 Y24.470 Z1.540 I-0.000 J-3.175 F160.000
G1 X33.695 Y24.470 Z0.020 F160.000
G2 X34.625 Y22.225 Z0.020 I-2.245 J-2.245 F160.000
G1 X34.625 Y-22.225 Z0.020 F160.000
G2 X31.450 Y-25.400 Z0.020 I-3.175 J0.000 F160.000
G1 X-39.050 Y-25.400 Z0.020 F160.000
G2 X-42.225 Y-22.225 Z0.020 I0.000 J3.175 F160.000
G1 X-42.225 Y22.225 Z0.020 F160.000
G2 X-39.050 Y25.400 Z0.020 I3.175 J-0.000 F160.000
G1 X31.450 Y25.400 Z0.020 F160.000
G2 X33.695 Y24.470 Z0.020 I-0.000 J-3.175 F160.000
G1 X33.695 Y24.470 Z-1.000 F160.000
G2 X34.625 Y22.225 Z-1.000 I-2.245 J-2.245 F160.000
G1 X34.625 Y-22.225 Z-1.000 F160.000
G2 X31.450 Y-25.400 Z-1.000 I-3.175 J0.000 F160.000
G1 X-39.050 Y-25.400 Z-1.000 F160.000
G2 X-42.225 Y-22.225 Z-1.000 I0.000 J3.175 F160.000
G1 X-42.225 Y22.225 Z-1.000 F160.000
G2 X-39.050 Y25.400 Z-1.000 I3.175 J-0.000 F160.000
G1 X31.450 Y25.400 Z-1.000 F160.000
G2 X33.695 Y24.470 Z-1.000 I-0.000 J-3.175 F160.000
G0 Z18.700
(finish operation: Contour)
(begin operation: T1: 1/4 inch 3 flute endmil)
(machine: not set, mm/min)
(T1: 1/4 inch 3 flute endmil)
M6 T1
M3 S1050
(finish operation: T1: 1/4 inch 3 flute endmil)
(begin operation: Pocket_Shape001)
(machine: not set, mm/min)
(Pocket_Shape001)
G0 Z18.700
G0 X28.275 Y16.550
G0 Z16.700
G1 X28.275 Y16.550 Z12.180 F160.000
G1 X28.275 Y-16.550 Z12.180 F160.000
G1 X19.944 Y-16.550 Z12.180 F160.000
G3 X5.956 Y-16.550 Z12.180 I-6.994 J-2.005 F160.000
G1 X-5.956 Y-16.550 Z12.180 F160.000
G3 X-19.944 Y-16.550 Z12.180 I-6.994 J-2.005 F160.000
G1 X-33.375 Y-16.550 Z12.180 F160.000
G1 X-33.375 Y16.550 Z12.180 F160.000
G1 X-19.944 Y16.550 Z12.180 F160.000
G3 X-5.956 Y16.550 Z12.180 I6.994 J2.005 F160.000
G1 X5.956 Y16.550 Z12.180 F160.000
G3 X19.944 Y16.550 Z12.180 I6.994 J2.005 F160.000
G1 X28.275 Y16.550 Z12.180 F160.000
G0 X28.275 Y16.550 Z18.700
G0 X20.964 Y16.550 Z18.700
G1 X20.964 Y16.550 Z12.180 F160.000
G1 X19.944 Y16.550 Z12.180 F160.000
G2 X19.135 Y14.721 Z12.180 I-6.931 J1.973 F160.000
G1 X20.964 Y16.550 Z12.180 F160.000
G1 X28.275 Y16.550 Z12.180 F160.000
G1 X28.275 Y15.779 Z12.180 F160.000
G1 X-4.054 Y-16.550 Z12.180 F160.000
G1 X4.028 Y-16.550 Z12.180 F160.000
G1 X28.275 Y7.697 Z12.180 F160.000
G1 X28.275 Y-0.386 Z12.180 F160.000
G1 X16.472 Y-12.189 Z12.180 F160.000
G2 X19.944 Y-16.550 Z12.180 I-3.496 J-6.347 F160.000
G1 X20.193 Y-16.550 Z12.180 F160.000
G1 X28.275 Y-8.468 Z12.180 F160.000
G1 X28.275 Y-16.550 Z12.180 F160.000
G0 X28.275 Y-16.550 Z18.700
G0 X16.804 Y12.391 Z18.700
G1 X16.804 Y12.391 Z12.180 F160.000
G1 X-8.440 Y-12.853 Z12.180 F160.000
G3 X-15.352 Y-11.683 Z12.180 I-4.514 J-5.664 F160.000
G1 X8.864 Y12.533 Z12.180 F160.000
G0 X8.864 Y12.533 Z18.700
G0 X-27.530 Y16.550 Z18.700
G1 X-27.530 Y16.550 Z12.180 F160.000
G1 X-33.375 Y16.550 Z12.180 F160.000
G1 X-33.375 Y10.705 Z12.180 F160.000
G1 X-27.530 Y16.550 Z12.180 F160.000
G1 X-19.944 Y16.550 Z12.180 F160.000
G3 X-19.818 Y16.179 Z12.180 I4.137 J1.199 F160.000
G1 X-33.375 Y2.622 Z12.180 F160.000
G1 X-33.375 Y-5.460 Z12.180 F160.000
G1 X-15.973 Y11.942 Z12.180 F160.000
G3 X-5.956 Y16.550 Z12.180 I3.028 J6.610 F160.000
G1 X-3.283 Y16.550 Z12.180 F160.000
G1 X-33.375 Y-13.542 Z12.180 F160.000
G1 X-33.375 Y-16.550 Z12.180 F160.000
G1 X-28.301 Y-16.550 Z12.180 F160.000
G1 X4.799 Y16.550 Z12.180 F160.000
G1 X5.956 Y16.550 Z12.180 F160.000
G3 X8.864 Y12.533 Z12.180 I7.033 J2.030 F160.000
G1 X-15.352 Y-11.683 Z12.180 F160.000
G3 X-19.802 Y-16.133 Z12.180 I2.382 J-6.832 F160.000
G1 X-20.218 Y-16.550 Z12.180 F160.000
G1 X-19.944 Y-16.550 Z12.180 F160.000
G2 X-19.802 Y-16.133 Z12.180 I4.574 J-1.330 F160.000
G1 X-19.802 Y-16.133 Z10.660 F160.000
G3 X-19.944 Y-16.550 Z10.660 I4.431 J-1.746 F160.000
G1 X-20.218 Y-16.550 Z10.660 F160.000
G1 X-19.802 Y-16.133 Z10.660 F160.000
G2 X-15.352 Y-11.683 Z10.660 I6.832 J-2.382 F160.000
G1 X8.864 Y12.533 Z10.660 F160.000
G2 X5.956 Y16.550 Z10.660 I4.124 J6.048 F160.000
G1 X4.799 Y16.550 Z10.660 F160.000
G1 X-28.301 Y-16.550 Z10.660 F160.000
G1 X-33.375 Y-16.550 Z10.660 F160.000
G1 X-33.375 Y-13.542 Z10.660 F160.000
G1 X-3.283 Y16.550 Z10.660 F160.000
G1 X-5.956 Y16.550 Z10.660 F160.000
G2 X-15.973 Y11.942 Z10.660 I-6.989 J2.002 F160.000
G1 X-33.375 Y-5.460 Z10.660 F160.000
G1 X-33.375 Y2.622 Z10.660 F160.000
G1 X-19.818 Y16.179 Z10.660 F160.000
G2 X-19.944 Y16.550 Z10.660 I4.011 J1.570 F160.000
G1 X-27.530 Y16.550 Z10.660 F160.000
G1 X-33.375 Y10.705 Z10.660 F160.000
G1 X-33.375 Y16.550 Z10.660 F160.000
G1 X-27.530 Y16.550 Z10.660 F160.000
G1 X-27.530 Y16.550 Z10.660 F160.000
G1 X-19.944 Y16.550 Z10.660 F160.000
G3 X-5.956 Y16.550 Z10.660 I6.994 J2.005 F160.000
G1 X5.956 Y16.550 Z10.660 F160.000
G3 X19.944 Y16.550 Z10.660 I6.994 J2.005 F160.000
G1 X28.275 Y16.550 Z10.660 F160.000
G1 X28.275 Y-16.550 Z10.660 F160.000
G1 X19.944 Y-16.550 Z10.660 F160.000
G3 X5.956 Y-16.550 Z10.660 I-6.994 J-2.005 F160.000
G1 X-5.956 Y-16.550 Z10.660 F160.000
G3 X-19.944 Y-16.550 Z10.660 I-6.994 J-2.005 F160.000
G1 X-33.375 Y-16.550 Z10.660 F160.000
G1 X-33.375 Y16.550 Z10.660 F160.000
G1 X-27.530 Y16.550 Z10.660 F160.000
G0 X-27.530 Y16.550 Z18.700
G0 X8.864 Y12.533 Z18.700
G1 X8.864 Y12.533 Z10.660 F160.000
G1 X-15.352 Y-11.683 Z10.660 F160.000
G2 X-8.440 Y-12.853 Z10.660 I2.399 J-6.834 F160.000
G1 X16.804 Y12.391 Z10.660 F160.000
G0 X16.804 Y12.391 Z18.700
G0 X20.964 Y16.550 Z18.700
G1 X20.964 Y16.550 Z10.660 F160.000
G1 X19.944 Y16.550 Z10.660 F160.000
G2 X19.135 Y14.721 Z10.660 I-6.931 J1.973 F160.000
G1 X20.964 Y16.550 Z10.660 F160.000
G1 X28.275 Y16.550 Z10.660 F160.000
G1 X28.275 Y15.779 Z10.660 F160.000
G1 X-4.054 Y-16.550 Z10.660 F160.000
G1 X4.028 Y-16.550 Z10.660 F160.000
G1 X28.275 Y7.697 Z10.660 F160.000
G1 X28.275 Y-0.386 Z10.660 F160.000
G1 X16.472 Y-12.189 Z10.660 F160.000
G2 X19.944 Y-16.550 Z10.660 I-3.496 J-6.347 F160.000
G1 X20.193 Y-16.550 Z10.660 F160.000
G1 X28.275 Y-8.468 Z10.660 F160.000
G1 X28.275 Y-16.550 Z10.660 F160.000
G0 X28.275 Y-16.550 Z18.700
G0 X28.275 Y-16.550 Z18.700
G1 X28.275 Y-16.550 Z9.140 F160.000
G1 X19.944 Y-16.550 Z9.140 F160.000
G3 X5.956 Y-16.550 Z9.140 I-6.994 J-2.005 F160.000
G1 X-5.956 Y-16.550 Z9.140 F160.000
G3 X-19.944 Y-16.550 Z9.140 I-6.994 J-2.005 F160.000
G1 X-33.375 Y-16.550 Z9.140 F160.000
G1 X-33.375 Y16.550 Z9.140 F160.000
G1 X-19.944 Y16.550 Z9.140 F160.000
G3 X-5.956 Y16.550 Z9.140 I6.994 J2.005 F160.000
G1 X5.956 Y16.550 Z9.140 F160.000
G3 X19.944 Y16.550 Z9.140 I6.994 J2.005 F160.000
G1 X28.275 Y16.550 Z9.140 F160.000
G1 X28.275 Y-16.550 Z9.140 F160.000
G0 X28.275 Y-16.550 Z18.700
G0 X28.275 Y-16.550 Z18.700
G1 X28.275 Y-16.550 Z9.140 F160.000
G1 X28.275 Y-8.468 Z9.140 F160.000
G1 X20.193 Y-16.550 Z9.140 F160.000
G1 X19.944 Y-16.550 Z9.140 F160.000
G3 X16.472 Y-12.189 Z9.140 I-6.969 J-1.985 F160.000
G1 X28.275 Y-0.386 Z9.140 F160.000
G1 X28.275 Y7.697 Z9.140 F160.000
G1 X4.028 Y-16.550 Z9.140 F160.000
G1 X-4.054 Y-16.550 Z9.140 F160.000
G1 X28.275 Y15.779 Z9.140 F160.000
G1 X28.275 Y16.550 Z9.140 F160.000
G1 X20.964 Y16.550 Z9.140 F160.000
G1 X19.135 Y14.721 Z9.140 F160.000
G3 X19.944 Y16.550 Z9.140 I-6.122 J3.802 F160.000
G1 X20.964 Y16.550 Z9.140 F160.000
G0 X20.964 Y16.550 Z18.700
G0 X16.804 Y12.391 Z18.700
G1 X16.804 Y12.391 Z9.140 F160.000
G1 X-8.440 Y-12.853 Z9.140 F160.000
G3 X-15.352 Y-11.683 Z9.140 I-4.514 J-5.664 F160.000
G1 X8.864 Y12.533 Z9.140 F160.000
G0 X8.864 Y12.533 Z18.700
G0 X-27.530 Y16.550 Z18.700
G1 X-27.530 Y16.550 Z9.140 F160.000
G1 X-33.375 Y16.550 Z9.140 F160.000
G1 X-33.375 Y10.705 Z9.140 F160.000
G1 X-27.530 Y16.550 Z9.140 F160.000
G1 X-19.944 Y16.550 Z9.140 F160.000
G3 X-19.818 Y16.179 Z9.140 I4.137 J1.199 F160.000
G1 X-33.375 Y2.622 Z9.140 F160.000
G1 X-33.375 Y-5.460 Z9.140 F160.000
G1 X-15.973 Y11.942 Z9.140 F160.000
G3 X-5.956 Y16.550 Z9.140 I3.028 J6.610 F160.000
G1 X-3.283 Y16.550 Z9.140 F160.000
G1 X-33.375 Y-13.542 Z9.140 F160.000
G1 X-33.375 Y-16.550 Z9.140 F160.000
G1 X-28.301 Y-16.550 Z9.140 F160.000
G1 X4.799 Y16.550 Z9.140 F160.000
G1 X5.956 Y16.550 Z9.140 F160.000
G3 X8.864 Y12.533 Z9.140 I7.033 J2.030 F160.000
G1 X-15.352 Y-11.683 Z9.140 F160.000
G3 X-19.802 Y-16.133 Z9.140 I2.382 J-6.832 F160.000
G1 X-20.218 Y-16.550 Z9.140 F160.000
G1 X-19.944 Y-16.550 Z9.140 F160.000
G2 X-19.802 Y-16.133 Z9.140 I4.574 J-1.330 F160.000
G1 X-19.802 Y-16.133 Z7.620 F160.000
G3 X-19.944 Y-16.550 Z7.620 I4.431 J-1.746 F160.000
G1 X-20.218 Y-16.550 Z7.620 F160.000
G1 X-19.802 Y-16.133 Z7.620 F160.000
G2 X-15.352 Y-11.683 Z7.620 I6.832 J-2.382 F160.000
G1 X8.864 Y12.533 Z7.620 F160.000
G2 X5.956 Y16.550 Z7.620 I4.124 J6.048 F160.000
G1 X4.799 Y16.550 Z7.620 F160.000
G1 X-28.301 Y-16.550 Z7.620 F160.000
G1 X-33.375 Y-16.550 Z7.620 F160.000
G1 X-33.375 Y-13.542 Z7.620 F160.000
G1 X-3.283 Y16.550 Z7.620 F160.000
G1 X-5.956 Y16.550 Z7.620 F160.000
G2 X-15.973 Y11.942 Z7.620 I-6.989 J2.002 F160.000
G1 X-33.375 Y-5.460 Z7.620 F160.000
G1 X-33.375 Y2.622 Z7.620 F160.000
G1 X-19.818 Y16.179 Z7.620 F160.000
G2 X-19.944 Y16.550 Z7.620 I4.011 J1.570 F160.000
G1 X-27.530 Y16.550 Z7.620 F160.000
G1 X-33.375 Y10.705 Z7.620 F160.000
G1 X-33.375 Y16.550 Z7.620 F160.000
G1 X-27.530 Y16.550 Z7.620 F160.000
G1 X-27.530 Y16.550 Z7.620 F160.000
G1 X-19.944 Y16.550 Z7.620 F160.000
G3 X-5.956 Y16.550 Z7.620 I6.994 J2.005 F160.000
G1 X5.956 Y16.550 Z7.620 F160.000
G3 X19.944 Y16.550 Z7.620 I6.994 J2.005 F160.000
G1 X28.275 Y16.550 Z7.620 F160.000
G1 X28.275 Y-16.550 Z7.620 F160.000
G1 X19.944 Y-16.550 Z7.620 F160.000
G3 X5.956 Y-16.550 Z7.620 I-6.994 J-2.005 F160.000
G1 X-5.956 Y-16.550 Z7.620 F160.000
G3 X-19.944 Y-16.550 Z7.620 I-6.994 J-2.005 F160.000
G1 X-33.375 Y-16.550 Z7.620 F160.000
G1 X-33.375 Y16.550 Z7.620 F160.000
G1 X-27.530 Y16.550 Z7.620 F160.000
G0 X-27.530 Y16.550 Z18.700
G0 X8.864 Y12.533 Z18.700
G1 X8.864 Y12.533 Z7.620 F160.000
G1 X-15.352 Y-11.683 Z7.620 F160.000
G2 X-8.440 Y-12.853 Z7.620 I2.399 J-6.834 F160.000
G1 X16.804 Y12.391 Z7.620 F160.000
G0 X16.804 Y12.391 Z18.700
G0 X20.964 Y16.550 Z18.700
G1 X20.964 Y16.550 Z7.620 F160.000
G1 X19.944 Y16.550 Z7.620 F160.000
G2 X19.135 Y14.721 Z7.620 I-6.931 J1.973 F160.000
G1 X20.964 Y16.550 Z7.620 F160.000
G1 X28.275 Y16.550 Z7.620 F160.000
G1 X28.275 Y15.779 Z7.620 F160.000
G1 X-4.054 Y-16.550 Z7.620 F160.000
G1 X4.028 Y-16.550 Z7.620 F160.000
G1 X28.275 Y7.697 Z7.620 F160.000
G1 X28.275 Y-0.386 Z7.620 F160.000
G1 X16.472 Y-12.189 Z7.620 F160.000
G2 X19.944 Y-16.550 Z7.620 I-3.496 J-6.347 F160.000
G1 X20.193 Y-16.550 Z7.620 F160.000
G1 X28.275 Y-8.468 Z7.620 F160.000
G1 X28.275 Y-16.550 Z7.620 F160.000
G1 X28.275 Y-16.550 Z6.100 F160.000
G1 X28.275 Y-8.468 Z6.100 F160.000
G1 X20.193 Y-16.550 Z6.100 F160.000
G1 X19.944 Y-16.550 Z6.100 F160.000
G3 X16.472 Y-12.189 Z6.100 I-6.969 J-1.985 F160.000
G1 X28.275 Y-0.386 Z6.100 F160.000
G1 X28.275 Y7.697 Z6.100 F160.000
G1 X4.028 Y-16.550 Z6.100 F160.000
G1 X-4.054 Y-16.550 Z6.100 F160.000
G1 X28.275 Y15.779 Z6.100 F160.000
G1 X28.275 Y16.550 Z6.100 F160.000
G1 X20.964 Y16.550 Z6.100 F160.000
G1 X19.135 Y14.721 Z6.100 F160.000
G3 X19.944 Y16.550 Z6.100 I-6.122 J3.802 F160.000
G1 X20.964 Y16.550 Z6.100 F160.000
G1 X20.964 Y16.550 Z6.100 F160.000
G1 X28.275 Y16.550 Z6.100 F160.000
G1 X28.275 Y-16.550 Z6.100 F160.000
G1 X19.944 Y-16.550 Z6.100 F160.000
G3 X5.956 Y-16.550 Z6.100 I-6.994 J-2.005 F160.000
G1 X-5.956 Y-16.550 Z6.100 F160.000
G3 X-19.944 Y-16.550 Z6.100 I-6.994 J-2.005 F160.000
G1 X-33.375 Y-16.550 Z6.100 F160.000
G1 X-33.375 Y16.550 Z6.100 F160.000
G1 X-19.944 Y16.550 Z6.100 F160.000
G3 X-5.956 Y16.550 Z6.100 I6.994 J2.005 F160.000
G1 X5.956 Y16.550 Z6.100 F160.000
G3 X19.944 Y16.550 Z6.100 I6.994 J2.005 F160.000
G1 X20.964 Y16.550 Z6.100 F160.000
G0 X20.964 Y16.550 Z18.700
G0 X16.804 Y12.391 Z18.700
G1 X16.804 Y12.391 Z6.100 F160.000
G1 X-8.440 Y-12.853 Z6.100 F160.000
G3 X-15.352 Y-11.683 Z6.100 I-4.514 J-5.664 F160.000
G1 X8.864 Y12.533 Z6.100 F160.000
G0 X8.864 Y12.533 Z18.700
G0 X-27.530 Y16.550 Z18.700
G1 X-27.530 Y16.550 Z6.100 F160.000
G1 X-33.375 Y16.550 Z6.100 F160.000
G1 X-33.375 Y10.705 Z6.100 F160.000
G1 X-27.530 Y16.550 Z6.100 F160.000
G1 X-19.944 Y16.550 Z6.100 F160.000
G3 X-19.818 Y16.179 Z6.100 I4.137 J1.199 F160.000
G1 X-33.375 Y2.622 Z6.100 F160.000
G1 X-33.375 Y-5.460 Z6.100 F160.000
G1 X-15.973 Y11.942 Z6.100 F160.000
G3 X-5.956 Y16.550 Z6.100 I3.028 J6.610 F160.000
G1 X-3.283 Y16.550 Z6.100 F160.000
G1 X-33.375 Y-13.542 Z6.100 F160.000
G1 X-33.375 Y-16.550 Z6.100 F160.000
G1 X-28.301 Y-16.550 Z6.100 F160.000
G1 X4.799 Y16.550 Z6.100 F160.000
G1 X5.956 Y16.550 Z6.100 F160.000
G3 X8.864 Y12.533 Z6.100 I7.033 J2.030 F160.000
G1 X-15.352 Y-11.683 Z6.100 F160.000
G3 X-19.802 Y-16.133 Z6.100 I2.382 J-6.832 F160.000
G1 X-20.218 Y-16.550 Z6.100 F160.000
G1 X-19.944 Y-16.550 Z6.100 F160.000
G2 X-19.802 Y-16.133 Z6.100 I4.574 J-1.330 F160.000
G1 X-19.802 Y-16.133 Z4.580 F160.000
G3 X-19.944 Y-16.550 Z4.580 I4.431 J-1.746 F160.000
G1 X-20.218 Y-16.550 Z4.580 F160.000
G1 X-19.802 Y-16.133 Z4.580 F160.000
G2 X-15.352 Y-11.683 Z4.580 I6.832 J-2.382 F160.000
G1 X8.864 Y12.533 Z4.580 F160.000
G2 X5.956 Y16.550 Z4.580 I4.124 J6.048 F160.000
G1 X4.799 Y16.550 Z4.580 F160.000
G1 X-28.301 Y-16.550 Z4.580 F160.000
G1 X-33.375 Y-16.550 Z4.580 F160.000
G1 X-33.375 Y-13.542 Z4.580 F160.000
G1 X-3.283 Y16.550 Z4.580 F160.000
G1 X-5.956 Y16.550 Z4.580 F160.000
G2 X-15.973 Y11.942 Z4.580 I-6.989 J2.002 F160.000
G1 X-33.375 Y-5.460 Z4.580 F160.000
G1 X-33.375 Y2.622 Z4.580 F160.000
G1 X-19.818 Y16.179 Z4.580 F160.000
G2 X-19.944 Y16.550 Z4.580 I4.011 J1.570 F160.000
G1 X-27.530 Y16.550 Z4.580 F160.000
G1 X-33.375 Y10.705 Z4.580 F160.000
G1 X-33.375 Y16.550 Z4.580 F160.000
G1 X-27.530 Y16.550 Z4.580 F160.000
G1 X-27.530 Y16.550 Z4.580 F160.000
G1 X-19.944 Y16.550 Z4.580 F160.000
G3 X-5.956 Y16.550 Z4.580 I6.994 J2.005 F160.000
G1 X5.956 Y16.550 Z4.580 F160.000
G3 X19.944 Y16.550 Z4.580 I6.994 J2.005 F160.000
G1 X28.275 Y16.550 Z4.580 F160.000
G1 X28.275 Y-16.550 Z4.580 F160.000
G1 X19.944 Y-16.550 Z4.580 F160.000
G3 X5.956 Y-16.550 Z4.580 I-6.994 J-2.005 F160.000
G1 X-5.956 Y-16.550 Z4.580 F160.000
G3 X-19.944 Y-16.550 Z4.580 I-6.994 J-2.005 F160.000
G1 X-33.375 Y-16.550 Z4.580 F160.000
G1 X-33.375 Y16.550 Z4.580 F160.000
G1 X-27.530 Y16.550 Z4.580 F160.000
G0 X-27.530 Y16.550 Z18.700
G0 X8.864 Y12.533 Z18.700
G1 X8.864 Y12.533 Z4.580 F160.000
G1 X-15.352 Y-11.683 Z4.580 F160.000
G2 X-8.440 Y-12.853 Z4.580 I2.399 J-6.834 F160.000
G1 X16.804 Y12.391 Z4.580 F160.000
G0 X16.804 Y12.391 Z18.700
G0 X20.964 Y16.550 Z18.700
G1 X20.964 Y16.550 Z4.580 F160.000
G1 X19.944 Y16.550 Z4.580 F160.000
G2 X19.135 Y14.721 Z4.580 I-6.931 J1.973 F160.000
G1 X20.964 Y16.550 Z4.580 F160.000
G1 X28.275 Y16.550 Z4.580 F160.000
G1 X28.275 Y15.779 Z4.580 F160.000
G1 X-4.054 Y-16.550 Z4.580 F160.000
G1 X4.028 Y-16.550 Z4.580 F160.000
G1 X28.275 Y7.697 Z4.580 F160.000
G1 X28.275 Y-0.386 Z4.580 F160.000
G1 X16.472 Y-12.189 Z4.580 F160.000
G2 X19.944 Y-16.550 Z4.580 I-3.496 J-6.347 F160.000
G1 X20.193 Y-16.550 Z4.580 F160.000
G1 X28.275 Y-8.468 Z4.580 F160.000
G1 X28.275 Y-16.550 Z4.580 F160.000
G1 X28.275 Y-16.550 Z3.060 F160.000
G1 X28.275 Y-8.468 Z3.060 F160.000
G1 X20.193 Y-16.550 Z3.060 F160.000
G1 X19.944 Y-16.550 Z3.060 F160.000
G3 X16.472 Y-12.189 Z3.060 I-6.969 J-1.985 F160.000
G1 X28.275 Y-0.386 Z3.060 F160.000
G1 X28.275 Y7.697 Z3.060 F160.000
G1 X4.028 Y-16.550 Z3.060 F160.000
G1 X-4.054 Y-16.550 Z3.060 F160.000
G1 X28.275 Y15.779 Z3.060 F160.000
G1 X28.275 Y16.550 Z3.060 F160.000
G1 X20.964 Y16.550 Z3.060 F160.000
G1 X19.135 Y14.721 Z3.060 F160.000
G3 X19.944 Y16.550 Z3.060 I-6.122 J3.802 F160.000
G1 X20.964 Y16.550 Z3.060 F160.000
G1 X20.964 Y16.550 Z3.060 F160.000
G1 X28.275 Y16.550 Z3.060 F160.000
G1 X28.275 Y-16.550 Z3.060 F160.000
G1 X19.944 Y-16.550 Z3.060 F160.000
G3 X5.956 Y-16.550 Z3.060 I-6.994 J-2.005 F160.000
G1 X-5.956 Y-16.550 Z3.060 F160.000
G3 X-19.944 Y-16.550 Z3.060 I-6.994 J-2.005 F160.000
G1 X-33.375 Y-16.550 Z3.060 F160.000
G1 X-33.375 Y16.550 Z3.060 F160.000
G1 X-19.944 Y16.550 Z3.060 F160.000
G3 X-5.956 Y16.550 Z3.060 I6.994 J2.005 F160.000
G1 X5.956 Y16.550 Z3.060 F160.000
G3 X19.944 Y16.550 Z3.060 I6.994 J2.005 F160.000
G1 X20.964 Y16.550 Z3.060 F160.000
G0 X20.964 Y16.550 Z18.700
G0 X16.804 Y12.391 Z18.700
G1 X16.804 Y12.391 Z3.060 F160.000
G1 X-8.440 Y-12.853 Z3.060 F160.000
G3 X-15.352 Y-11.683 Z3.060 I-4.514 J-5.664 F160.000
G1 X8.864 Y12.533 Z3.060 F160.000
G0 X8.864 Y12.533 Z18.700
G0 X-27.530 Y16.550 Z18.700
G1 X-27.530 Y16.550 Z3.060 F160.000
G1 X-33.375 Y16.550 Z3.060 F160.000
G1 X-33.375 Y10.705 Z3.060 F160.000
G1 X-27.530 Y16.550 Z3.060 F160.000
G1 X-19.944 Y16.550 Z3.060 F160.000
G3 X-19.818 Y16.179 Z3.060 I4.137 J1.199 F160.000
G1 X-33.375 Y2.622 Z3.060 F160.000
G1 X-33.375 Y-5.460 Z3.060 F160.000
G1 X-15.973 Y11.942 Z3.060 F160.000
G3 X-5.956 Y16.550 Z3.060 I3.028 J6.610 F160.000
G1 X-3.283 Y16.550 Z3.060 F160.000
G1 X-33.375 Y-13.542 Z3.060 F160.000
G1 X-33.375 Y-16.550 Z3.060 F160.000
G1 X-28.301 Y-16.550 Z3.060 F160.000
G1 X4.799 Y16.550 Z3.060 F160.000
G1 X5.956 Y16.550 Z3.060 F160.000
G3 X8.864 Y12.533 Z3.060 I7.033 J2.030 F160.000
G1 X-15.352 Y-11.683 Z3.060 F160.000
G3 X-19.802 Y-16.133 Z3.060 I2.382 J-6.832 F160.000
G1 X-20.218 Y-16.550 Z3.060 F160.000
G1 X-19.944 Y-16.550 Z3.060 F160.000
G2 X-19.802 Y-16.133 Z3.060 I4.574 J-1.330 F160.000
G1 X-19.802 Y-16.133 Z1.540 F160.000
G3 X-19.944 Y-16.550 Z1.540 I4.431 J-1.746 F160.000
G1 X-20.218 Y-16.550 Z1.540 F160.000
G1 X-19.802 Y-16.133 Z1.540 F160.000
G2 X-15.352 Y-11.683 Z1.540 I6.832 J-2.382 F160.000
G1 X8.864 Y12.533 Z1.540 F160.000
G2 X5.956 Y16.550 Z1.540 I4.124 J6.048 F160.000
G1 X4.799 Y16.550 Z1.540 F160.000
G1 X-28.301 Y-16.550 Z1.540 F160.000
G1 X-33.375 Y-16.550 Z1.540 F160.000
G1 X-33.375 Y-13.542 Z1.540 F160.000
G1 X-3.283 Y16.550 Z1.540 F160.000
G1 X-5.956 Y16.550 Z1.540 F160.000
G2 X-15.973 Y11.942 Z1.540 I-6.989 J2.002 F160.000
G1 X-33.375 Y-5.460 Z1.540 F160.000
G1 X-33.375 Y2.622 Z1.540 F160.000
G1 X-19.818 Y16.179 Z1.540 F160.000
G2 X-19.944 Y16.550 Z1.540 I4.011 J1.570 F160.000
G1 X-27.530 Y16.550 Z1.540 F160.000
G1 X-33.375 Y10.705 Z1.540 F160.000
G1 X-33.375 Y16.550 Z1.540 F160.000
G1 X-27.530 Y16.550 Z1.540 F160.000
G1 X-27.530 Y16.550 Z1.540 F160.000
G1 X-19.944 Y16.550 Z1.540 F160.000
G3 X-5.956 Y16.550 Z1.540 I6.994 J2.005 F160.000
G1 X5.956 Y16.550 Z1.540 F160.000
G3 X19.944 Y16.550 Z1.540 I6.994 J2.005 F160.000
G1 X28.275 Y16.550 Z1.540 F160.000
G1 X28.275 Y-16.550 Z1.540 F160.000
G1 X19.944 Y-16.550 Z1.540 F160.000
G3 X5.956 Y-16.550 Z1.540 I-6.994 J-2.005 F160.000
G1 X-5.956 Y-16.550 Z1.540 F160.000
G3 X-19.944 Y-16.550 Z1.540 I-6.994 J-2.005 F160.000
G1 X-33.375 Y-16.550 Z1.540 F160.000
G1 X-33.375 Y16.550 Z1.540 F160.000
G1 X-27.530 Y16.550 Z1.540 F160.000
G0 X-27.530 Y16.550 Z18.700
G0 X8.864 Y12.533 Z18.700
G0 X8.864 Y12.533 Z18.240
G1 X8.864 Y12.533 Z1.540 F160.000
G1 X-15.352 Y-11.683 Z1.540 F160.000
G2 X-8.440 Y-12.853 Z1.540 I2.399 J-6.834 F160.000
G1 X16.804 Y12.391 Z1.540 F160.000
G0 X16.804 Y12.391 Z18.700
G0 X20.964 Y16.550 Z18.700
G0 X20.964 Y16.550 Z18.240
G1 X20.964 Y16.550 Z1.540 F160.000
G1 X19.944 Y16.550 Z1.540 F160.000
G2 X19.135 Y14.721 Z1.540 I-6.931 J1.973 F160.000
G1 X20.964 Y16.550 Z1.540 F160.000
G1 X28.275 Y16.550 Z1.540 F160.000
G1 X28.275 Y15.779 Z1.540 F160.000
G1 X-4.054 Y-16.550 Z1.540 F160.000
G1 X4.028 Y-16.550 Z1.540 F160.000
G1 X28.275 Y7.697 Z1.540 F160.000
G1 X28.275 Y-0.386 Z1.540 F160.000
G1 X16.472 Y-12.189 Z1.540 F160.000
G2 X19.944 Y-16.550 Z1.540 I-3.496 J-6.347 F160.000
G1 X20.193 Y-16.550 Z1.540 F160.000
G1 X28.275 Y-8.468 Z1.540 F160.000
G1 X28.275 Y-16.550 Z1.540 F160.000
G1 X28.275 Y-16.550 Z1.500 F160.000
G1 X28.275 Y-8.468 Z1.500 F160.000
G1 X20.193 Y-16.550 Z1.500 F160.000
G1 X19.944 Y-16.550 Z1.500 F160.000
G3 X16.472 Y-12.189 Z1.500 I-6.969 J-1.985 F160.000
G1 X28.275 Y-0.386 Z1.500 F160.000
G1 X28.275 Y7.697 Z1.500 F160.000
G1 X4.028 Y-16.550 Z1.500 F160.000
G1 X-4.054 Y-16.550 Z1.500 F160.000
G1 X28.275 Y15.779 Z1.500 F160.000
G1 X28.275 Y16.550 Z1.500 F160.000
G1 X20.964 Y16.550 Z1.500 F160.000
G1 X19.135 Y14.721 Z1.500 F160.000
G3 X19.944 Y16.550 Z1.500 I-6.122 J3.802 F160.000
G1 X20.964 Y16.550 Z1.500 F160.000
G1 X20.964 Y16.550 Z1.500 F160.000
G1 X28.275 Y16.550 Z1.500 F160.000
G1 X28.275 Y-16.550 Z1.500 F160.000
G1 X19.944 Y-16.550 Z1.500 F160.000
G3 X5.956 Y-16.550 Z1.500 I-6.994 J-2.005 F160.000
G1 X-5.956 Y-16.550 Z1.500 F160.000
G3 X-19.944 Y-16.550 Z1.500 I-6.994 J-2.005 F160.000
G1 X-33.375 Y-16.550 Z1.500 F160.000
G1 X-33.375 Y16.550 Z1.500 F160.000
G1 X-19.944 Y16.550 Z1.500 F160.000
G3 X-5.956 Y16.550 Z1.500 I6.994 J2.005 F160.000
G1 X5.956 Y16.550 Z1.500 F160.000
G3 X19.944 Y16.550 Z1.500 I6.994 J2.005 F160.000
G1 X20.964 Y16.550 Z1.500 F160.000
G0 X20.964 Y16.550 Z18.700
G0 X16.804 Y12.391 Z18.700
G0 X16.804 Y12.391 Z18.200
G1 X16.804 Y12.391 Z1.500 F160.000
G1 X-8.440 Y-12.853 Z1.500 F160.000
G3 X-15.352 Y-11.683 Z1.500 I-4.514 J-5.664 F160.000
G1 X8.864 Y12.533 Z1.500 F160.000
G0 X8.864 Y12.533 Z18.700
G0 X-27.530 Y16.550 Z18.700
G0 X-27.530 Y16.550 Z18.200
G1 X-27.530 Y16.550 Z1.500 F160.000
G1 X-33.375 Y16.550 Z1.500 F160.000
G1 X-33.375 Y10.705 Z1.500 F160.000
G1 X-27.530 Y16.550 Z1.500 F160.000
G1 X-19.944 Y16.550 Z1.500 F160.000
G3 X-19.818 Y16.179 Z1.500 I4.137 J1.199 F160.000
G1 X-33.375 Y2.622 Z1.500 F160.000
G1 X-33.375 Y-5.460 Z1.500 F160.000
G1 X-15.973 Y11.942 Z1.500 F160.000
G3 X-5.956 Y16.550 Z1.500 I3.028 J6.610 F160.000
G1 X-3.283 Y16.550 Z1.500 F160.000
G1 X-33.375 Y-13.542 Z1.500 F160.000
G1 X-33.375 Y-16.550 Z1.500 F160.000
G1 X-28.301 Y-16.550 Z1.500 F160.000
G1 X4.799 Y16.550 Z1.500 F160.000
G1 X5.956 Y16.550 Z1.500 F160.000
G3 X8.864 Y12.533 Z1.500 I7.033 J2.030 F160.000
G1 X-15.352 Y-11.683 Z1.500 F160.000
G3 X-19.802 Y-16.133 Z1.500 I2.382 J-6.832 F160.000
G1 X-20.218 Y-16.550 Z1.500 F160.000
G1 X-19.944 Y-16.550 Z1.500 F160.000
G2 X-19.802 Y-16.133 Z1.500 I4.574 J-1.330 F160.000
G0 Z18.700
(finish operation: Pocket_Shape001)
(begin postamble)
M05
G17 G54 G90 G80 G40
M2
