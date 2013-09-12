<div class="row">
	<% include Breadcrumbs %>
</div>
<div class="row">
	<% if Menu(2) %>
		<div class="col-md-3">
			<% include SidebarNav %>
		</div>
	<% end_if %>
	<div class="main-wrap <% if Menu(2) %>col-md-9<% else %>col-md-12<% end_if %>">
		<div id="main" role="main">
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
