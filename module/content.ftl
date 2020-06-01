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
                        <span>${post}</span>
                    </div>
                </a>
            </div>
            </#list>
        </div>
    </div>
</div>