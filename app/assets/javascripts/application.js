// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require tether
//= require turbolinks
//= require_tree .
//= require bootstrap-sprockets


$(document).on('turbolinks:load', function() {

  var $outstandings = $('[name="group[outstanding_attendees]"]');


  $outstandings.each(function() {
    var $outstanding = $(this);
    var $attendees = $outstanding.siblings('[name="group[no_of_entrees]"]');
    $attendees.val($outstanding.val());
  });


    var $ul = $('#users');
    var $lis = $ul.find('li');

    $(function() {
      
      $lis.sort(function(a, b) {
        
      return $(a).data('searchstring') > $(b).data('searchstring');
      
      }).each(function() {
        $(this).appendTo($ul);
      });

      return false;
    });

    $('#search').on('keyup', function() {
      var input = this;
      $lis.each(function() {
        var searchString = $(input).val().toLowerCase();
        var textToMatch = $(this).data('searchstring').toLowerCase();

        if(textToMatch.match(searchString)) {
          $(this).show();
        } else {
          $(this).hide();
        }
      });
    });


    $('#new_event').submit(function() {
        if ($.trim($("#event_name").val()) === "" || $.trim($("#event_description").val()) === "" || $.trim($("#event_brand_logo").val()) === "" || $.trim($("#event_allocation").val()) === "") {
            
            
            alert('Sorry! You did not fill out one of the fields');
            return false;
        }
    });


    $('body').css('display', 'none');

    $('body').fadeIn(1200);


    $('.link').click(function() {

    event.preventDefault();

    newLocation = this.href;

    $('body').fadeOut(100, newpage);

    });

    function newpage() {

    window.location = newLocation;

    }
    
    // var remaining_guests = $('.entrees').val();
    // console.log(remaining_guests)
    // if (remaining_guests == 0) {

    //   $(".green-admit-btn").css('background-color','red');
  
    // }


});