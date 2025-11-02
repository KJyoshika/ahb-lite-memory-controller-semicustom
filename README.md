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


##  Reports Summary

### 1. Area Report
The **area report** generated from *Cadence Genus* provides total cell usage and area consumption for the synthesized module.  
The AHB-Lite memory controller contains approximately **14,911 standard cells** with a **total area of 210,548 µm²** under slow process conditions.  

| Parameter | Value |
|:-----------|:------|
| Tool Used | Cadence Genus |
| Total Cells | 14,911 |
| Total Cell Area | 210,548 µm² |
| Operating Condition | Slow (Balanced Tree) |
| Wireload Mode | Enclosed |

---

### 2. Power Report
The **power report** estimates dynamic and static power components of the synthesized design.  
Registers contribute the highest portion of power (≈94%), while logic elements contribute around 6%.  

| Power Category | Leakage (W) | Internal (W) | Switching (W) | Total (W) |
|:----------------|:-------------|:---------------|:----------------|:------------|
| Memory | 0 | 0 | 0 | 0 |
| Register | 1.23e−03 | 1.16e−02 | 1.54e−04 | 0.01284 |
| Logic | 1.64e−04 | 1.97e−04 | 0 | 0.00036 |
| Total Power | – | – | – | **0.01367 W** |

---

### 3. Timing Report
The **timing report** confirms that all timing constraints are satisfied with positive slack values.  
Setup and hold checks were verified, showing a maximum **slack of +4024 ps**, indicating timing closure.  

| Parameter | Value |
|:-----------|:------|
| Clock Name | HCLK |
| Setup Time | 140 ps |
| Required Time | 9860 ps |
| Data Path Delay | 4836 ps |
| Slack | **+4024 ps** |
| Result | Timing Met |

---

##  Results Summary

| Parameter | Result | Tool |
|:-----------|:---------|:------|
| Functional Verification | Successful | NCLaunch / Irun |
| Total Area | 210,548 µm² | Cadence Genus |
| Total Power | 0.01367 W | Cadence Genus |
| Timing Slack | +4024 ps | Cadence Genus |
| Layout Completion | Done | Cadence Innovus |
| GDSII File | Generated | Cadence Innovus |

---

## 🏁 Conclusion
The **AMBA AHB-Lite Memory Controller** was successfully designed, verified, synthesized, and implemented through a complete **semi-custom VLSI design flow**.  
All functional, timing, and power constraints were met, and the final layout was exported as a **GDSII file** ready for fabrication.  
The project demonstrates an efficient and fully verified digital design using industrial-grade EDA tools.

---


##  Author
**K. Jyoshika**  
Department of ECE  
IIITDM Kurnool  
 123EC0041@iiitk.ac.in

---


