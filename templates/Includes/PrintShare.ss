<p class="pull-right printShare">
	<span id="print-placeholder"></span>

	<% if SiteConfig.AddThisProfileID %>
		<a class="addthis_button" href="http://www.addthis.com/bookmark.php?v=250&pubid=$SiteConfig.AddThisProfileID"><i class="glyphicon glyphicon-share-alt"></i>Share</a>
	<% end_if %>

	<% if $RSSLink %>
		<a href="$RSSLink"><i class="icon-rss"></i>Subscribe</a>
	<% else_if $DefaultRSSLink %>
		<a href="$DefaultRSSLink"><i class="icon-rss"></i>Subscribe</a>
	<% end_if %>

	<% if PdfLink %><a href="$PdfLink" class="pdf"><i class="icon-file"></i>Export PDF</a><% end_if %>
</p>
