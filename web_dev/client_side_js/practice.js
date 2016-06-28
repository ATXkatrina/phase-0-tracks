var element = document.getElementsByTagName("h1");

var el = element[1];

el.style.border = "3px solid red";

el.style.fontFamily = "times";

el.style.fontFamily = "arial";



var flowers = document.getElementsByTagName("img")[0];

function removePhoto(event){
  event.target.hidden = true;
}

flowers.addEventListener("click", removePhoto);