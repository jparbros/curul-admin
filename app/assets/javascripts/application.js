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
//= require_tree .
//= require jquery.tokeninput
//= require bootstrap.min
//= require jquery-ui.custom
//= require underscore
//= require tinymce-jquery
//= require bootstrap-datepicker
//= require jquery.flot.min
//= require jquery.flot.time

$(document).ready(function() {
  $('.leftmenu a').click(function(e){
      if($(this).siblings('ul').size() == 1){
        e.preventDefault();
          var submenu = $(this).siblings('ul');
          if($(this).hasClass('open')) {
              if($(this).parents('.leftmenu').hasClass('lefticon')) {
                  submenu.fadeOut();
              } else {
                  submenu.slideUp('fast');
              }
              $(this).removeClass('open');
          } else {
              if($(this).parents('.leftmenu').hasClass('lefticon')) {
                  submenu.fadeIn();
              } else {
                  submenu.slideDown('fast');
              }
              $(this).addClass('open');
          }
      }
  })
});

$(document).ready(function(){
  $(".alert-message .close").click(function(){
    $(".alert-message").alert('close');
  });

  $("#initiative_topic_tokens").tokenInput("/topics.json", {
      theme: "facebook",
      prePopulate: $("#initiative_topic_tokens").data("pre"),
      crossDomain: false
  });

  $("#initiative_presented_by_token").tokenInput("/representatives.json", {
      theme: "facebook",
      prePopulate: $("#initiative_presented_by_token").data("pre"),
      crossDomain: false
  });

  $("#representative_commission_tokens").tokenInput("/commissions.json", {
      theme: "facebook",
      prePopulate: $("#representative_commission_tokens").data("pre"),
      crossDomain: false
  });

  $("#initiative_commission_tokens").tokenInput("/commissions.json", {
      theme: "facebook",
      prePopulate: $("#initiative_commission_tokens").data("pre"),
      crossDomain: false
  });
  
  $("#search_commission_ids").tokenInput("/commissions.json", {
      theme: "facebook",
      crossDomain: false
  });
  
  $('#loader').ajaxStart(function() { $(this).show(); }).ajaxStop( function() { $(this).hide(); })
});