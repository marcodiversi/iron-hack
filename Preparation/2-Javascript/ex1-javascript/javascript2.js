// Write a function that receives an array of names and returns them in a string with , 
// between them. The final two must be separated by and

function prepare(array) {
   var nameString = "";
   for(var i = 0; i < array.length; i++) {       


        // if it is not the element before the last one, add a comma
        if ((i < array.length-2)) {
            // take the element on position i. arrays start on position 0
            nameString = nameString + array[i] + ", ";
            // a short version would be nameString += array[i] + ", ";
        } 
        // if it IS the element before the last one, add and
        else if (i === array.length -2) {
           nameString = nameString + array[i] + " and ";
        } 
        // the only uncovered element is the last one, therefore an else is enough
        else {
           nameString = nameString + array[i];
        }
    }
    // finally you  have to return the final string
    return nameString;
}

names = [ "Canada", "Mexico", "Turkey", "Japan" ];

prepare(names)