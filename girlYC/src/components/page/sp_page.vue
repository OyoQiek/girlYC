<template>
    <div>
        <div class="img"><img :src="pic" alt=""></div>
        <div class="title">街拍达人-一点红</div>
        <div class="info">
            <span v-text="data.create_time"></span>
            <span><i class="iconfont icon-icon-test"></i>{{data.td_type}}</span>
            <span><i class="iconfont icon-aixin1"></i>{{data.collect_num}}</span><!--点赞-->
            <span><i class="iconfont icon-pinglun"></i>评论已关闭</span>
            <span><i class="iconfont icon-chakan"></i>{{data.view_num}}</span><!--浏览数-->
            <div><router-link :to="`/tagList/${data.tag}`" v-text="data.tag"></router-link></div>
        </div>
        <div>
            <p v-text="data.first_content"></p>
            <ul class="wptao">
                <li v-for="(item,i) of result" :key="i">
                    <img :src="item.pic" alt="">
                    <div>
                        <p><em>[天猫]</em> {{item.title}}</p>
                        <button>￥{{item.price}}</button>
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
    props:{
        data:{default:""},
        result:{default:""},
        pic:{default:""}
    },
}
</script>
<style scoped>
    .wptao{
        max-width: 480px;
        margin: 0 auto;
    }
    .wptao li{
        height: 132px;
        box-shadow: 1px 1px 8px #eee;
        border: 1px solid #eee;
        margin: 10px 0;
        display: flex;
        flex-flow: row nowrap;
        padding: 10px;
        box-sizing: border-box;
    }
    .wptao li div{
        display: flex;
        flex-flow: column nowrap;
        justify-content: flex-start;
        align-items: flex-end
    }
    .wptao li div p{
        font-size: 16px;
        color: #333;
        font-weight: 700;
    }
    .wptao li div p em{
        font-size: 13px;
    }
    .wptao li div button{
        padding: 4px 10px;
        background: #f04848;
        border: 0;
        color: #fff;
        width: 75px;
        outline: 0;
        cursor: pointer;
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
