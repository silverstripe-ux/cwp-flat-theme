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

	CaptionHeight();
	$(window).resize(function(){
		CaptionHeight();
	});
});

