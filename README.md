# 8-Bit Ripple Carry Adder

### What is a Ripple Carry Adder?
A ripple carry adder is a digital circuit that produces the arithmetic sum of two binary numbers. It. can be constructed with full adders connected in cascaded with the carry output from each full adder connected to the carry input of the next full adder in the chain. This kind of adder is called Ripple Carry Adder, since each carry bit "ripples" to the next full adder.

Here is a top level view of a 4-bit Ripple Carry Adder for reference : <br>

![4bit_rca](https://github.com/SahilPrabhu/CADD_Project/assets/92974277/2bfc98bd-3959-434f-81ae-e5547708cdc1)

### Truth Table of Full Adder
![truth-table](https://github.com/SahilPrabhu/CADD_Project/assets/92974277/27793318-22e5-4c61-aefb-9bc38756f3e0)

## 8-bit RCA Netlist View
### Top Level RTL View 
![RTLView](https://github.com/SahilPrabhu/RippleCarryAdder/assets/92974277/22ccf9eb-1e12-4598-b59d-0341b0eb7205)


### Gate Level Synthesis
<img width="1440" alt="RTLView-2" src="https://github.com/SahilPrabhu/RippleCarryAdder/assets/92974277/280a6d7f-d5b5-4200-ae2e-45acd0faa568">

<img width="1440" alt="RTLView-3" src="https://github.com/SahilPrabhu/RippleCarryAdder/assets/92974277/b075da34-9b28-4a83-bba1-f6b77d8b5f64">

### Technology Viewer
![techview](https://github.com/SahilPrabhu/RippleCarryAdder/assets/92974277/1d772e13-977a-40df-a9de-2c3ef5a689da)


## Delay Calculation
The layout of ripple carry adder is simple, which allows for fast design time; however, the ripple carry adder is relatively slow, since each full adder must wait for the carry bit to be calculated from the previous full adder. The gate delay can easily be calculated by inspection of the full adder circuit. 
Total time taken for the 8bit Ripple Carry Adder is : <br>

<strong>T<sub>RCA</sub> = N * T<sub>FA</sub> <br></strong>
where, T<sub>FA</sub> = Propogation Delay of each Full Adder Circuit

## Simulation Waveform - Modelsim Altera
![Waveform](https://github.com/SahilPrabhu/RippleCarryAdder/assets/92974277/b190b09b-1331-47ee-aef4-d7c44296e508)


## Pin Planner - Intel Quartus Prime
![WhatsApp Image 2023-11-24 at 8 47 20 AM](https://github.com/SahilPrabhu/RippleCarryAdder/assets/92974277/bb8049c5-6e6e-4ed4-8b22-4921460d0f9c)

<strong>Board Used - Intel MAX10 FPGA - 10M50DAF484C7G</strong>
#
This project was submitted for the final project of the course <strong>Computer Aided Digital Design</strong> (UE22EC252A) by <strong>Sahil S Prabhu.</strong>
