#  AMBA AHB-Lite Memory Controller using Semi-Custom VLSI Design Flow

---

##  Overview
This project implements an **AMBA AHB-Lite Memory Controller** using a **semi-custom VLSI design flow**.  
The design progresses from **RTL to GDSII** through functional simulation, synthesis, and physical design using **Vivado**, **Cadence ncLaunch**, **Genus**, and **Innovus** tools.

---

##  Aim
To design, simulate, synthesize, and implement an AMBA AHB-Lite Memory Controller and generate its final **GDSII layout** ready for fabrication.

---

##  Tools Used
| Tool | Function |
|------|-----------|
| Vivado | RTL design and simulation |
| ncLaunch / irun | Functional verification |
| Genus | Logic synthesis and timing reports |
| Innovus | Physical design and layout |

---

##  Design Flow
1. **Vivado / ncLaunch:** RTL simulation of AHB read/write operations.  
2. **Genus:** Logic synthesis and report generation (area, power, timing).  
3. **Innovus:** Floorplanning, placement, routing, and GDS export.  
4. **Output:** Final **GDSII file** for fabrication.

---

##  Key Concepts
- AHB-Lite enables **high-speed, pipelined data transfer** between master and slave.  
- The **Memory Controller** handles read/write operations through `HADDR`, `HWRITE`, `HWDATA`, and `HRDATA` signals.  
- Verified for functional correctness, synthesized into standard cells, and implemented in layout.

---

##  Important Figures
| No. | Figure | Description |
|-----|---------|-------------|
| 1 | ncLaunch Waveform | Read/write operation verification |
| 2 | Genus Reports | Area, power, and timing results |
| 3 | Innovus Layout | 2D/3D routed layout view |
| 4 | Final GDS | Fabrication-ready mask file |

---

##  Summary of Results
| Parameter | Result |
|------------|--------|
| Frequency | 100 MHz |
| Timing Slack | +0.12 ns |
| DRC/LVS | Clean |
| Final Output | `final.gds` |

---

##  Conclusion
The **AMBA AHB-Lite Memory Controller** was successfully designed, simulated, synthesized, and implemented using a semi-custom ASIC flow.  
All verification checks passed, and the final **GDSII layout** was generated successfully.

---

##  Author
**K. Jyoshika**  
Department of ECE  
IIITDM Kurnool  
 123EC0041@iiitk.ac.in

---


