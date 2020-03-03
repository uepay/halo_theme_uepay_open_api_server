$.when($.ready).then(function () {
    var begin = beginTag(),
        list = stock(begin.tagList, begin.elList);
    if (list) {
        var rooter = $('<div class="article-dock-contain"></div>');
        rooter.append(buildDom(list));
        $('.article-dock').append(rooter);
    }
});

/**
 * 生成第一個節點
 * @return {*}
 */
function beginTag() {
    var tagList = ['H4', 'H3', 'H2', 'H1'],
        root = $('.full-text'),
        isBegTag = false,
        elList = false,
        tagName = false;
    while (!isBegTag && 0 < tagList.length) {
        tagName = tagList.pop();
        elList = root.find(tagName);
        isBegTag = 0 < elList.length;
        if (isBegTag) {
            tagList = tagList.concat([tagName]);
        }
    }
    return isBegTag ? {elList: elList, tagList: tagList} : false;
}

/**
 * 堆棧處理樹
 * @param tagList
 * @param elList
 */
function stock(tagList, elList) {
    var cloneTagList = [], //對列表進行深拷貝
        tagName = false, //當前處理元素的名稱
        ret = [], //返回內容
        //=============================
        i = 0, //迭代器下標
        el = false, //迭代元素臨時變量
        tag = false, //迭代返回數據
        childrenElList = false; //用於向下堆棧的列表
    for (i = 0; i < tagList.length; i++) {
        cloneTagList.push(tagList[i]);
    }
    while (0 === ret.length && 0 < cloneTagList.length) {
        tagName = cloneTagList.pop();
        for (i = 0; i < elList.length; i++) {
            el = elList[i];
            if (tagName === el.tagName) {
                tag = {id: el.id, name: el.innerText, children: false};
                childrenElList = $(el).nextUntil(tagName);
                tag.children = stock(cloneTagList, childrenElList);
                ret.push(tag);
            }
        }
    }
    return 0 < ret.length ? ret : false;
}

/**
 *
 * @param list {Array} 展示列表
 */
function buildDom(list) {
    var i = 0,
        rooter = $('<ul></ul>'),
        item = false,
        sub = false;
    for (i = 0; i < list.length; i++) {
        item = list[i];
        sub = $('<li><a href="#' + item.id + '">' + item.name + '</a></li>')
        if (item.children) {
            sub.append(buildDom(item.children));
        }
        rooter.append(sub);
    }
    return rooter;
}