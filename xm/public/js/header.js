(function(){
    $('body>header').html(`    <div class="navbar navbar-expand-md bg navbar-light position-fixed w-100 text-white z_index pb-0" id="d1">
    <div class="navbar-brand ml-5 h-100">
        <img src="img/logo.png"/>
    </div>
    <button class="navbar-toggler" data-toggle="collapse" data-target="#d">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="w-100">
        <div class="row justify-content-end align-items-center mr-5">
            <a href="#" class="text-white">
                <img src="./img/ico/phone-icon.png" class="h-25"/>
                <span class="ml-1 sm-size">0573-88731088</span>
            </a>
            <span class="h5 ml-3"> | </span>
            <a href="#" class="text-white sm-size ml-3">乌镇旅游</a>
            <span class="h5 ml-3"> | </span>
            <a href="#" class=""><img src="./img/ico/search-icon.png" class="h-25 size_21 ml-3"/></a>
            <button class="btn btn-danger ml-3">
                即刻预定
            </button>
        </div>
        <div class="collapse navbar-collapse row justify-content-end mr-5 pb-0 mb-0" id="d">
            <ul class="navbar-nav nav nav-pills">
                <li class="nav-item droudown position-relative" role="presentation"><a href="/index.html" class="nav-link">传统乌镇</a>
                </li>
                <li class="nav-item droudown position-relative" role="presentation"><a href="/details.html" class="nav-link">概述</a>
                </li>
                <li class="nav-item droudown position-relative" role="presentation"><a href="/origin.html" class="nav-link">乌镇渊源</a>
                </li>
                <li class="nav-item droudown position-relative" role="presentation"><a href="/celebrity.html" class="nav-link">乌镇名人</a>
                </li>
                <li class="nav-item droudown position-relative" role="presentation"><a href="/news.html" class="nav-link">新闻动态</a>
                </li>
                <li class="nav-item droudown position-relative" role="presentation"><a href="/traver.html" class="nav-link">游记攻略</a>
                </li>
            </ul>
        </div>
    </div>
</div>`)
$('body>footer').html(`
<div class="w-100 pr-5 pl-5 bg-dark">
    <div class=" banner1 m-auto">
        <div class="row pt-5 pb-2">
            <div class="col-2">
                <h4 class="text-white">关于我们</h4>
            </div>
            <div class="col-7 h6 d-flex align-items-center text-white">
                <span class="border-right pr-5 ">0573-88731088</span>
                <span class="pl-5">浙江省桐乡市乌镇石佛南路18号</span>
            </div>
            <div class="col-3 d-flex justify-content-around">
                <a href="#" class='p-1'>
                    <img src="img/ico/weibo-shouji.png" class="h-50"/>
                </a>
                <a href="#" class='p-1'>
                    <img src="img/ico/weixin-shouji.png" class="h-50"/>
                </a>
                <a href="#" class='p-1'>
                    <img src="img/ico/face-shouji.png" class="h-50"/>
                </a>
            </div>
        </div>
        <hr/>
        <div class="d-flex justify-content-between mt-4 pb-2">
            <ul class="list-unstyled w_90px">
                <li>传统乌镇</li>
                <li><a href="#">概述</a></li>
                <li><a href="#">乌镇渊源</a></li>
                <li><a href="#">乌镇名人</a></li>
                <li><a href="#">乌镇民俗</a></li>
            </ul>
            <ul class="list-unstyled w_90px">
                <li>度假乌镇</li>
                <li><a href="#">住宿</a></li>
                <li><a href="#">美食</a></li>
                <li><a href="#">休闲娱乐</a></li>
                <li><a href="#">伴手礼</a></li>
                <li><a href="#">乌村</a></li>
            </ul>
            <ul class="list-unstyled w_90px">
                <li>文化乌镇</li>
                <li><a href="#">文化活动</a></li>
                <li><a href="#">乌镇戏剧节</a></li>
                <li><a href="#">乌镇国际当代艺术邀请展</a></li>
                <li><a href="#">乌镇国际未来视觉艺术计划</a></li>
                <li><a href="#">木心美术馆</a></li>
            </ul>
            <ul class="list-unstyled w_90px">
                <li>会展乌镇</li>
                <li><a href="#">场地介绍</a></li>
                <li><a href="#">服务介绍</a></li>
                <li><a href="#">乌镇互联网国际会展中心</a></li>
                <li><a href="#">成功案例</a></li>
            </ul>
            <ul class="list-unstyled w_90px">
                <li>互动体验</li>
                <li><a href="#">影集</a></li>
                <li><a href="#">图集</a></li>
                <li><a href="#">直播</a></li>
            </ul>
            <ul class="list-unstyled w_90px">
                <li>活动公告</li>
                <li><a href="#">景区公告</a></li>
                <li><a href="#">景区活动</a></li>
                <li><a href="#">新闻动态</a></li>
            </ul>
            <ul class="list-unstyled w_90px">
                <li>出行锦囊</li>
                <li><a href="#">游记攻略</a></li>
                <li><a href="#">服务</a></li>
                <li><a href="#">交通信息</a></li>
            </ul>
            <ul class="list-unstyled w_90px">
                <li>服务优化</li>
                <li><a href="#">问题解答</a></li>
                <li><a href="#">宾客意见</a></li>
                <li><a href="#">问卷调查</a></li>
            </ul>
        </div>
        <hr/>
        <div class="d-flex justify-content-between flex-nowrap row">
            <div class="foot col-6">
                <span>版权声明</span>
                <span>网站地图</span>
                <span>友情链接</span>
                <span>媒体专区</span>
                <img src="img/ico/i_lo2.gif" class="h-25 pl-3"/>
            </div>
            <div class="foot col-5 offset-1">
                <span>乌镇旅游股份有限公司©版权所有</span>
                <span class="border-0 pr-0">浙ICP备09047744号</span>
            </div>
        </div>
    </div>
</div>`)
})()