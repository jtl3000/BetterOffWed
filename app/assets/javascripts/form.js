// My slider code

// $(function to_test() {
//    alert("I'm displaying an alert");
//    return 42;
//  })


$(function () {

$('#Postponement').change(function () {
    if ($("#NewWeddingDate").is(":hidden")) {
      $("#NewWeddingDate").show("slow");
    } else {
      $("#NewWeddingDate").slideUp();
    }
  })
})

$(function () {

$('#WillDivorce').change(function () {
    if ($("#DivorceDate").is(":hidden")) {
      $("#DivorceDate").show("slow");
    } else {
      $("#DivorceDate").slideUp();
    }
  })
})

$(function () {

$('#OneDead').change(function () {
    if ($("#WhoKillsWho").is(":hidden")) {
      $("#WhoKillsWho").show("slow");
    } else {
      $("#WhoKillsWho").slideUp();
    }
  })
})

