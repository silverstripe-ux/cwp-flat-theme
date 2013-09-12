<header class="container" role="banner">
	<div class="clearfix">
		<% if Translations %>
			<div id="lang" class="btn-group btn-group-xs">
				<% loop Translations %>
					<a href="$Link" role="button" class="btn btn-default" lang="$Locale.RFC1766" hreflang="$Locale.RFC1766" title="Read this page in $Locale.Nice">$Locale.Nice</a>
				<% end_loop %>
			</div>
		<% end_if %>
	</div>
	<% include SkipLinks %>

	<div class="row">
		<div <% if SearchForm %>class="col-md-9"<% end_if %>>
			<<% if ClassName=="HomePage" %>h1<% else %>div<% end_if %> class="brand">
				<% if SiteConfig.Logo %>
					<a title="Return to homepage" href="$BaseHref" style="padding-left: {$SiteConfig.Logo.Width}px; height: {$SiteConfig.Logo.Height}px; min-height: {$SiteConfig.Logo.Height}px;">
						<img src="$SiteConfig.Logo.URL" width="$SiteConfig.Logo.Width" height="$SiteConfig.Logo.Height" alt="$SiteConfig.Title logo" title="$SiteConfig.Title" />
						<span>$SiteConfig.Title</span>
					</a>
				<% else %>
					<a title="Return to homepage" href="$BaseHref" style="padding-left: 105px; height: 119px; min-height: 119px;">
						<img src="$ThemeDir/images/logo.png" width="105" height="119" title="My Department Logo" alt="My Department Logo" />
						<span>
							$SiteConfig.Title
						</span>
					</a>
				<% end_if %>
			</<% if ClassName=="HomePage" %>h1<% else %>div<% end_if %>>
		</div>

		<% if SearchForm %>
			<div class="col-md-3">
				$SearchForm
			</div>
		<% end_if %>
	</div>
</header>