<div class="row">
	<% include Breadcrumbs %>
	<div class="col-3">
		<div class="sidebar-form well">
			<div id="{$DataClass}_searchform" class="searchForm">
				<h6>Search Filter</h6>
				$RegistryFilterForm
			</div>
		</div>
	</div>
	<div class="col-9">
		<div id="main" role="main">
			<h1 class="page-header">$Title</h1>

			<div class="clearfix">
				$Content.RichLinks
			</div>

			<div id="{$DataClass}_results" class="resultsContainer">
				<% if RegistryEntries %>
					<table class="results" summary="Search results for $DataClass">
						<thead>
							<tr>
								<% loop Columns %>
									<th><a href="$Top.QueryLink&amp;Sort={$Name}&amp;Dir={$Top.OppositeDirection}#results">$Title</a></th>
								<% end_loop %>
							</tr>
						</thead>
						<tbody>
							<% loop RegistryEntries %>
								<tr class="<% if FirstLast %>$FirstLast <% end_if %>$EvenOdd">
									<% loop Columns %>
										<td><% if Link %><a href="$Link">$Value</a><% else %>$Value<% end_if %></td>
									<% end_loop %>
								</tr>
							<% end_loop %>
						</tbody>
					</table>

					<% if RegistryEntries.MoreThanOnePage %>
						<div class="pagination">
							<ul id="PageNumbers">
								<% if RegistryEntries.NotFirstPage %>
									<li class="prev"><a href="$RegistryEntries.PrevLink" title="View the previous page">&lt;</a></li>
								<% end_if %>
								<% loop RegistryEntries.PaginationSummary(5) %>
									<% if CurrentBool %>
										<li class="active"><a href="$Link" title="View page number $PageNum">$PageNum</a></li>
									<% else_if PageNum %>
										<li><a href="$Link" title="View page number $PageNum">$PageNum</a></li>
									<% else %>
										<li><a><span class="disabled">...</span></a></li>
									<% end_if %>
								<% end_loop %>
								<% if RegistryEntries.NotLastPage %>
									<li class="next"><a href="$RegistryEntries.NextLink" title="View the next page">&gt;</a></li>
								<% end_if %>
							</ul>
						</div>
					<% end_if %>
				<% else %>
					<p class="noResults">No results to show.</p>
				<% end_if %>
				<div class="resultActions">
					<% if RegistryEntries %>
						<a class="export" href="$Link(export)?$AllQueryVars" title="Export all results to a CSV spreadsheet file">Export results to CSV</a>
					<% end_if %>
					<a class="historyFeedLink" href="registry-feed/latest/{$DataClass}" title="View imported data history">View imported data history</a>
				</div>
				<% include PrintShare %>
			</div>
		</div>
	</div>
</div>