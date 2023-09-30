# CT-Prover

This repository provides the tool for the paper "Towards Efficient Verification of Constant-Time Cryptographic Implementations".

# Table of Contents

- CT-Prover
- Table of Contents
  - Requirement
  - Structure
  - Getting Started Instructions
    - 0 Install depedencies and build the necessary tools
    - 1 Verifying Constant-time Implementations
    - 2 Verifying Non-constant-time Implementations

## Requirement

- Clang-12
- Ruby >= 2.7.0.
- Boogie >= 2.9.6.0
- Ninja >= 1.10.0

## Structure

- phasar: The IFDS taint analysis of our tool.
- Extern_PTA: The tool providing point analysis.
- bam: The tool to construct product programs on Boogie IR.
- smack: A modification of SMACK which transfer LLVM IR into Boogie IR with taint analysis information.
- bech: The benchmarks of our work.
- script: The script used to automate the jobs such as extract the information from analysis result, collect the time information, etc.

## Getting Started Instructions

- 0 Install depedencies and build the necessary tools
  - Install the appropriate version of clang, ruby, boogie and ninja through official source
  - Build the phasar as follows:

    ```
    cd phasar
    ./bootstrap.sh
    ```
  - Build the smack as follows:

    ```
    cd smack/build
    ninja
    ```
  - Script

    Add the path of scropt into your environment.
- 1 Verifying Constant-time Implementations
  - In the bech directory, there are directories for various algorithm libraries. In the directory ot each libraries is the benchmarks of algorithm.
  - Get into any benchmarks of algorithm. Run the command

    ```
    vfct
    ```
    to carry out the analysis. The analysis results will automatically generated into the file  with .txt and .csv suffix
- 2 Verifying Non-constant-time Implementations
  - Same with the above except run the command

    ```
    vfctnew10.py
    ```
