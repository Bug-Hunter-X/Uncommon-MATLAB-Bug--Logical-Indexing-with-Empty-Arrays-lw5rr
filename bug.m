function result = myFunction(input)
  % This function demonstrates an uncommon MATLAB bug related to logical indexing with empty arrays.
  if isempty(input)
    result = [];  % Handle empty input
    return
  end

  % Some computation on the input array
  intermediateResult = input.^2;

  % Logical indexing that might cause a problem
  logicalIndex = intermediateResult > 10;
  result = input(logicalIndex);
end

% Example usage demonstrating the problem. The function returns an empty array when called with an empty array. If not handled, this can cause unexpected issues.
inputArray = [];
resultArray = myFunction(inputArray);

% Example usage with a non-empty array. This will work fine.
inputArray = [1, 5, 12, 3];
resultArray = myFunction(inputArray);