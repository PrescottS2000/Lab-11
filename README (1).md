# Lab 11 - Counters and Dividers

In this lab, we learned how to make clock dividers from two types of counters.

## Rubric

|Item|Description|Value|
|-|-|-|
|Summary Answers|Your writings about what you learned in this lab.|25%|
|Question 1|Your answers to the question|25%|
|Question 2|Your answers to the question|25%|
|Question 3|Your answers to the question|25%|

## Names 

## Carter Rayborn and Stephen Prescott

## Summary

This lab had us implement two types of clocked counters: An asynchronous ripple counter and a synchronous modulo counter. The ripple counter is less robust

\- since no large scale system would actually use this. From the overarching perspective, it treats each flip flop as its own object, and

feeds the output of one flip flop as the clock pulse to the next. This is fine for a 3 digit counter like this, but as you add more bits to a system, you 

increase the delay in the circuit by a factor of the number of bits involved. At some point, with either higher clock speeds and/or enough bits, this will 

cause a bottleneck, where the last bit in the chain has not updated by the time the first bit gets the next clock signal. This causes issues with reading the 

data, as not all of the bits are on the same clock pulse. The advantage to a ripple counter is that it will allow you to divide by numbers other than 2.

The modulo counter is a much more robust and realistic approach, using a synchronous clock pulse that is connected to each individual bit. It is more complex, 

as it requires an adder AND a flip flop for each bit, but it is modular, so it can be easily expanded to any number of bits without causing timing issues.

## Lab Questions

### 1 - Why does the Modulo Counter actually divide clocks by 2 \* Count?

The modulo counter divides by 2 because it toggles for every other clock input. A clock pulse contains both a rising AND a falling edge, and even though we

only care about one of them at a time, the output still is changing twice per cycle.

### 2 - Why does the ring counter's output go to all 1s on the first clock cycle?

The ripple (ring) counter output all go to 1s after the first clock cycle because we instantiate it that way- We need to assign a starting value, and since we 

want to start counting at "000," we set it to "111" to begin. This way, on the first clock signal, it all resets to "000" and begins counting from there.

### 3 - What width of ring counter would you use to get to an output of \~1KHz?

Using the 100 MHz clock on the Basys 3 board, the output to get about 1 KHz clock would be 17 bits. This gives about 763 Hz clock (100,000,000/2^17). A 16 bit

wide counter would give 1525 Hz (100,000,000 / 2^16), which is much farther away from the target 1,000 than we would like. 

