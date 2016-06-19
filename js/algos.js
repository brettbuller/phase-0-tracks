// Release 0: Find the longest Phrase:

// *create an array and add a function that takes the values
// and returns the longest word or phrase in the array.
// so take the the first string and put it in new array. 
// for statement: compare through array and if new string is more than first string replace, 
// then compare next and replace if >. then print the variable to get longest word

function findLongest(arrayOfStrings) {
  var longestString = [];

  longestString.push(arrayOfStrings[0]);

  for (var i = 1; i < arrayOfStrings.length; i++) {
    if (longestString[0].length < arrayOfStrings[i].length) {
      longestString[0] = arrayOfStrings[i];
    }
  }
    return longestString;
}

// driver code 
var arrayOfStrings = ["chase", "pumpkin", "maudie", "Gilfoyle", "Ehrlich Bachman"];
findLongest(arrayOfStrings)

// Release 1: Find the Key-Value Match
// goal: write a function that takes two objects and checks to see if the objects share at least one 
// key-value pair.

function objectCheck(obj1,obj2) {
// keys in obj1
  for (key in obj1) {
    var key1 = key;
  }
// keys in obj2
  for (key in obj2) {
    var key2 = key;
  }
  // does this even work?  
  if (key1 == key2) {
    if ((obj1[key]) == (obj2[key])) {
          console.log(true);
          return true;
        } else {
          console.log(false);
          return false;
    }
  // return false
  } else {
    console.log(false);
    return false;
  }
}

// driver code 
var obj1 = {name: "Steven", age: 54};
var obj2 = {name: "Tamir", age: 54};
objectCheck(obj1, obj2);

// Release 3 
// goal: build a random word generator that builds our an array of random length

function totesRando(arrayOfWords) {
  wordCollection = [];
  // Create given number of words
  for (var i = 0; i < arrayOfWords; i++) {
    // Build random word
    var dictionary = ['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j','k', 'l','m','n','o','p', 'q','r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z'];
    // Randomly created words can be between 1-10 characters long
    var numOfChars = Math.floor(Math.random() * (10)) + 1;
    var letters = [];
    for (var k = 0; k <= numOfChars; k++) {
      letter = dictionary[Math.floor(Math.random() * dictionary.length)];
      letters.push(letter);
    }
    var word = letters.join('');

    wordCollection.push(word);
  }

   console.log(wordCollection);
}

// driver code 
totesRando(4)

i = 0;
while (i <= 10) {

    var arr = totesRando(5);

    console.log(arr);

    var longWord = findLongest(arr);

    console.log(longWord);
    i++;
}

