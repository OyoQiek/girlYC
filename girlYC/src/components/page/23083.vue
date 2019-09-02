<template>
    <div>
        <div class="title" v-text="data.title"></div>
        <div class="info">
            <span v-text="data.create_time"></span>
            <span><i class="iconfont icon-icon-test"></i>{{data.sd_type}}</span>
            <span><i class="iconfont icon-aixin1"></i>{{data.collect_num}}</span><!--点赞-->
            <span><i class="iconfont icon-pinglun"></i>评论已关闭</span>
            <span><i class="iconfont icon-chakan"></i>{{data.view_num}}</span><!--浏览数-->
            <div><router-link :to="`/tagList/${data.tag}`" v-text="data.tag"></router-link></div>
        </div>
        <div>
            <p v-text="data.first_content"></p>
            <div v-for="(item,i) of result" :key="i">
                <p><img :src="item.pic" alt=""></p>
                <p class="center" v-text="item.title"></p>
                <p v-text="item.cont"></p>
            </div>
            
            <!-- <p><img src="images/detail/23083/02.jpg" alt=""></p>
            <p class="center">短款连帽PU皮机车外套</p>
            <p>02 没办法，属性使然，至于什么属性，可意会不可言传，反正，追求街头风酷帅范儿的女人都懂得。无独有偶，连帽机车外套的受众也是同样的群体，出场就带着一股狂放的气息，教人欲罢不能。</p>
            <p><img src="images/detail/23083/03.jpg" alt=""></p>
            <p class="center">水洗皮修身彩色小皮衣</p>
            <p>03 温柔的女人就不要强行感受狂放的气息了，不同的皮衣有不同的性格，跟一个萝卜一个坑一样，对应着不同的女人，正因为这样，世间才有了形形色色的美，或许，这就是彩色小皮衣存在的意义。</p>
            <p><img src="images/detail/23083/04.jpg" alt=""></p>
            <p class="center">休闲立领短款皮衣</p>
            <p>04 别看皮衣平时总是一副一成不变的样子，其实骨子里百变着呢，和碰撞造成的冲击感不同，太违和的视觉观感之于女人并不是一件值得推崇的事情，不走酷帅路线没关系，心向往之就行了。</p>
            <p><img src="images/detail/23083/05.jpg" alt=""></p>
            <p class="center">西装领收腰小皮衣</p>
            <p>05 所谓的心向往之，一句话理解就是，尽一切可能去尝试一些乍一看不太适合自己又不会彻底迷失自己的风格，举个例子，端庄如OL，也可以在闲暇之余和皮衣交个朋友，意外的，还挺优雅。</p>
            <p><img src="images/detail/23083/06.jpg" alt=""></p>
            <p class="center">简约圆领休闲皮衣</p>
            <p>06 换言之，在不违和的前提下，不拒绝任何有可能散发个人魅力的机会才是女人应该解决的首要问题，哪怕普普通通，也得有鲜明的个性，而且，谁说个性必须酷炫，某种程度上，温和也是个性的一种。</p>
            <p><img src="images/detail/23083/07.jpg" alt=""></p>
            <p class="center">原宿风连帽拉链皮衣</p>
            <p>07 就以往的经验来看，只要选择的不是大众款就行，撞衫倒是其次，拉低品味就得不偿失了。传承着作为一件外套的基本功能，皮衣适合的场合也非常广泛，出街、约会、上班、旅游，怎么穿都有理，尤其是造型，任性凹，出错算我输。</p> -->
            <p class="article-copyright">
                转载原创文章请注明，转载自: 女神衣橱 - 用一件皮衣，凹无数造型 <br>(http://www.nvshenyichu.com/23083.html)
            </p>
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
        result:{default:""}
    }
}
</script>
<style scoped>
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
        padding: 2px 8px;
        display: inline-block;
        background: #000;
        text-align: center;
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
</style>
