# Machine Learning for Pattern Recognition in C Compiled Assembly Code

![Python](https://img.shields.io/badge/-Python-3776AB?style=flat-square&logo=python&logoColor=white)
![PyTorch](https://img.shields.io/badge/-PyTorch-EE4C2C?style=flat-square&logo=pytorch&logoColor=white)
![ASSEMBLY](https://img.shields.io/badge/_-ASM-6E4C13.svg?style=for-the-badge)


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

- `src/`: Source code directory containing scripts for data preprocessing, CNN training, and pattern analysis.
- `data/`: Directory to store the compiled assembly code datasets used for training and testing.
- `docs/`: Contains the poster presented at conferences and academic events (see [Project Poster](https://github.com/elioaboufarhat/automatic-fpga-acceleration/blob/main/poster.pdf)))
    .
    ├── ...
    ├── test                    # Test files (alternatively `spec` or `tests`)
    │   ├── benchmarks          # Load and stress tests
    │   ├── integration         # End-to-end, integration tests (alternatively `e2e`)
    │   └── unit                # Unit tests
    └── ...

### Project Status
The initial phase of this project was completed as a final project for my Computer Systems Engineering degree. However, due to other commitments and priorities, the project is currently on pause.

### License

This project is licensed under the [MIT License](LICENSE).

### Contact

If you have any questions or suggestions regarding the project, feel free to contact the project maintainers:

- Elias Abou Farhat: aboufarhatelio@hotmail.com

