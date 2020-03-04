<#macro layout title,keywords,description>
<!DOCTYPE html>
<html lang="zh">
<head>
    <meta charset="UTF-8">
    <meta name="keywords" content="UePay,線上支付,線下支付,反掃支付,微信支付,支付寶"/>
    <meta name="description" content="${description!}" />
    <meta name="renderer" content="webkit">
    <meta name="author" content="${user.nickname!}" />

    <title>${title}</title>
    <link rel="stylesheet" href="//cdn.jsdelivr.net/npm/font-awesome@4.7.0/css/font-awesome.min.css" type='text/css'
          media='all'/>
    <link rel="stylesheet" href="${static!}/source/css/style.css?version=1.0">
    <link rel="stylesheet" href="${static!}/source/css/main.css?version=1.1">
    <script src="${static!}/source/js/jquery.js?version=1"></script>
    <script src="${static!}/source/js/main.js"></script>
</head>
<body>
<#include "head.ftl">
<div class="content">
    <div class="section">
        <div class="fix"></div>
        <#nested>
    </div>
</div>
<@global.footer />
</body>
</html>
</#macro>

