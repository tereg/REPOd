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
//= require turbolinks
//= require_tree .

$(document).on("turbolinks:load", function(){
   $("#task-form").on("submit", "#new_post", function(event){
     event.preventDefault();
     var form = $(this);
     var url = form.attr("action");
     var method = form.attr("method");
     var data = form.serialize();
     $.ajax({
       url : url,
       method: method,
       data: data,
       dataType: 'json'
     }).done(function(response){
        var title = response.title
        var description = response.description
        var url = response.url
        var media_type = response.media_type
         $("#all-resources").find("ul").prepend("<h4><li><a href="+url+">"+title+"</a></li></h4>")
         $('#task-form').css("display","none");
     })
   })
});
