<div class="row">
	<div id="main" role="main">
		<div class="col-md-5">
			<div class="sidebar-nav update-information">
				<h2 class="sr-only">Event information</h2>
				<dl>
					<dt>Date &amp; time</dt>
					<dd><time datetime="$Date">$Date.Format(d/m/Y)<% if $StartTime %> $StartTime.Nice<% if $EndTime %> - $EndTime.Nice<% end_if %><% end_if %></time></dd>
					<% if Location %>
						<dt>Location:</dt>
						<dd>$NiceLocation</dd>
					<% end_if %>
					<% if Terms %>
						<dt>Tags</dt>
						<dd>
							<ul class="unstyled update-tags">
								<% loop Terms %>
									<li class="label">$Name</li>
								<% end_loop %>
							</ul>
						</dd>
					<% end_if %>
				</dl>
			</div>
		</div>
		<div class="col-md-11">
			<% include Breadcrumbs %>
			<h1 class="page-header">$Title</h1>

			<div class="clearfix">
				$Content.RichLinks
			</div>
			$Form
			<p><a href="$Parent.Link">←  Back to the event listing</a></p>
			<% include RelatedPages %>
			$PageComments
			<% include PrintShare %>
			<% include LastEdited %>
		</div>
	</div>
</div>

