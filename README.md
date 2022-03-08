# coolers
Another COOL compiler project, written in Rust. 

## Setup
The default tools for COOL are only supported on Linux. The easiest way to get this working is to use a VirtualBox VM. You can get a preconfigured VM [here](https://s3-us-west-1.amazonaws.com/prod-edx/Compilers/VM/compilers-vm.zip).

Once the VM is setup, you can test it by running the included hello world example.
```
$ mkdir examples
$ cd examples
$ cp /usr/class/cs143/examples/hello_world.cl .
$ coolc hello_world.cl
$ spim hello_world.s
SPIM Version 6.5 of January 4, 2003
Copyright 1990-2003 by James R. Larus (larus@cs.wisc.edu).
All Rights Reserved.
See the file README for a full copyright notice.
Loaded: /usr/class/cs143/cool/lib/trap.handler
Hello, World.
COOL program successfully executed
Stats -- #instructions : 152
         #reads : 27  #writes 22  #branches 28  #other 75
```