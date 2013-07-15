//= require jquery
//= require jquery_ujs

var geocoder;
var map;


$(function() {
    correggiAltezza();
    if(window.location.hash && $('.designers .container').size() > 0) {
        showDesigner(parseInt(window.location.hash.substring(1)));
    }
    if(window.location.hash && $('.prodotti .container').size() > 0) {
        showCategoryList(parseInt(window.location.hash.substring(1)));
    }
    $('#cercaShowroom').click(function() {
        cercaShowroom();
    })

    if($(window).width() < 1400) {
        $('header nav li').css('padding-left','5%')
        $('header ul li:first-child').css('padding-left','0')
    }

});
$(window).resize(function() {
    correggiAltezza();

});

function initialize() {
    geocoder = new google.maps.Geocoder();
    var latlng = new google.maps.LatLng(45.4654542, 9.186515999999983);
    var mapOptions = {
        zoom: 14,
        center: latlng,
        mapTypeId: google.maps.MapTypeId.ROADMAP
    }
    map = new google.maps.Map(document.getElementById('map-canvas'), mapOptions);
}


function codeAddress(address) {
    geocoder.geocode( { 'address': address}, function(results, status) {
        if (status == google.maps.GeocoderStatus.OK) {
            map.setCenter(results[0].geometry.location);
            var marker = new google.maps.Marker({
                map: map,
                position: results[0].geometry.location
            });
        } else {
            alert('Geocode was not successful for the following reason: ' + status);
        }
    });
}
function cercaShowroom() {
    $('#loader').fadeIn("fast");
    $.get("/showroom/ajax/",
        { "indirizzo": $('input[name=indirizzo]').val() },
        function(data) {
            var html = "";
            for(var key in data) {
                if(data[key].distance < 1)  {  // Usiamo la distanza in metri

                   distanza = Math.round(data[key].distance*1000) + " m";
                } else {   // Arrotondiamo ai km
                    distanza =  Math.round(data[key].distance) + " km";
                }
               html += "<p><a id=\"sr-" + data[key].id + "\" href='javascript:selezioneSR(" + data[key].id + ");'>" + data[key].name + " - " + distanza;
               html += "</a><br><span class='subtitle'>" + data[key].address + "</span></p>";
            }
            if(data.length == 0 ) {
                  html = "<p>Siamo spiacenti,<br>non abbiamo nessuno showroom vicino a te</p>"
            }
            $('#loader').fadeOut("fast");
            $('.showroom-list').html(html);
        }, "json");
}
function selezioneSR(id) {
    $('.srlist a').css("text-decoration",'none');
    $('#loader').fadeIn("fast");
    $.get("/showroom/detail/ajax/" + id,
        function(data) {
            console.log(data)
            var colonna =  $('.prodotti .filled');
            var html = "<h2>" + data.name +"</h2>";
            html += "<div class='sr-details'><div><p>" + data.description +  "</p></div>";
            html += "<div><p>" + data.address +  "</p></div></div><div id=\"map-canvas\"></div>";
            colonna.css('width',($(window).width()-$('.firstcolumn').width()- 120) + 'px');

            colonna.html(html).fadeIn();
            initialize();
            $('#sr-' + id).css("text-decoration",'underline');
            codeAddress(data.address );
            $('.prodotti .container').css('background-image','none');
            $('.prodotti .container').css('background','#101010');
            $('#loader').fadeOut("fast");
        }, "json");

}
function correggiAltezza() {
    if($('.designers .container').size() > 0) {
        if($('.designers .firstcolumn').height() < ($(window).height()-(44+183))) {
            $('.designers .container').height(($(window).height()-(44+183)));
            $('.designers .firstcolumn').height($(window).height()-(44+183));
            if($('.designers .secondcolumn').size()>0) {
                $('.designers .secondcolumn').css('min-height',$(window).height()-(44+183))
                $('.designers .secondcolumn').css('height','auto')

            }
        }

    }

    if($('.prodotti .container').size() > 0) {
        if($('.prodotti .firstcolumn').height() < ($(window).height()-(44+183))) {
            $('.prodotti .container').height(($(window).height()-(44+183)));
            $('.prodotti .firstcolumn').height($(window).height()-(44+183));
            if($('.prodotti .secondcolumn').size()>0) {
               $('.prodotti .secondcolumn').height($(window).height()-(44+183));
            }
            if($('.prodotti .filled').size()>0) {
                $('.prodotti .filled').height($(window).height()-(44+183));
            }
        }

    }
}

function showDesigner(id) {
    $('#loader').fadeIn("fast");
    $('.deslist h5').css("text-decoration",'none');     // Desottolineamo tutti i designers
    window.location.hash = id;
    $.get("/designers/ajax/" + id,
        function(data) {
            var colonna =  $('.designers .secondcolumn');

            // Mettiamo la foto del designer come sfondo
            $('.designers .container').css('background-image','url(' + data.immagine + ')');
            $('.designers .container').css('background-position','right center');
            $('.designers .container').css('background-size','contain');

            colonna.fadeIn();
            colonna.html("<h2>" + data.nome + "</h2>");
            colonna.append("<p>" + data.descrizione + "</p>");

            // Visualizziamo i prodotti legati a questo designer  solo se ce ne sono
            if(data.prodotti.length > 0) {
            colonna.append("<h3>Prodotti disegnati</h3>");
            for (var el in data.prodotti) {
                if( data.prodotti[el].immagini[0] != undefined)  {  // Nel caso il prodotto non abbia immagini mostro solo il nome
                    var html = "<a href=\"/product/" + data.prodotti[el].prodotto.id + "\"><img class=\"minuatura-prodotto\" src=\"/data/prodotti/" + data.prodotti[el].immagini[0].image_url + "\" title=\"" +  data.prodotti[el].prodotto.name + "\"></a>";
                }  else {
                    var html = "<a href=\"/product/" + data.prodotti[el].prodotto.id + "\">" +  data.prodotti[el].prodotto.name + "</a>"
                }


                colonna.append(html);
                }
            }
            $('#des-' + id).css("text-decoration",'underline');
            $('#loader').fadeOut();
            correggiAltezza()
        }, "json").fail(function() {
            alert("Designer non esistente");
            $('#loader').fadeOut();
        });
}




function showCategoryList(id) {
    window.location.hash = id;
    $('#loader').fadeIn("fast");   // Visualizziamo il loader
    $('.catlist h5').css("text-decoration",'none');     // Desottolineamo tutte le categorie
    $.get("/product/ajax/category/" + id,
        function(data) {
            var colonna =  $('.prodotti .secondcolumn');
            colonna.html("<h1>Prodotti</h1>");
            if(data.length <= 0) { // Nessun prodotto per questa categoria
                alert("Nessun prodotto per questa categoria");
                colonna.fadeOut();
            } else {    // Abbiamo prodotti!
            colonna.fadeIn();
            $('#cat-' + id).css("text-decoration",'underline');    // Sottlineiamo la categoria selezionata
            for (var el in data) {
                colonna.append("<h5><a href='/product/" + data[el].id + "'>" + data[el].name + "</a></h5>");
                }
            }

            $('#loader').fadeOut();

        }, "json").fail(function() {     // In caso di errore
            alert("Categoria non esistente");
            $('#loader').fadeOut();
            colonna.fadeOut();
        });
}

