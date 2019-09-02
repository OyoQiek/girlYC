<template>
    <div style="height:80px">
    <div class="nav_bg">
        <div class="navbar">
            <div class="logo"><img src="images/logo.png" alt="logo"></div>
            <ul class="nav f_3f3f3f">
                <li><router-link :to="`/`">首页</router-link></li>
                <li><router-link :to="`/ProjectPage/穿搭潮人`">穿搭潮人</router-link></li>
                <li><router-link :to="`/ProjectPage/系列单品`">系列单品</router-link></li>
                <li class="nav_change">
                    <router-link :to="`/ProjectPage/女神搭配`" class="nav_icon">女神搭配</router-link>
                    <ul class=" ul_icon">
                        <li><router-link :to="`/ProjectPage/气质淑女`">气质淑女</router-link></li>
                        <li><router-link :to="`/ProjectPage/日韩达人`">日韩达人</router-link></li>
                        <li><router-link :to="`/ProjectPage/街头潮人`">街头潮人</router-link></li>
                        <li><router-link :to="`/ProjectPage/明星红人`">明星红人</router-link></li>
                        <li><router-link :to="`/ProjectPage/通勤名媛`">通勤名媛</router-link></li>
                        <li><router-link :to="`/ProjectPage/欧美达人`">欧美达人</router-link></li>
                        <li><router-link :to="`/ProjectPage/时尚画报`">时尚画报</router-link></li>
                        <li><router-link :to="`/ProjectPage/文艺复古`">文艺复古</router-link></li>
                    </ul>
                </li>
                <li><router-link :to="`/ProjectPage/品牌专题`">品牌专题</router-link></li>
                <li class="nav_change">
                    <router-link :to="`/ProjectPage/穿搭灵感`" class="nav_icon">穿搭灵感</router-link>
                    <ul class="ul_icon">
                        <li><router-link :to="`/ProjectPage/穿搭灵感`">穿搭灵感</router-link></li>
                        <li><router-link :to="`/ProjectPage/时尚基因`">时尚基因</router-link></li>
                        <li><router-link :to="`/ProjectPage/时尚杂志`">时尚杂志</router-link></li>
                    </ul>
                </li>
            </ul>
            <div class="search"><img src="images/search.png" @click="search" :class="{'imghover':pd}" alt="search"></div>
        </div>
        <div class="search_bg" :class="{'search_bg_c':pd}">
            <div><input type="text" placeholder="搜索..." v-model="cont" @keyup.13="searchContent"/></div>
        </div>
    </div>
</div>
</template>

<script>
export default {
    data(){
        return{
            pd:false,
            cont:""
        } 
    },
    methods: {
        search(){
            this.pd=!this.pd;
        },
        searchContent(){
            if(this.cont==""){
                return
            }else{
                this.$router.push(`/tagList/${this.cont}`)
            }
            
        }
    },
    watch: {
        '$route'(){
            this.cont=this.$route.params.tag
        }
    },
}
</script>

<style>
    @import url("../assets/base.css");
</style>
