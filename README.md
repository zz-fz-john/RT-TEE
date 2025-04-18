# RT-TEE: Real-time System Availability for Cyber-physical Systems using ARM TrustZone

Jinwen Wang, Ao Li, Haoran Li, Chenyang Lu, and Ning Zhang. "RT-TEE: Real-time System Availability for Cyber-physical Systems using ARM TrustZone." 2022 IEEE Symposium on Security and Privacy (SP), pp. 1573-1573. IEEE Computer Society, 2022.

## Dependencies
Original repo is for qemu ,I modirfy it to run on RPI3. linux kernel is 32bit ,secure world is 64 bit  The testing environmet is Ubuntu 20.04. Install prerequisite folowing [this](https://optee.readthedocs.io/en/latest/building/prerequisites.html).

gcc version is 4.9

optee-version is v3.4

the modified file name is listed in mgrt_rcd.txt
## Project Structure
The main RT-TEE codes are distributed in directory structure as follows.
```
REPO_ROOT
  |-> optee_os
    |-> /core/arch/arm/kernel/RT_TEE_Scheduler.c (customisable hierarchical scheduling)
    |-> /core/arch/arm/pta/pta_xxx (trusted applications, i.e., synthetic pseudo secure sensitive tasks)
    |-> /core/arch/arm/pta/tplt_driver.c (driver debloating)
  |-> driver_sandbox
    |-> walk_gimple.cc (GCC sandboxing plugin)
  |-> optee_examples
    |->/hello_world/host/main.c RT-TEE (Normal World Configurations)
```
Note: 
Above struct only shows some files modified by RT-TEE. RT-TEE modified tens of files in optee.
Template driver only works on hardware platfrom specified in RT-TEE paper. We only show an example, i.e., barometer prom read through I2C bus driver template. RT-TEE works on multi-cores on Pi3, but single core on QEMU, we will support multi-cores on QEMU in the future.




## Setup
To setup RT-TEE for the first time, clone the repo and follow next steps. REPO_ROOT is the path of RT-TEE root directory.
1. Build Toolchain
```
cd REPO_ROOT
cd build
make toolchains
```

2. Build Project 
```
cd REPO_ROOT
cd build
make clean
make -j8
```
3. Build trusted application and configure scheduling parameters. 

Please modify the RTTEE_PATH in REPO_ROOT/optee_examples/hello_world/envi_setup.txt to your project root directory path first.

```
cd REPO_ROOT/optee_client
source ./client_compile.txt
```

```
cd REPO_ROOT
cd build
source ta_build.txt
```
An example of configuring RT-TEE scheduling parameters is shown in /optee_example/hello_world/host/main.c, including parameter sematics.


## Running
- start 
```
cd REPO_ROOT
cd build
make img-help

```
following the guide


before umount rootfs,you should move files(ta and binary) in shared_folder to rootfs/root 


- After VM initialization, start RT-TEE hierarchical scheduling.
```
mkdir shared && mount -t 9p -o trans=virtio host shared
./shared/optee_example_hello_world
```
