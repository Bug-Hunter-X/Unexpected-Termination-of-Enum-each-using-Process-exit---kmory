# Unexpected Termination of Enum.each using Process.exit()

This code snippet showcases an unconventional error related to employing Process.exit() within Enum.each in Elixir.  The goal is to iterate through a list, print each element until the number 3 is encountered, at which point the process should cleanly exit. However, the current implementation doesn't manage the exit signal appropriately and produces unexpected behavior.  The solution demonstrates a more robust and idiomatic approach for achieving the desired outcome. 

## How to reproduce the bug:

1. Run the `bug.exs` file using `elixir bug.exs`.
2. Observe that the program terminates abruptly after printing the number 2, without executing the final IO.puts statement.

## Solution and Explanation:

The provided solution (`bugSolution.exs`) addresses this issue by replacing Process.exit() with a more effective control flow mechanism that does not disrupt Enum.each's execution.  `Enum.find` is used to locate the element and the loop is broken using the :halt signal. 

This is important for understanding proper exception handling within Elixir's functional programming paradigm.