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


### 1 - Why does the Modulo Counter actually divide clocks by 2 * Count?


### 2 - Why does the ring counter's output go to all 1s on the first clock cycle?
This is because we are using the output of Q as the input for the next clock, which leads to a downward counter. If you wanted it to count up (i.e. incrementing upwards) you would want to use the ~Q as the input for the next T-flip-flops clock.

### 3 - What width of ring counter would you use to get to an output of ~1KHz?
Well, you would have to solve the equation for logbase2(1000) = 9.966 ~ 10, so you would need it to be a width of 10.
