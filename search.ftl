<#include "module/macro.ftl">
<#import "functions.ftl" as fun>
<link rel="stylesheet" href="${static!}/source/css/search.css">
<@layout title="搜索：${keyword} | ${options.blog_title!}" keywords="${options.seo_keywords!}" description="${options.seo_description!}">
<div class="page">
    <div class="search-view main-content common-page clearfix">
        <div class="common-item">
            <div class="common-title">
                Search : ${keyword}
            </div>
            <div class="post-lists">
                <div class="post-lists-body">
                    <#if posts?? && posts.content?size gt 0>
                        <#list posts.content as post>
                            <div class="post-list-item">
                                <div class="post-list-item-container <@fun.randBgColor/>">
                                    <div class="item-label <@fun.randBgColor/>">
                                        <div class="item-title"><a href="${context!}/archives/${post.url!}">${post.title!}</a></div>
                                        <div class="item-meta clearfix">
                                            <div class="item-meta-ico <@fun.randBgIco/>" style="background: url(${static!}/source/images/bg-ico.png) no-repeat;background-size: 40px auto;"></div>
                                            <div class="item-meta-date"> ${post.createTime?string('MMM d,yyyy')} </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </#list>
                    <#else>
                        <div class="post-list-item">没有找到内容,请换别的关键字进行检索</div>
                    </#if>
                </div>
            </div>
        </div>
    </div>
</div>


</@layout>
