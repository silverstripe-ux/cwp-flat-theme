/*jslint browser: true*/
/*global $, jQuery*/

$(function() {
	"use strict";

	// Hello there! You can add in any of your site-specific code here.

	//Set height of carousel caption to 100% of container
	var carouselHeight = $('.carousel-inner').outerHeight();
	$('.carousel-caption').height(carouselHeight);
});

