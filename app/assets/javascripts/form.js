// My slider code

//$(document).ready(function to_test() {
 // alert("I'm displaying an alert");
 // return 42;
//})


//$(function () {

//$('#Postponement').change(function () {
//    if ($("#NewWeddingDate").is(":hidden")) {
//     $("#NewWeddingDate").show("slow");
//    } else {
//      $("#NewWeddingDate").slideUp();
//   }
//  })
//})

//$(function () {

//$('#WillDivorce').change(function () {
//    if ($("#DivorceDate").is(":hidden")) {
//      $("#DivorceDate").show("slow");
//    } else {
//      $("#DivorceDate").slideUp();
//    }
//  })
//})

//$(function () {

//$('#OneDead').change(function () {
//    if ($("#WhoKillsWho").is(":hidden")) {
//      $("#WhoKillsWho").show("slow");
//    } else {
//      $("#WhoKillsWho").slideUp();
//    }
//  })
//})

$(document).ready(function () {
  if (2 >3) {
   alert("I'm displaying an alert");
 return 42;
};
})

$(document).ready(function () {

  var NewWeddingDate =$("#NewWeddingDate");
  var NewWeddingDate_div =$("#NewWeddingDate_div");

  $("#Postponement").change(function() {
    if ($(this).val() === 'Yes') {
     NewWeddingDate_div.show('slow'); //css('visibility', 'visible');
     } else {
     NewWeddingDate_div.hide('slow'); //css('visibility', 'hidden');
    }
}).trigger('change'); // added trigger to calculate initial state
})

$(document).ready(function () {

  $("#WillDivorce").change(function() {
    if ($(this).val() === 'Yes') {
     $("#DivorceDate_div").show('slow'); //css('visibility', 'visible');
     } else {
     $("#DivorceDate_div").hide('slow'); //css('visibility', 'hidden');
    }
}).trigger('change'); // added trigger to calculate initial state
})

$(document).ready(function () {

  $("#OneDead").change(function() {
    if ($(this).val() === 'Yes') {
     $("#WhoKillsWho_div").show('slow'); //css('visibility', 'visible');
     } else {
     $("#WhoKillsWho_div").hide('slow'); //css('visibility', 'hidden');
    }
}).trigger('change'); // added trigger to calculate initial state
})


//$(document).ready(function () {

//  var Postponement = $("#Postponement").val();
//  var NewWeddingDate =$("#NewWeddingDate");
//  var NewWeddingDate_div =$("#NewWeddingDate_div");

//  $(Postponement).change(function() {
//    if (this === 'Yes') {
//    $(NewWeddingDate).addClass('input small');
//     $(NewWeddingDate_div).show();
 //    $(NewWeddingDate).removeClass('hide-me');
//     } else {
//     $(NewWeddingDate_div).hide();
 //   }
//}).trigger('change'); // added trigger to calculate initial state
//})
