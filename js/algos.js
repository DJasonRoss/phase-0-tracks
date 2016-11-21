
// RELEASE 0: LONGEST PHRASE
//
//
// i need to loop through the array of names 
// i need to count the length of each item in the array
// i need to store each item with it's number value
// return the item with the highest value

// var myStringArray = ["long phrase","longest phrase","longer phrase"];
//
// STARTED HERE, THOUGHT THIS WAS THE ROAD I NEEDED.
// var arrayLength = myStringArray.length;
// var newArrayOrder = [];
// for (var i = 0; i < arrayLength; i++) {
//     console.log(myStringArray[i].length);
//     newArrayOrder.push(myStringArray[i]);    
// }

// THEN I REMEMBERED USING .SORT IN RUBY

function length_sorter(array){
  array.sort(function(a, b){
  return b.length - a.length;
  });
  console.log(array[0]);
}

  
console.log(length_sorter(["Chocolate", "Four", "Eleven"]));




// RELEASE 1: KEY VALUE MATCH
// 
// matcher function needs two hash params
// need to compare keys to keys and values to values
// need to return true if match or else false.
//
//
//
//

function matcher(hash01, hash02) {
  if (hash01.name == hash02.name || hash02.age == hash01.age) {
  return true;
  }
  else {
  return false;
  }

}
  
  
matcher({name: "Steven", age: "52"}, {name: "Charlie", age: "54"} );
matcher({name: "Steven", age: "54"}, {name: "Charlie", age: "54"} );




// RELEASE 2: GENERATE RANDOM TEST DATA
// 
// i need a function that takes an integer
// i need an array of letters
// i need to generate words * the length of the parameter 
// i need to push the generated letters into an array
// i need to return the array
//
//
//
//


function builder(length){
	var holder_array = [];
	var possible = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz";
	while (holder_array.length < length) {
		var srt = "";
		var rand10 = Math.floor(Math.random() * 10);
		for (var i = 0; i <= rand10; i++){
			srt += possible[Math.floor(Math.random() * possible.length)];
		}
		holder_array.push(srt);
	}
	return holder_array;
}

for (var i = 0; i < 10; i++) {
    array = builder(5);
    console.log(array);
    word = length_sorter(array);
    console.log(word);
}
