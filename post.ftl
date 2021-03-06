<#include "module/macro.ftl">
<@layout title="${options.blog_title!} |  ${post.title!}" keywords="${options.seo_keywords!}" description="${options.seo_description!}">
<link rel="stylesheet" href="${static!}/source/css/page.css?version=1.3">
<link rel="stylesheet" href="${static!}/source/css/article.css?version=1">
<link rel="stylesheet" href="${static!}/source/css/highlight.css?version=1">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/katex@0.11.1/dist/katex.min.css" integrity="sha384-zB1R0rpPzHqg7Kpt0Aljp8JPLqbXI3bhnPWROx27a9N0Ll6ZP/+DiW/UqRcLbRjq" crossorigin="anonymous">
<script src="${static!}/source/js/highlight.js?version=1"></script>
<script src="${static!}/source/js/article.js?version=1.8"></script>
<script defer src="https://cdn.jsdelivr.net/npm/katex@0.11.1/dist/katex.min.js" integrity="sha384-y23I5Q6l+B6vatafAwxRu/0oK/79VlbSz7Q9aiSZUvyWYIYsd+qj+o24G5ZU2zJz" crossorigin="anonymous"></script>
<script defer src="https://cdn.jsdelivr.net/npm/katex@0.11.1/dist/contrib/auto-render.min.js" integrity="sha384-kWPLUVMOks5AQFrykwIup5lo0m3iMkkHrD0uJ4H5cjeGihAutqP0yW0J6dpFiVkI" crossorigin="anonymous"></script>
<div class="page">
    <aside class="aside">
        <div class="article-dock">
        </div>
    </aside>
    <div class="left"></div>
    <section class="article">
        <div class="full-text">
            <div>${post.formatContent!}</div>
        </div>
    </section>
</div>
<script>
    document.addEventListener("DOMContentLoaded", function() {
        document.querySelectorAll('pre code').forEach(function (block) {
            hljs.highlightBlock(block);
        });
        renderMathInElement($('.full-text')[0], {
            delimiters: [
                {left: "$$", right: "$$", display: true},
                {left: "$", right: "$", display: false},
                {left: "\\(", right: "\\)", display: false},
                {left: "\\[", right: "\\]", display: true}
            ]
        });
    });
</script>
</@layout>