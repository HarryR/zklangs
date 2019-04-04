# High-Level languages for zkSNARKs, Fully-Homomorphic-Encryption and Multi-Party-Computation

![High-Level-Graph](hll-graph.png)

# zkSNARKs

## High-Level Languages for zkSNARKs

 * https://github.com/arnaucube/go-snark
 * https://github.com/republicprotocol/zksnark-rs
 * https://github.com/o1-labs/snarky
 * Pinocchio & Gappetto - https://github.com/corda/msr-vc
 * Jsnark - https://github.com/akosba/jsnark
 * xjsnark - https://github.com/akosba/xjsnark
 * Pepper Project - https://github.com/pepper-project/
 * Circom - https://github.com/iden3/circom
 * ZoKrates - https://github.com/Zokrates/ZoKrates

## Proving Systems

 * [Gro16](https://eprint.iacr.org/2016/260.pdf)
 * [SONIC](https://github.com/zknuckles/sonic)
 * [PGHR13](https://eprint.iacr.org/2013/279.pdf)
 * [GM17](https://eprint.iacr.org/2017/540.pdf)

# High Level Languages

## C

### Compiled By:

 * [Pepper Project](https://github.com/pepper-project/)
 * [CBMC-GC](https://gitlab.com/securityengineering/CBMC-GC-2)

## SFDL

## Circom

## Verilog

### Compiled By

 * Synopsys Design Compiler
 * Yosys-ABC synthesis tools

The [circuit_synthesis](https://github.com/esonghori/circuit_synthesis) repository by TinyGarble includes a toolchain for compiling Verilog to netlist form supported by TinyGarble. This repository includes many examples.

### Converted To

 * [v_2_scd.cpp, Netlist -> SCD](https://github.com/esonghori/TinyGarble/blob/master/scd/v_2_scd.cpp)

## SCDL

> Simple Circuit Description Language - simple functional language to describe circuits with a very basic implementation of a "compiler"

 - https://github.com/ciphron/scdl

### Example:

```python
include "base.scdl"
  
input A : 2
input B : 2

func gt(X : 2, Y : 2) = \
  or(X[1]*not(Y[1]), eq(X[1], Y[1])*X[0]*not(Y[0]))

func out = gt(A, B)
```

# Intermediate Forms

## Pinocchio

https://github.com/Ethsnarks/ethsnarks-il/tree/master/cxx

## Prover Worksheet

## SHDL - Secure Hardware Definition Language

## andytoshi

## SCD

 * https://github.com/irdan/justGarble/blob/master/scd/SCD_Format

> An SCD file contains a compact description of a boolean circuit or a boolean
  circuit topology (a description with gate types are unspecified). Circuits
  are modeled closely after Foundations of garbled circuits by Bellare, Hoang 
  and Roagaway, available from eprint.iacr.org. Here a circuit is a 6-tuple
  f= (n, m, q, A, B, G, O) where n,m, and q are integers representing 
  the number of inputs, outputs, and gates in the circuit. 

> Consider a simple circuit implementing f(a_1,a_2,a_3) = (a_1 & a_2) | a_3. 
  There are three inputs, one output, two gates, and five logical wires. We 
  will add the extra dummy wire to make it six wires overall. An SCD 
  representation of this circuit could be as follows:
  (3, 1, 2, [1,4], [2,3], [8, 14], [5]), indicating that there are 3 inputs, 
  1 output, 2 gates, the first inputs to the gates are 1, 4, the second inputs
  are 2, 3, the gate types are 8 = 1000 = AND, and 14 = 1110 = OR, and the 
  output of the circuit is wire 5.

## Bristol MPC

 * https://homes.esat.kuleuven.be/~nsmart/MPC/

### Converts to

 * [SHDL](https://github.com/encryptogroup/UC/blob/master/src/bristol_to_SHDL.cpp)
 * [SCD](https://github.com/esonghori/TinyGarble/blob/master/scd/v_2_scd.cpp)
