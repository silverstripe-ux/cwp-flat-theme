<% if $VisibleCarouselItems %>
	<div class="row">
		<div id="myCarousel" class="carousel slide">
			
			<% if $VisibleCarouselItems.Count > 1 %>
				<ol class="carousel-indicators">
					<% loop $VisibleCarouselItems %>
						<li class="carousel-control<% if $Pos == 1 %> active<% end_if %>" data-slide-to="$Pos(0)" data-target="#myCarousel" tabindex="0">Carousel item $Pos</li>
					<% end_loop %>
				</ol>
			<% end_if %>

			<% if $VisibleCarouselItems.Count > 1 %>
				<div class="carousel-interface">
					<div class="carousel-controls">
						<a class="left carousel-control" href="#myCarousel" data-slide="prev" tabindex="0" role="button" title="Previous">
							<span class="glyphicon glyphicon-chevron-left"></span>
							<span class="nonvisual-indicator">Previous</span>
						</a>
						<a href="#myCarousel" role="button" class="pause" tabindex="0" title="Pause/Play">
							<span class="glyphicon glyphicon-pause"></span>
							<span class="nonvisual-indicator">Play/Pause</span>
						</a>
						<a class="right carousel-control" href="#myCarousel" data-slide="next" tabindex="0" role="button" title="Next">
							<span class="glyphicon glyphicon-chevron-right"></span>
							<span class="nonvisual-indicator">Next</span>
						</a>
					</div>
				</div>
			<% end_if %>
			
			<div class="carousel-inner">
				<!-- Carousel items -->
				<% loop $VisibleCarouselItems %>
					<div class="<% if First %>active <% end_if %>item">
						<% if Link %><a href="$Link.Link"><% end_if %>
							<div <% if Caption %>class="col-md-11 carousel-image"<% end_if %>>
								$Image.CroppedImage(784, 450)
							</div>
							<% if Caption %>
								<div class="carousel-caption col-md-5">
									<% if Title %>
										<h4>$Title</h4>
									<% end_if %>
									<p>$Caption</p>
								</div>
							<% end_if %>
						<% if Link %></a><% end_if %>
					</div>
				<% end_loop %>
			</div>
		</div>
	</div>
<% end_if %>