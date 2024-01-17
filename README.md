# Pattern Recognition (CNN) for acceleration of C Compiled Assembly Code

![Python](https://img.shields.io/badge/python-3670A0?style=for-the-badge&logo=python&logoColor=ffdd54)
![PyTorch](https://img.shields.io/badge/PyTorch-%23EE4C2C.svg?style=for-the-badge&logo=PyTorch&logoColor=white)
![AssemblyScript](https://img.shields.io/badge/assembly%20script-%23000000.svg?style=for-the-badge&logo=assemblyscript&logoColor=white)
![C](https://img.shields.io/badge/c-%2300599C.svg?style=for-the-badge&logo=c&logoColor=white)

[Project Report](https://github.com/elioaboufarhat/automatic-fpga-acceleration/blob/main/BEng_Final_Report.pdf)

## Description

This public GitHub repository contains a research project that explores the application of machine learning techniques to identify patterns within C compiled assembly code. The primary objective of this project is to leverage these identified patterns and outsource repetitive code segments to Field-Programmable Gate Arrays (FPGAs) for hardware acceleration, leading to improved performance in specific computing tasks.

### Background

Modern software applications often require complex and computationally intensive operations, especially in domains such as image processing, cryptography, and signal analysis. While compilers do an excellent job at translating high-level code into optimized assembly instructions, there may still be opportunities for further optimization, particularly in repetitive code patterns. Field-Programmable Gate Arrays offer the potential to accelerate such repetitive tasks, but identifying the right patterns to offload to FPGAs can be challenging.

### Goals

The main goals of this research project are as follows:

1. Develop a methodology to extract and analyze C compiled assembly code.
2. Train a Convolutional Neural Network (CNN) to recognize recurring patterns within the assembly code.
3. Utilize the trained CNN to identify potential patterns suitable for FPGA offloading.

### Project Structure

This repository contains the following files and directories:


      ├── ...
      ├── datasets                
      │   ├── training                  
      │   ├── testing                 
      ├── src
      │   ├── data_generation           # Data Generation & Image Generation
      │         ├── 12f1840             # PIC Processor "12f1840" Compiled Assembly Files
      │         ├── cGen                # Python functions for common algorithms/problems C code generation
      │         ├── Reports             # Output Microship Software Files
      │         ├── ... .py             # Python files for pipeline
      │   ├── ml                        # functions responsible for data generation
      │         ├── data.py             # Data Preparation Class for Training
      │         ├── model.py            # Model Class Initialisation
      │         ├── training.py         # Training of CNN - Algorithm
      │         ├── main.py             # Main Testing Files - Inference
      ├── Final_Report.pdf              # Full Report - Final Year Project
      ├── poster.pdf                    # Poster - Summary of Project
      
    

    

### Project Status
The initial phase of this project was completed as a final project for my Computer Systems Engineering degree. However, due to other commitments and priorities, the project is currently on pause.

### License

This project is licensed under the [MIT License](LICENSE).

### Contact

If you have any questions or suggestions regarding the project, feel free to contact the project maintainers:

- Elias Abou Farhat: aboufarhatelio@hotmail.com

