<#include "/WEB-INF/view/inc.ftl"/>
<@html>
<@head></@head>

<@bsbody js='blog'>
	<div class="container">
		<div class="row">
			<div class="col-xs-12 col-sm-9 col-md-9 col-lg-9">
				<#list blogs as blog>
					<blockquote>
					  <p><a href="${base}/blog/fore/detail/${blog.id}">${blog.article_title}</a></p>
					  <footer><strong>${blog.cdate}</strong></footer>
					</blockquote>
				</#list>
			</div>
			<div class="hidden-xs col-sm-3 col-md-3 col-lg-3">
				<div class="list-group">
					<#if blogTypeId??>
						<a href="${base}/blog/fore" class="list-group-item">所有文章</a>
					<#else>
						<a href="${base}/blog/fore" class="list-group-item active">所有文章</a>
					</#if>
					<#list blogTypes as type>
						<a href="${base}/blog/fore/${type.id}" class="list-group-item <#if blogTypeId?? && blogTypeId == type.id>active</#if>">${type.type_name}</a>
					</#list>
				</div>
			</div>
		</div>
	</div>
</@bsbody>
</@html>