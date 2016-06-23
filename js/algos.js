// NOTE: still working out release 2 on this one...

// RELEASE 0

// define a function that takes an array as an argument
  // define a variable with an empty string (this will hold the longest string)
  // define a variable equal to 0
  // iterate through the array
    // if the length of a string in the array has a length greater than 0, assign it to the variable

function findLargest(array){
  var longestString = '';
  for (var i = 0; i < array.length; i++){
    if (array[i].length > longestString.length){
      longestString = array[i];
    }
  }
  console.log(longestString);
}


// Release 1
//declare a function that takes two objects as its argument
  //iterate through the first object
    // for each iteration, iterate through the second object
    // if a key/value pair is equal to the cooresponding one.
    // return true
    // otherwise, return false

function equalKey(objectA, objectB){
  for (var i = 0; i < objectA.length; i++){
    for (var x = 0; x < objectB.length; x++){
      if  (objectA[i] == objectB[x]){
        return true;
      }
      else {
        return false;
      }
    }
  }
}


function equalKey(objectA, objectB){
  for (var i in objectA){
    if (objectA[i] == objectB[i]){
      return true;
    }
    else{
      return false;
    }
  }
}



// Release 2
// name a function that takes an integer as an argument
  // name a variable that holds an empty array
  // name a variable that holds the alphabet
  // create a variable that holds an empty string
  // create a loop that runs while less than 10
    // assign a random index of alphabeth to the empty string to create a 'word'
  // create a loop that runs while less than the integer argument
    // push the new string into the empty array
  // return the new array of strings

function buildArray(int){
  var newArray = [];
  var alpha = "abcdefghijklmnopqrstuvwxyz";
  var str = "";
  var randTen = Math.floor(Math.random()*10+1);
  var randAlphaIndex = Math.floor(Math.random()*alpha.length+1);
  for (var x = 0; x <= int; x++){
    for (var i = 0; i <= randTen; i++){
    str += alpha[randAlphaIndex];
    }
    newArray.push(str);
  }
  console.log(newArray);
}


// DRIVER CODE

// Release 0
findLargest(["long phrase","longest phrase","longer phrase"]);
findLargest(["nine","forty","one million"]);

// Release 1
var Steven = {name: "Steven", age: 54};
var Tamir = {name: "Tamir", age: 54};

console.log(equalKey(Steven, Tamir));

// Release 2
// buildArray(9);
