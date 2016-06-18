var colors = ["blue", "orange", "red", "green"];

var horseNames = ["Gimpy", "Ed", "Lightening", "Margret"];


colors.push("purple");
//console.log(colors);

horseNames.push("Satin");
//console.log(horseNames);


// Create empty object (var name = {})
// Var will be index of array that will reference a place in the array
// Var index will the index of the horse array that we'll push into key of new object
// Another var that will reference index of colors into value of new object

function assignHorse(horses, horseColors) {
 var coloredHorses = {};
 for (var i = 0; i < horses.length; i++) {
   coloredHorses[horses[i]] = horseColors[i];
 }
 console.log(coloredHorses);
}

assignHorse(horseNames, colors);


function car(make, fourDoor) {
  console.log("Our new car: "+ make + ", Four door: "+ fourDoor);
};

function drives() {
    return "Vroom, vroom!"
  };

newCar = new car("Dodge", true);
newCar.drives;

// my pair and I were having a hard time on how to get the drives function to work with the car...