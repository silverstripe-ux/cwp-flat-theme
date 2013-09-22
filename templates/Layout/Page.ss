<div class="row">
	<% if Menu(2) %>
		<div class="col-md-5">
			<% include SidebarNav %>
		</div>
	<% end_if %>
	<div class="main-wrap <% if Menu(2) %>col-md-11<% else %>col-md-16<% end_if %>">
		<div id="main" role="main">
			<% include Breadcrumbs %>
			<h1 class="page-header">$Title</h1>

			<div class="clearfix">
				$Content.RichLinks
			</div>
			$Form
			<% include RelatedPages %>
			$PageComments
			<% include PrintShare %>
		</div>
		<% include LastEdited %>
	</div>
</div>
