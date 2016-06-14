// start with a string 
// create a function that takes that string in as an arguement and then returns a reverse of that string
// the function could separate the string in to letters and then could add them back in the reveres order
// thinking it could split then reverse then join back.  Hoping it works just like Ruby

function reverse(string) {
	newString = string.split('').reverse().join('');
}

reverse("hello")
console.log(newString)


if (newString == "olleh") {
	console.log("great work");
}  else {
	console.log("that is really not the answer");
}
