<template>
    <div style="height:80px">
    <div class="nav_bg">
        <div class="navbar">
            <div class="logo"><img src="images/logo.png" alt="logo"></div>
            <ul class="nav f_3f3f3f">
                <li><a href="javascript:;">首页</a></li>
                <li><a href="javascript:;">穿搭潮人</a></li>
                <li><a href="javascript:;">系列单品</a></li>
                <li class="nav_change">
                    <a href="javascript:;" class="nav_icon">女神搭配</a>
                    <ul class=" ul_icon">
                        <li><a href="javascript:;">气质淑女</a></li>
                        <li><a href="javascript:;">日韩达人</a></li>
                        <li><a href="javascript:;">街头潮人</a></li>
                        <li><a href="javascript:;">明星红人</a></li>
                        <li><a href="javascript:;">通勤名媛</a></li>
                        <li><a href="javascript:;">欧美达人</a></li>
                        <li><a href="javascript:;">时尚画报</a></li>
                        <li><a href="javascript:;">文艺复古</a></li>
                    </ul>
                </li>
                <li><a href="javascript:;">品牌专题</a></li>
                <li class="nav_change">
                    <a href="javascript:;" class="nav_icon">穿搭灵感</a>
                    <ul class="ul_icon">
                        <li><a href="javascript:;">穿搭灵感</a></li>
                        <li><a href="javascript:;">时尚基因</a></li>
                        <li><a href="javascript:;">时尚杂志</a></li>
                    </ul>
                </li>
            </ul>
            <div class="search"><img src="images/search.png" @click="search" :class="{'imghover':pd}" alt="search"></div>
        </div>
        <div class="search_bg" :class="{'search_bg_c':pd}">
            <div><input type="text" placeholder="搜索..."/></div>
        </div>
    </div>
</div>
</template>

<script>
export default {
    data(){
        return{
            pd:false
        } 
    },
    methods: {
        search(){
            this.pd=!this.pd;
        }
    },
}
</script>

<style>
    @import url("../assets/base.css");
</style>
