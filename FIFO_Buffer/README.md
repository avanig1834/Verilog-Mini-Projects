# FIFO - BUFFER
A FIFO (First-In-First-Out) buffer is a type of queue used in digital circuits to temporarily store data before processing. It follows the FIFO principle, meaning the first data written into the buffer is the first to be read out.
A 32 x 8 fifo buffer is implemented using verilog. It is a 2D array of 32 bit word size each 8 bits long.

## WORKING 
It consists of the following components:-

- ```rd``` : When ```rd``` is (high) 1, then data is read from the registers and displayed in output. \
- ```wr``` : When ```wr``` is (high) 1, then data is written into the specific location og the register. \
- ```readCounter``` and ```writeCounter``` : These are 3-bit registers used to keep track of read and write operations. \
- ```EMPTY``` : High when FIFO is empty.\
- ```FULL``` : High when FIFO is full.\
- ```dataIn``` and ```dataOut``` : 32-bit registers for input and output of data.\
- ```count``` : Keeps track of the number of elements in FIFO.\
