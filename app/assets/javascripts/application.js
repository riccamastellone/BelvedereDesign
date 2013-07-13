// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
$(function() {
    correggiAltezza();
    if(window.location.hash) {
        showDesigner(parseInt(window.location.hash.substring(1)));
    }
});
$(window).resize(function() {
    correggiAltezza();

});
function correggiAltezza() {
    if($('.designers .container').size() > 0) {
        if($('.designers .firstcolumn').height() < ($(window).height()-(44+183))) {
            $('.designers .container').height(($(window).height()-(44+183)));
            $('.designers .firstcolumn').height($(window).height()-(44+183));
            if($('.designers .secondcolumn').size()>0) {
                $('.designers .secondcolumn').height($(window).height()-(44+183));
            }
        }

    }
}

function showDesigner(id) {
    $('#loader').fadeIn("fast");
    window.location.hash = id;
    $.get("/designers/ajax/" + id,
        function(data) {
            var colonna =  $('.designers .secondcolumn');
            $('.designers .container').css('background-image','url(' + data.immagine + ')');
            $('.designers .container').css('background-position','right');
            $('.designers .container').css('background-size','auto');
            colonna.fadeIn();
            colonna.html("<h2>" + data.nome + "</h2>");
            colonna.append("<p>" + data.descrizione + "</p>");
            if(data.prodotti.length > 0) {
            colonna.append("<h3>Prodotti disegnati</h3>");

            for (var el in data.prodotti) {
                var html = "<div>";
                html += "<h5>" +  data.prodotti[el].prodotto.name + "</h5>";
                for (var imm in data.prodotti[el].immagini) {
                    html += "<p>" + data.prodotti[el].immagini[imm].image_url + "</p>";
                }
                html += "</div>";
                colonna.append(html);
            }
            }

            $('#loader').fadeOut();
        }, "json").fail(function() {
            alert("Designer non esistente");
            $('#loader').fadeOut();
        });
}