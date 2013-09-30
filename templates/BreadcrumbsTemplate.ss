<% if Pages %>
	<ol class="breadcrumb">
		<li class="first"><a href="$Baseref">Home</a> </li>
		<% loop Pages %>
			<% if Last %>
				<li class="active sr-only">$Title.XML</li>
			<% else %>
				<li><a href="$Link">$MenuTitle.XML</a> </li>
			<% end_if %>
		<% end_loop %>
	</ol>
<% end_if %>