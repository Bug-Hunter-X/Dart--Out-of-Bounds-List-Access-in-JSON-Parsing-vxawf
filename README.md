# Dart: Out of Bounds List Access in JSON Parsing

This repository demonstrates a common error in Dart applications involving accessing elements in a list at an index that is out of bounds. This frequently occurs when parsing JSON data where the structure is not guaranteed.

The `bug.dart` file contains the problematic code, and `bugSolution.dart` provides a corrected version that handles potential errors gracefully. 

**Problem:** The original code assumes that the JSON response always contains at least 11 elements, which is not always the case. Accessing `data[10]` when there are fewer than 11 elements will result in an `RangeError` exception.  

**Solution:** The solution involves checking the length of the list before accessing an element at a specific index.  This prevents the exception and handles the case where the expected data is missing.