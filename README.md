# Uncommon MATLAB Bug: Logical Indexing with Empty Arrays

This repository demonstrates an uncommon bug in MATLAB related to logical indexing when dealing with empty arrays.  The bug arises when a function uses logical indexing on an array that might be empty.  If the function doesn't explicitly handle the empty array case, it can lead to unexpected results or errors.

## Bug Description
The `myFunction.m` file contains a MATLAB function that performs some computation on an input array and then applies logical indexing.  When called with an empty array, the logical indexing operation causes issues due to implicit dimension handling in MATLAB. 

## Solution
The `bugSolution.m` file provides a corrected version of the function that explicitly checks for empty input arrays and handles them appropriately to avoid the bug.

## How to Reproduce
1. Clone this repository.
2. Open `bug.m` and `bugSolution.m` in MATLAB.
3. Run `bug.m` with both empty and non-empty input arrays to observe the bug.
4. Run `bugSolution.m` to see the corrected behavior.