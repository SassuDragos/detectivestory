/// @function get_row_from_2darray(twoDArray, rowIndex)

var twoDArray = argument[0];
var rowIndex = argument[1];

var newArrayLength = array_length_2d(twoDArray, rowIndex);
var newArray;

for (var columnIndex = 0; columnIndex < newArrayLength; columnIndex++;) {
	newArray[columnIndex] = twoDArray[rowIndex, columnIndex];
}

return newArray;