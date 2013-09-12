<% if $VisibleCarouselItems %>
	<div id="myCarousel" class="carousel slide">
		
		<% if $VisibleCarouselItems.Count > 1 %>
			<ol class="carousel-indicators">
				<% loop $VisibleCarouselItems %>
					<li class="carousel-control<% if $Pos == 1 %> active<% end_if %>" data-slide-to="$Pos(0)" data-target="#myCarousel" tabindex="0">Carousel item $Pos</li>
				<% end_loop %>
			</ol>
		<% end_if %>

		<a href="#myCarousel" role="button" class="pause" tabindex="0" title="Pause/Play">
			<span class="glyphicon glyphicon-pause"></span>
			<span class="nonvisual-indicator">Play/Pause</span>
		</a>
		
		<div class="carousel-inner">
			<!-- Carousel items -->
			<% loop $VisibleCarouselItems %>
				<div class="<% if First %>active <% end_if %>item">
					<a<% if Link %> href="$Link.Link"<% end_if %>>
						$Image.CroppedImage(710, 503)
						<% if Caption %>
							<div class="carousel-caption">
								<% if Title %>
									<h4>$Title</h4>
								<% end_if %>
								<p>$Caption</p>
							</div>
						<% end_if %>
					</a>
				</div>
			<% end_loop %>
		</div>
		
		<% if $VisibleCarouselItems.Count > 1 %>
			<a class="left carousel-control" href="#myCarousel" data-slide="prev" tabindex="0" role="button" title="Previous">
				<!-- <i class="icon-chevron-left"></i> -->
				<span class="glyphicon glyphicon-chevron-left"></span>
				<span class="nonvisual-indicator">Previous</span>
			</a>
			<a class="right carousel-control" href="#myCarousel" data-slide="next" tabindex="0" role="button" title="Next">
				<!-- <i class="icon-chevron-right"></i> -->
				<span class="glyphicon glyphicon-chevron-right"></span>
				<span class="nonvisual-indicator">Next</span>
			</a>
		<% end_if %>

	</div>
<% end_if %>