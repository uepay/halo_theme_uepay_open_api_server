<@menuTag method="list">
<ul>
    <#list menus?sort_by('priority') as menu>
        <li>
            <a href="${menu.url}" target="${menu.target!}">${menu.name} </a>
        </li>
    </#list>
        <li class="navbar-search">
            <span class="fa fa-search icon-search"></span>
            <form id="search" method="get" action="${context!}/search" role="search">
                <span class="search-box">
                    <input type="text" id="input" class="input" name="keyword" required="true" placeholder="請輸入搜索內容" maxlength="30" autocomplete="off">
                </span>
            </form>
        </li>

</ul>
</@menuTag>
