<template>
    <div style="overflowX:hidden">
        <my-header></my-header>
        <carousel/>
        <div class="notice">
            <div>
                <span><img src="images/notice.png" alt=""></span>
                <span>请在后台公告栏处自定义公告栏内容</span>
            </div>
        </div>
        <list :data="data" :pd="pd"/>
        
        <Footer/>
    </div>
</template>
<script>
import Carousel from '@/components/Carousel'
import List from '@/components/list/List'
export default {
    data() {
        return {
            data:[],
            pno:1,
            pd:true
        }
    },
    components:{
        Carousel,
        List,
    },
    created() {
        this.load()
    },
    watch: {
        '$route'(){
            this.update()
        }
        
    },
    methods: {
        update(){
            this.axios("/sdetail/list").then(res=>{
                console.log(res.data.data)
                 if(res.data.code>0){
                    this.data=res.data.data
                    this.pd=true   
                }else{
                    this.pd=false
                }
            }).catch(err=>{
                console.log(err)
            })
        },
        load(){
            this.axios("/sdetail/list",{params:{pno:this.pno}}).then(res=>{
                console.log(res.data.data)
                 if(res.data.code>0){
                    this.pno++
                    var rows=res.data.data
                    this.pd=true   
                    this.data=this.data.concat(rows)
                }else{
                    this.pd=false
                }
            }).catch(err=>{
                console.log(err)
            })
        }
    },
}
</script>
<style scoped>
    .notice{
        background: #fff;
        width: 100%;
        height: 48px;
        margin-bottom: 30px;
    }
    .notice>div{
        width: 1110px;
        margin: 0 auto;
        display: flex;
        flex-flow: row nowrap;
        justify-content: flex-start;
        align-items: center;
        height: 48px;
        font-size: 14px;
        color: #3f3f3f;
    }
    .notice>div>span:last-child{
        margin-left: 13px;
    }
    .notice>div>span>img{
        width: 24px;
        vertical-align: middle;
    }
   
</style>
