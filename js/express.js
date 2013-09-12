(function($) {
	$(document).ready(function() {

		$('.navbar-collapse')
			// .addClass('collapse')
			// .addClass('collapsed')
			.on('hidden', function(){
				$(this).addClass('collapsed');
				$(this).siblings('button').attr('aria-expanded', 'false');
			})
			.on('show', function(){
				$(this).removeClass('collapsed');
				$(this).siblings('button').attr('aria-expanded', 'true');
		});
			
		$('.navbar a .showChildren').click(function(e) {
			e.preventDefault();
			var oldOpen = $('.navbar .open');		
			$(this).closest('li').addClass('open');
			oldOpen.removeClass('open');
			return false;
		});


		// Don't let the Go! button submit the search form if it's empty.
		$('#SearchGroup input[type="submit"]').click(function(){
			var searchInput = $(this).siblings('input[type="search"]');
			var searchValue = $.trim(searchInput.val());
			if (searchValue.length == 0) {
				searchInput.focus();
				return false;
			}
		});

		$('form fieldset > div.field:odd').addClass('odd');


		// SITEMAP
		$('.sitemap').on('click', '.button', function() {
			var self = $(this);
			var target = $(self.attr('data-target'));

			// only do an ajax request if the content isn't loaded
			if(target.html().length == 0) {
				self.addClass('loading');

				$.ajax({
					url: self.attr('href'),
					data: { ajax: true }
				}).done(function(data) {
					target.html(data);
					self.removeClass('loading');
				});
			}

			self.toggleClass('open');
			
			if(self.hasClass('open')) {
				$(this).attr('title', 'Hide pages beneath this page').attr('aria-expanded', 'true');
				$(this).children('.linkText').replaceWith('<span class="linkText">Collapse section</span>');
				$(this).children('.glyphicon').addClass('glyphicon-minus');
				target.removeClass('collapse').addClass('collapsed');
			} else {
				$(this).attr('title', 'Show pages beneath this page').attr('aria-expanded', 'false');
				$(this).children('.linkText').replaceWith('<span class="linkText">Expand section</span>');
				$(this).children('.glyphicon').removeClass('glyphicon-minus');
				target.removeClass('collapsed').addClass('collapse');
			}

			return false;
		});

		// Print
		$('#print-placeholder').replaceWith('<button type="button" onclick="window.print(); return false;"><i class="glyphicon glyphicon-print"></i>Print</button>');

		// Carousel on the homepage.
		$('.carousel').carousel({
			interval: 8000,
			pause: ""
		});

		$('.carousel').on('click','a.pause',function(e){
			e.preventDefault();
			if($(this).closest('.carousel').hasClass('play')){
				$(this).closest('.carousel').carousel('cycle').removeClass('play');
				$(this).find('.glyphicon').removeClass('glyphicon-play').addClass('glyphicon-pause');
			}else{
				$(this).closest('.carousel').carousel('pause').addClass('play');
				$(this).find('.glyphicon').removeClass('glyphicon-pause').addClass('glyphicon-play');
			}
		});
		
		// Add additional title information to external links which open in an external window
		$('.content a[target="_blank"]').attr("title", $('a[target="_blank"]').attr("title")+" - This link will open in a new window");
		
	})
})(jQuery);
