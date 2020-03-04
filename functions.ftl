<#-- 随机颜色 -->
<#macro randBgColor>
    <#assign bgColor=['blue','purple','green','yellow','red','orange']/>
    ${bgColor[randomMethod(0,6)]}
</#macro>

<#-- 随机图标 -->
<#macro randBgIco>
    <#assign bgColor=['book','game','note','chat','code','image','web','link','design','lock']/>
    ${bgColor[randomMethod(0,10)]}
</#macro>

<#-- 显示图标 -->
<#macro showBgIco postId>
    <#assign bgColor=['book','game','note','chat','code','image','web','link','design','lock']/>
    ${bgColor[postId % 10]}
</#macro>
