function result = myFunctionImproved(input)
  % Improved function to handle empty input arrays correctly.
  if isempty(input)
    result = []; % Explicitly handle empty input
    return;
  end

  intermediateResult = input.^2;
  logicalIndex = intermediateResult > 10;
  result = input(logicalIndex);
end

% Example usage demonstrating the corrected behavior.
inputArray = [];
resultArray = myFunctionImproved(inputArray);

inputArray = [1, 5, 12, 3];
resultArray = myFunctionImproved(inputArray); 