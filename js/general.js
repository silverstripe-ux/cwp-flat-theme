/*jslint browser: true*/
/*global $, jQuery*/

$(function() {
	"use strict";

	// Hello there! You can add in any of your site-specific code here.

	//Set height of carousel caption to 100% of container
	function CaptionHeight() {
		$('.carousel-caption').removeAttr('style');
		if($(window).width() > 1100){
			var carouselHeight = $('.carousel-inner').outerHeight();
			$('.carousel-caption').each(function(){
				$(this).height(carouselHeight);
			});
		}
	}

	function ShowSearchButton() {
		if($(window).width() <= 1100){
			$('.input-group-btn').hide();
			$('.search-query').focus(function(){
				$('.input-group-btn').show();
			}).blur(function(){
				$('.input-group-btn').hide();
			});
		} else {
			$('.input-group-btn').show();
		}
	}

	CaptionHeight();
	ShowSearchButton();
	
	$(window).resize(function(){
		CaptionHeight();
		ShowSearchButton();
	});
});

