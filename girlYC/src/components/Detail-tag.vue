<template>
    <div>
        <div id="tagdiv" class="tagdiv" :style="divstyle">
                <div><span>标签云</span></div>
                <div>
                    <ul>
                        <li><router-link :to="`/tagList/T恤`" class="tag">T恤</router-link></li>
                        <li><router-link :to="`/tagList/休闲搭配`" class="tag">休闲搭配</router-link></li>
                        <li><router-link :to="`/tagList/卫衣`" class="tag">卫衣</router-link></li>
                        <li><router-link :to="`/tagList/外套`" class="tag">外套</router-link></li>
                        <li><router-link :to="`/tagList/小性感搭配`" class="tag">小性感搭配</router-link></li>
                        <li><router-link :to="`/tagList/少淑搭配`" class="tag">少淑搭配</router-link></li>
                        <li><router-link :to="`/tagList/潮人搭配`" class="tag">潮人搭配</router-link></li>
                        <li><router-link :to="`/tagList/衬衫`" class="tag">衬衫</router-link></li>
                        <li><router-link :to="`/tagList/裙子`" class="tag">裙子</router-link></li>
                        <li><router-link :to="`/tagList/连衣裙`" class="tag">连衣裙</router-link></li>
                        <li><router-link :to="`/tagList/针织衫`" class="tag">针织衫</router-link></li>
                        <li><router-link :to="`/tags`" class="tag">更多</router-link></li>
                    </ul>
                </div>
            </div>
    </div>
</template>
<script>
export default {
    data() {
        return {
            temp:0,
            divstyle:{
                position:"absoulte",
                top:30+'px'
            }
        }
    },
    mounted(){
        window.addEventListener("scroll",this.handleScroll,true);
    },
    methods: {
        handleScroll() {
            let st = Math.max(document.body.scrollTop || document.documentElement.scrollTop)  
            if(st>300){
                this.divstyle.top=st+10+'px'
            }else{
                this.divstyle.top='30px'
            }
        }
    },
    destroyed(){
        window.removeEventListener('scroll', this.handleScroll); 
    }
}
</script>
<style scoped>
.tagdiv{
        width: 340px;
        box-sizing: border-box;
        padding: 16px;
        background: #fff;
        position: absolute;
        right:-10px;
        top: 30px;
    }
.tagdiv div:first-child{
        border-bottom: 1px solid #ddd;
        font-size: 15px;
        position: relative;
        text-align: left;
    }
.tagdiv div:first-child span{
        border-bottom: 1px solid #000;
        display: inline-block;
        padding-bottom:5px;
        padding-right: 15px;
        color: #3f3f3f;
        font-weight: bold;
    }
.tagdiv div:nth-child(2) ul{
        display: flex;
        flex-flow: row wrap;
        margin-top: 8px;
        padding-right: 38px;
    }
.tagdiv div:nth-child(2) ul li .tag{
        display: block;
        padding: 5px 8px;
        margin: 0 6px 6px 0;
        transition: all .1s linear;
        color: #777;
        border: 1px solid #ddd;
        font-size: 14px;
    }
.tagdiv div:nth-child(2) ul li .tag:hover{
        background: #000;
        color: #fff;
        border: 1px solid #fff;
    }
</style>
