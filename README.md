# Lab 11 - Counters and Dividers

In this lab, we learned how to make clock dividers from two types of counters.

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

## Lab Questions

## Lab Summary
In this lab we created a modulo-6 counter and a ripple counter. The modulo-6 counter uses adders and d-flipflops to count up and used a comparator to see if the counter increased to 5. After it counts to 5 or if the reset button is switched, it resets back to 0. The ripple counter counts down from 7 to 0 until it overflows back to 7. Becuase the inputs for the following t-flipflops require the input from the previous one, there is a slight delay from the original clock. These are designed to be utilized as a frequecy divider.

### 1 - Why does the Modulo Counter actually divide clocks by 2 * Count?
A single "Hz" is defined as the time between the signal going from high to low and back to high. Therefore, the clock will go through 2 counts to reach a single Hz.

### 2 - Why does the ring counter's output go to all 1s on the first clock cycle?
This is because we are using the output of Q as the input for the next clock, which leads to a downward counter. If you wanted it to count up (i.e. incrementing upwards) you would want to use the ~Q as the input for the next T-flip-flops clock.

### 3 - What width of ring counter would you use to get to an output of ~1KHz?
Well, you would have to solve the equation for logbase2(1000) = 9.966 ~ 10, so you would need it to be a width of 10.
