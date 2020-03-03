<@menuTag method="list">
<ul>
    <#list menus?sort_by('priority') as menu>
        <li>
            <a href="${menu.url}" target="${menu.target!}">${menu.name} </a>
        </li>
    </#list>
    <li class="search-icon">
        <i class="fa fa-search js-toggle-search iconsearch" aria-hidden="true"
           style="font-size: 20px;"></i>
    </li>
</ul>
</@menuTag>
