$(function () {
    /**
     * 搜索框
     */
    function toggleSearch() {
        var $searchIcon = $('.js-toggle-search');
        $searchIcon.bind('click', function () {
            openSearchPanel() // 显示搜索框

        })
    }

    toggleSearch()
})