// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery3
//= require popper
//= require bootstrap
//= require rails-ujs
//= require turbolinks
//= require ckeditor/init
//= require toastr
//= require_tree .


$(document).ready(function(){
	// options
	var speed = 500; //transition speed - fade
	var autoswitch = true; //auto slider options
	var autoswitch_speed = 5000; //auto slider speed

	// add first initial active class
	$(".slide").first().addClass("active");

	// hide all slides
	$(".slide").hide;

	// show only active class slide
	$(".active").show();

	// Next Event Handler
	$('#next').on('click', nextSlide);// call function nextSlide

	// Prev Event Handler
	$('#prev').on('click', prevSlide);// call function prevSlide

	// Auto Slider Handler
	if(autoswitch == true){
		setInterval(nextSlide,autoswitch_speed);// call function and value 4000
	}

	// Switch to next slide
	function nextSlide(){
		$('.active').removeClass('active').addClass('oldActive');
		if($('.oldActive').is(':last-child')){
			$('.slide').first().addClass('active');
		} else {
			$('.oldActive').next().addClass('active');
		}
		$('.oldActive').removeClass('oldActive');
		$('.slide').fadeOut(speed);
		$('.active').fadeIn(speed);
	}

	// Switch to prev slide
	function prevSlide(){
		$('.active').removeClass('active').addClass('oldActive');
		if($('.oldActive').is(':first-child')){
			$('.slide').last().addClass('active');
		} else {
			$('.oldActive').prev().addClass('active');
		}
		$('.oldActive').removeClass('oldActive');
		$('.slide').fadeOut(speed);
		$('.active').fadeIn(speed);
	}
});
