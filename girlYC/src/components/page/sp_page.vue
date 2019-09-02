<template>
    <div>
        <div class="img"><img src="images/detail/21029/01.jpg" alt=""></div>
        <div class="title">街拍达人-一点红</div>
        <div class="info">
            <span>2017.09.30</span>
            <span><i><img src="images/changyongicon-.png" class="icon" alt=""></i>通勤名媛</span>
            <span><i><img src="images/aixin.png" class="icon" alt=""></i>0</span><!--点赞-->
            <span><i><img src="images/pinglun.png" class="icon" alt=""></i>评论已关闭</span>
            <span><i><img src="images/chakan.png" class="icon" alt=""></i>956</span><!--浏览数-->
            <div><a href="javascript:;">少淑搭配</a></div>
        </div>
        <div>
            <p>白色翻领衬衣+黑色半身短裙+黑色鱼嘴高跟拖鞋+红色酒神包</p>
            <ul class="wptao">
                <li>
                    <img src="images/detail/21029/02.jpg" alt="asd">
                    <div>
                        <p><em>[天猫]</em> YEP夏季韩版百搭小清新白色睡衣风宽松V领短衬衣七分袖雪纺衬衫女</p>
                        <button>￥109.00</button>
                    </div>
                </li>
                <li>
                    <img src="images/detail/21029/03.jpg" alt="asd">
                    <div>
                        <p><em>[天猫]</em> 韩都衣舍2016韩版女装夏新百搭短裙非牛仔包臀显瘦半身裙GQ5500耒</p>
                        <button>￥109.00</button>
                    </div>
                </li>
                <li>
                    <img src="images/detail/21029/04.jpg" alt="asd">
                    <div>
                        <p><em>[天猫]</em> 鱼嘴凉拖鞋女2016夏季新款高跟凉鞋子性感真皮一字拖时尚粗跟拖鞋</p>
                        <button>￥109.00</button>
                    </div>
                </li>
            </ul>
            <p class="center">「如果你觉得对你有用，欢迎点击下方按钮对我打赏」</p>
            <div class="detail_bottom">
                <a href="javascript:;">赞赏</a>
                <div class="zanzhu">
                    <img src="images/zanzhu.jpg" alt="">
                </div>
                <div class="bottom">
                    <button><img src="images/aixin.png" class="icon" alt=""><span>0</span></button>
                    <div>
                        分享到:
                        <i><img src="images/weibo.png" class="icon1" alt=""></i>
                        <i><img src="images/062qqkongjian.png" class="icon1" alt=""></i>
                    </div>
                </div>
            </div>
        </div>
    </div>
</template>
<script>
export default {
    
}
</script>
<style scoped>
    .wptao{
        max-width: 480px;
        margin: 0 auto;
    }


    p{
        margin-bottom: 20px;
        line-height: 1.8;
        text-align: left;
        font-size: 16px;
        text-indent: 32px;
    }
    .title{
        font-size: 28px;
        font-weight: bold;
        text-align: left;
    }
    .info{
        color: #aaa;
        font-size: 14px;
        text-align: left;
    }
    .info span{
        display: inline-block;
        margin-right: 12px;
    }
    .info div a{
        display: block;
        margin: 6px 6px 18px 0;
        color: #fff;
        display: inline-block;
        text-align: center;
        padding: 2px 8px;
        background: #000;
    }
    .center{
        text-align: center;
        color: #000;
    }
    .article-copyright{
        color: #ccc;
        text-align: center;
    }
    .detail_bottom{
        position: relative;
    }
    .detail_bottom a:first-child{
        padding: 6px 16px;
        border-radius: 3px;
        color: #fff;
        background: #000;
        cursor: pointer;
    }
    .detail_bottom a:first-child:hover + .zanzhu{
        opacity: 1;
        height: 172px;
        top: -200px;
    }
    .detail_bottom .zanzhu{
        position: absolute;
        padding: 6px;
        box-shadow: 0 0 6px rgba(14,22,30,0.3);
        width: 172px;
        top: -30px;
        left: 245px;
        background: #fff;
        opacity: 0;
        height: 0;
        overflow: hidden;
        transition: all .3s linear;
    }
    .detail_bottom .zanzhu img{
        width: 172px;
    }
    .bottom{
        margin-top: 22px;
        display: flex;
        justify-content: space-between;
    }
    .bottom button{
        background: #fff;
        border: 1px solid #000;
        border-radius: 4px;
        padding: 6px 18px;
        box-sizing: border-box;
        cursor: pointer;
        outline: 0;
    }
    .bottom button span{
        vertical-align: middle;
        display: inline-block;
        padding-left: 3px;
    }
    .icon{
        width: 15px;
        vertical-align: middle;
    }
    .icon1{
        width: 24px;
        vertical-align: middle;
    }
    .img img{
        width: 100%;
    }
</style>
