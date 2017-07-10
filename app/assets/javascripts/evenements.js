// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

window.onload = function () {

    if(window.location.pathname == "/evenements") {
        document.getElementById("champ-recherche").addEventListener("keyup", filtrer_evenements);
    }

};

function filtrer_evenements () {

    var filtre = new RegExp(document.getElementById("champ-recherche").value);
    var evenements = document.getElementsByClassName("evenement");

    for(var i = 0; i < evenements.length; i++) {
        evenements[i].style.display = filtre.test(evenements[i].textContent) ? "block" : "none";
    }
    
}
