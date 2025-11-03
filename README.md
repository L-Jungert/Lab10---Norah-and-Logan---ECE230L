# Sequential Circuits: Latches

In this lab, you learned about the basic building block of sequential circuits: the latch.

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

## Lab Questions

Summary: 
In week 10 of our digital systems lab, we learned just about the coolest project yet. Implementing all the ideas we have used so far -> multiplexers and demultiplexers, and combining them with a new concept of a D-latch, was super intriguing and surprisingly challenging. In this lab, we used automatically triggered demux and mux, in conjunction with a full byte input, to simulate how d-latches can store and hold onto data. Overall, this lab was the best one yet!


###  Why can we not just use structural Verilog to implement latches?

It’s far more efficient to use behavioral verilog (always @(*)), because if we use the always statements we can only have to worry about the specific latch we are implementing. For example, in this lab, we used the always statement to implement our mux and demux to always be running. Then, we didn’t have to worry about pressing buttons and toggling mux and demux on and off. That way we can worry just about the d-latch, and saving memory of the byte at hand.


### What is the meaning of always @(*) in a sensitivity block?

In Verilog the always @(*) defines a combinational logic block that automatically runs when one of the input signals inside of it changes. It replaces the need to manually list signals in the sensitivity list which prevents errors and ensures that the logic updates correctly when inputs change.

### What importance is memory to digital circuits?
Memory is important when it comes to digital circuits because it can store and recall data or states rather than reacting to current inputs. Without memory a circuit would forget everything as soon as the input changes. With memory, it can keep track of past information, count, store data, and do more complicated tasks like what computers do.


