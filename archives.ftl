<#include "module/macro.ftl">
<@layout title="${options.blog_title!} | 開發文檔" keywords="${options.seo_keywords!}" description="${options.seo_description!}">
<link rel="stylesheet" href="${static!}/source/css/page.css?version=1">
<link rel="stylesheet" href="${static!}/source/css/archives.css?version=1">
<div class="page">
    <aside class="aside">
        <div class="fix"></div>
        <div class="dock">
            <ul>
                <@postTag method="latest" top="3">
                <#list posts as post>
                <li><a href="${context}/archives/${post.url!}">${post.title!}</a></li>
                </#list>
                </@postTag>
            </ul>
        </div>
    </aside>
    <div class="left"></div>
    <section class="ad-view">
        <#include "ad.ftl">
    </section>
</div>
</@layout>
