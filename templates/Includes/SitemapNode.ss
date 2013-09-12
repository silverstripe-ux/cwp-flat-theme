<% if Children %>

	<%-- Should ideally be a button --%>
	<div class="page-toggle">
		<a href="{$CurrentPage.Link}page/$ID<% loop Parents %>$ID<% end_loop %>" role="button" class="button" data-toggle="collapse" data-target="#children-$ID" aria-controls="children-$ID" aria-expanded="false" title="Show pages beneath this page">
			<span class="linkText">Expand section</span>
			<span class="glyphicon glyphicon-plus"></span>
		</a>
	</div>
<% end_if %>

<a href="$Link" class="sitemap-link">
	<span class="sitetree-icon">
	<img src="{$baseURL}cwp/<% if $pageIcon %>$pageIcon<% else %>images/icons/sitetree_images/page.png<% end_if %>" alt="$MenuTitle"></span>
	$MenuTitle
</a>

<div id="children-$ID" class="collapse"></div>