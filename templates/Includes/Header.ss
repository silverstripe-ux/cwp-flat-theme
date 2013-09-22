<header class="container" role="banner">
	
	<% include SkipLinks %>
	
	<div class="row">
		<div class="col-md-5">
			<<% if ClassName=="HomePage" %>h1<% else %>div<% end_if %> class="brand">
				<% if SiteConfig.Logo %>
					<a title="Return to homepage" href="$BaseHref">
						<img src="$SiteConfig.Logo.URL" width="$SiteConfig.Logo.Width" height="$SiteConfig.Logo.Height" alt="$SiteConfig.Title logo" title="$SiteConfig.Title" />
						<span>$SiteConfig.Title</span>
					</a>
				<% else %>
					<a title="Return to homepage" href="$BaseHref">
						<img src="$ThemeDir/images/logo.png" width="53" height="60" title="My Department Logo" alt="My Department Logo" />
						<span>
							$SiteConfig.Title
						</span>
					</a>
				<% end_if %>
			</<% if ClassName=="HomePage" %>h1<% else %>div<% end_if %>>
		</div>
		<div class="col-md-11 nav-section">
			<div class="clearfix">
				<% if Translations %>
					<div class="clearfix">
						<div id="lang">
							<% loop Translations %>
								<% if Last != 1 %>
									<small><a href="$Link" role="button" lang="$Locale.RFC1766" hreflang="$Locale.RFC1766" title="Read this page in $Locale.Nice">$Locale.Nice /</a></small>
								<% else %>
									<small><a href="$Link" role="button" lang="$Locale.RFC1766" hreflang="$Locale.RFC1766" title="Read this page in $Locale.Nice">$Locale.Nice</a></small>
								<% end_if %>
							<% end_loop %>
						</div>
					</div>
				<% end_if %>
				<% if SearchForm %>
					<div class="row">
						<div class="col-md-5 col-md-offset-11">
							$SearchForm
						</div>
					</div>
				<% end_if %>
				<div class="clearfix">
					<% include MainNav %>
				</div>
			</div>
		</div>
	</div>
</header>