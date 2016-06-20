// name a function that takes a word as argument
//   create variable that's an empty string
//   for each index of the word, add it to the string
//   return/print the new word

function reverse(word){
  var str = "";
  for (var i=(word.length-1); i>=0; i--){
    str += word[i];
  }
   if(100%2==0){
  console.log(str);
  }
}

reverse("hello");


