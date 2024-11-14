# MNIST Classification Project

This repository contains various approaches for classifying the MNIST dataset using different machine learning and neural network methods. The project demonstrates the use of Adaline and Perceptron models, both in their basic forms and with neural network architectures.

## Table of Contents

- [Introduction](#introduction)
- [Dataset](#dataset)
- [Methods](#methods)
- [Setup and Installation](#setup-and-installation)
- [Running the Code](#running-the-code)


## Introduction

The MNIST dataset is a large database of handwritten digits commonly used for training various image processing systems. This project explores different methods to classify the MNIST dataset using MATLAB, showcasing both linear and neural network-based approaches.

## Dataset

The project uses the MNIST dataset, which includes:
- **mnist_train.csv**: The training data
- **mnist_test.csv**: The testing data
- **data.mat**: Additional data used in the project

## Methods

The following methods are implemented in this project:
1. **Basic Adaline**: Implements the Adaline algorithm for classification.
2. **Neural Network with Adaline**: Enhances the Adaline algorithm with a neural network.
3. **Basic Perceptron**: Implements the Perceptron algorithm for classification.
4. **Neural Network with Perceptron**: Enhances the Perceptron algorithm with a neural network.

## Setup and Installation

To run the code, you need to have MATLAB installed. Follow these steps to set up the project:

1. **Clone this repository**:
    ```bash
    git clone https://github.com/yourusername/mnist-classification.git
    ```

2. **Navigate to the project directory**:
    ```bash
    cd mnist-classification
    ```

3. **Ensure the dataset files are in the correct location**:
    Place the `mnist_train.csv`, `mnist_test.csv`, and `data.mat` files in the project directory.

## Running the Code

Open MATLAB and run the scripts corresponding to each method. For example, to run the Adaline method, open and execute the script:
```matlab
Adaline.m
