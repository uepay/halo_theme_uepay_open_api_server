<div class="search-box ins-search">
    <div class="search-box-container">
        <#--搜索输入框-->
        <div class="search-box-input-wrapper">
            <form method="get" action="/search">
                <input type="text" class="search-box-input ins-search-input" name="keyword" placeholder="请输入关键字" autocomplete="off"/>
            </form>
            <span class="search-box-close ins-close" onclick="closeSearchPanel()"><i
                        class="fa fa-times"></i></span>
        </div>
        <div class="search-box-result-wrapper">
            <div class="ins-section-container">
                <section class="ins-section">
                    <header class="ins-section-header">最新文章</header>
                    <ul class="ins-selectable">
                        <li>
                            <a href="">
                                <i class="fa fa-file"></i>
                                <span>hello world</span>
                            </a>
                        </li>
                        <li>
                            <a href="">
                                <i class="fa fa-file"></i>
                                <span>hello world</span>
                            </a>
                        </li>
                        <li>
                            <a href="">
                                <i class="fa fa-file"></i>
                                <span>hello world</span>
                            </a>
                        </li>
                        <li>
                            <a href="">
                                <i class="fa fa-file"></i>
                                <span>hello world</span>
                            </a>
                        </li>
                    </ul>
                </section>
                <#--分类-->
                <section class="ins-section">
                    <header class="ins-section-header">分类</header>
                    <ul class="ins-selectable">
                        <li>
                            <a href="">
                                <i class="fa fa-folder"></i>
                                <span>随笔</span>
                            </a>
                        </li>
                        <li>
                            <a href="">
                                <i class="fa fa-folder"></i>
                                <span>技术</span>
                            </a>
                        </li>
                        <li>
                            <a href="">
                                <i class="fa fa-folder"></i>
                                <span>日记</span>
                            </a>
                        </li>
                        <li>
                            <a href="">
                                <i class="fa fa-folder"></i>
                                <span>经验</span>
                            </a>
                        </li>
                    </ul>
                </section>
                <section class="ins-section">
                    <header class="ins-section-header">分类</header>
                    <ul class="modal-box">
                        <li>Java</li>
                        <li>Javascript</li>
                        <li>Goland</li>
                        <li>PHP</li>
                        <li>Python</li>
                    </ul>
                </section>
            </div>
        </div>
    </div>
</div>
<script>
    function openSearchPanel() {
        $(".ins-search").addClass("show");
    }

    function closeSearchPanel() {
        $(".ins-search").removeClass("show");
    }
</script>