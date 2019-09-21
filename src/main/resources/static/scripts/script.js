$(".jumbotron-porsche").mouseover(function () {
    $('#jumbo-porsche').removeClass('col-lg-3');
    $('#jumbo-porsche').addClass('col-lg-12')
    $('#jumbo-benzer').hide();
    $('#jumbo-bmw').hide();
    $('#jumbo-maserati').hide();
    $("#sport").show();
    $("#text-sport").show();
});
$(".jumbotron-porsche").mouseout(function () {
    $('#jumbo-porsche').addClass('col-lg-3');
    $('#jumbo-porsche').removeClass('col-lg-12');
    $('#jumbo-benzer').show();
    $('#jumbo-bmw').show();
    $('#jumbo-maserati').show();
    $("#sport").hide();
    $("#text-sport").hide();
});

$(".jumbotron-benzer").mouseover(function () {
    $('#jumbo-benzer').removeClass('col-lg-3');
    $('#jumbo-benzer').addClass('col-lg-12');
    $('#jumbo-porsche').hide();
    $('#jumbo-bmw').hide();
    $('#jumbo-maserati').hide();
    $("#text-sportplus").show();
});
$(".jumbotron-benzer").mouseout(function () {
    $('#jumbo-benzer').addClass('col-lg-3');
    $('#jumbo-benzer').removeClass('col-lg-12');
    $('#jumbo-porsche').show();
    $('#jumbo-bmw').show();
    $('#jumbo-maserati').show();
    $("#text-sportplus").hide();
});

$(".jumbotron-bmw").mouseover(function () {
    $('#jumbo-bmw').removeClass('col-lg-3');
    $('#jumbo-bmw').addClass('col-lg-12');
    $('#jumbo-porsche').hide();
    $('#jumbo-benzer').hide();
    $('#jumbo-maserati').hide();
    $("#text-suv").show();
});
$(".jumbotron-bmw").mouseout(function () {
    $('#jumbo-bmw').addClass('col-lg-3');
    $('#jumbo-bmw').removeClass('col-lg-12');
    $('#jumbo-porsche').show();
    $('#jumbo-benzer').show();
    $('#jumbo-maserati').show();
    $("#text-suv").hide();
});

$(".jumbotron-maserati").mouseover(function () {
    $('#jumbo-maserati').removeClass('col-lg-3');
    $('#jumbo-maserati').addClass('col-lg-12');
    $('#jumbo-bmw').hide();
    $('#jumbo-porsche').hide();
    $('#jumbo-benzer').hide();
    $("#text-luxus").show();
});
$(".jumbotron-maserati").mouseout(function () {
    $('#jumbo-maserati').addClass('col-lg-3');
    $('#jumbo-maserati').removeClass('col-lg-12');
    $('#jumbo-bmw').show();
    $('#jumbo-porsche').show();
    $('#jumbo-benzer').show();
    $("#text-luxus").hide();
});

