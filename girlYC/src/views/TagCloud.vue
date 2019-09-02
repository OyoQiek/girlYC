<template>
    <div>
        <my-header></my-header>
        <div class="bg container">
            <h1>标签云</h1>
            <ul>
                <li><router-link :to="`/tagList/T恤`">T恤</router-link></li>
                <li><router-link :to="`/tagList/上衣`">上衣</router-link></li>
                <li><router-link :to="`/tagList/休闲搭配`">休闲搭配</router-link></li>
                <li><router-link :to="`/tagList/包包`">包包</router-link></li>
                <li><router-link :to="`/tagList/卫衣`">卫衣</router-link></li>
                <li><router-link :to="`/tagList/可爱搭配`">可爱搭配</router-link></li>
                <li><router-link :to="`/tagList/外套`">外套</router-link></li>
                <li><router-link :to="`/tagList/夹克`">夹克</router-link></li>
                <li><router-link :to="`/tagList/套装`">套装</router-link></li>
                <li><router-link :to="`/tagList/小性感搭配`">小性感搭配</router-link></li>
                <li><router-link :to="`/tagList/小淑女搭配`">小淑女搭配</router-link></li>
                <li><router-link :to="`/tagList/少淑搭配`">少淑搭配</router-link></li>
                <li><router-link :to="`/tagList/帅气搭配`">帅气搭配</router-link></li>
                <li><router-link :to="`/tagList/性感`">性感</router-link></li>
                <li><router-link :to="`/tagList/性感搭配`">性感搭配</router-link></li>
                <li><router-link :to="`/tagList/明星搭配`">明星搭配</router-link></li>
                <li><router-link :to="`/tagList/条纹`">条纹</router-link></li>
                <li><router-link :to="`/tagList/毛呢外套`">毛呢外套</router-link></li>
                <li><router-link :to="`/tagList/毛衣`">毛衣</router-link></li>
                <li><router-link :to="`/tagList/毛领`">毛领</router-link></li>
                <li><router-link :to="`/tagList/气质搭配`">气质搭配</router-link></li>
                <li><router-link :to="`/tagList/淑女搭配`">淑女搭配</router-link></li>
                <li><router-link :to="`/tagList/清新搭配`">清新搭配</router-link></li>
                <li><router-link :to="`/tagList/潮人搭配`">潮人搭配</router-link></li>
                <li><router-link :to="`/tagList/熟女搭配`">熟女搭配</router-link></li>
                <li><router-link :to="`/tagList/牛仔外套`">牛仔外套</router-link></li>
                <li><router-link :to="`/tagList/牛仔短裤`">牛仔短裤</router-link></li>
                <li><router-link :to="`/tagList/牛仔裤`">牛仔裤</router-link></li>
                <li><router-link :to="`/tagList/羽绒服`">羽绒服</router-link></li>
                <li><router-link :to="`/tagList/背带裙`">背带裙</router-link></li>
                <li><router-link :to="`/tagList/衬衫`">衬衫</router-link></li>
                <li><router-link :to="`/tagList/衬衫裙`">衬衫裙</router-link></li>
                <li><router-link :to="`/tagList/裙子`">裙子</router-link></li>
                <li><router-link :to="`/tagList/轻熟搭配`">轻熟搭配</router-link></li>
                <li><router-link :to="`/tagList/运动搭配`">运动搭配</router-link></li>
                <li><router-link :to="`/tagList/连衣裙`">连衣裙</router-link></li>
                <li><router-link :to="`/tagList/针织衫`">针织衫</router-link></li>
                <li><router-link :to="`/tagList/长裙`">长裙</router-link></li>
                <li><router-link :to="`/tagList/阔腿裤`">阔腿裤</router-link></li>
                <li><router-link :to="`/tagList/雪纺衫`">雪纺衫</router-link></li>
                <li><router-link :to="`/tagList/露肩`">露肩</router-link></li>
                <li><router-link :to="`/tagList/青春搭配`">青春搭配</router-link></li>
                <li><router-link :to="`/tagList/风衣`">风衣</router-link></li>
                <li><router-link :to="`/tagList/黑白搭配`">黑白搭配</router-link></li>
            </ul>
        </div>
        <Footer></Footer>
    </div>
</template>
<script>
export default {
    
}
</script>
<style scoped>
    .bg{
        margin-top: 30px;
        margin-bottom: 468px;
        padding: 25px 30px;
        background: #fff;
    }
    .bg h1{
        font-size: 18px;
        text-align: left;
        margin-bottom: 8px;
    }
    .bg ul{
        display: flex;
        flex-flow: row wrap;
        justify-content: flex-start;
    }
    .bg ul li a{
        display: block;
        color: #777;
        margin-bottom: 10px;
        margin-right: 12px;
        padding: 6px 12px;
        font-size: 14px;
        transition: all .1s;
        border: 1px solid #f0f0f0;
        border-radius: 2px;
    }
    .bg ul li a:hover{
        background:#38B7EA;
        border: 1px solid #fff;
        color: #fff;
    }
</style>
