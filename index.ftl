<#--<#include "module/macro.ftl">-->
<#--<@layout title="${options.blog_title!}" keywords="${options.seo_keywords!}" description="${options.seo_description!}">-->
<#--<div class="home">-->
<#--    <#include "ad.ftl">-->
<#--</div>-->
<#--</@layout>-->
<#include "module/macro.ftl">
<@layout title="${options.blog_title!}" keywords="${options.seo_keywords!}" description="${options.seo_description!}">
    <div class="conduct-box">
        <img src="${static!}/source/images/bg.png" width="100%" height="100%" alt="">
        <img class="logo-text" src="${static!}/source/images/logo_text.png" width="308px" height="129px" alt="">
    </div>

    <div class="article-box">
    <div>
        <div class="title-box">
            <div class="category-prefix"></div>
            <div>支付能力</div>
        </div>
        <div class="article-list-box">
            <#list posts.content as post>
                <div class="article-item">
                    <a class="article-link" href="${post.fullPath}">
                        <div class="item-box">
                            <img src="${static!}/source/images/ico1.png" width="110px" alt="">
                            <h4 class="article-title">${post.title}</h4>
                        </div>
                    </a>
                </div>
            </#list>
        </div>
    </div>
</div>

</@layout>
