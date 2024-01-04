# Hurd kernel

The hybrid Core underlying **DSPi OS** and **Quanty OS**.

The **Hurd** kernel was developed taking into account the needs of those ideas that formed the basis of **DSPi OS**, the first user operating system **RezinaStoriesGDi**.

The kernel has also proven itself in using operating systems for server use.

This Git provides the source data for installing the kernel (and related utilities) to your computer. You can also examine the source code provided by the bootloader and other third-party kernel components to run the system.

The Hurd kernel is a hybrid of a monolithic framework and modular elements, providing flexibility in the execution of the operating system. 

**From the description of the Hurd concept**:

"Also, the **Hurd** kernel allows you to unload individual modules and does not require a complete reboot of the kernel. This avoids many problems if a particular module becomes out of order. If there is a failure in any module, this module is unloaded and the kernel tries to reboot it automatically. If the reboot of the module itself is successful, then everything continues to work offline. If not, the kernel transfers the system to the subkernels, reboots and returns the system to its original state."

## What we provide.

**Hurd** kernel.
The loader.
The necessary configuration to run through a virtual machine.
The communication interface between the Hard kernel and the OS.
The installer.
An interface for embedding Linux code or any other Unix-like OS.

## Your opportunities for using **Hurd**.

We also provide components to write our own interface for communicating the **Hurd** kernel with your operating system (if you want to base it on Hurd). 

Modify the **loader** the way you want.

Embed the code of Linux or any other Unix system into the communication interface between the kernel and the operating system. But remember about lineses.

Write your own Hurd extensions under the BIOS. Optimize your own hardware drivers.


**Use this development to create a DSPi-like OS.**
