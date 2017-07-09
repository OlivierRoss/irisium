// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

window.onload = function () {
    document.getElementById("champ-recherche").addEventListener("change", filtrer_evenements);
    console.log('ici');
};

function filtrer_evenements () {
    console.log('la');
    var filtre = new RegExp(document.getElementById("champ-recherche").value);
    var evenements = document.getElementsByClassName("evenement");

    for(var i = 0; i < evenements.length; i++) {
        if(filtre.test(evenements[i].textContent)){
            evenements[i].style.display = "none";
        }
        else {
            evenements[i].style.display = "block";
        }
    }
    
}
