<template>
    <div>
        <my-header></my-header>
        <div class="taglist container">
            <section>
                <div>搜索：<span v-text="tag"></span></div>
            </section>
            <div class="list" v-if="result==true">
                <list :data="data" :pd="pd"/>
            </div>
            <div v-else class="notice">无相关内容</div>
        </div>
        <Footer></Footer>
    </div>
</template>
<script>
import List from '../components/list/List'
export default {
    data() {
        return {
            pno:1,
            result:false,
            data:[],
            pd:true
        }
    },
    components:{
        List,
    },
    props:{
        tag:{default:""}
    },
    created() {
        this.load()
    },
    methods: {
        update(){
            this.data=""
            this.pno=1
            this.axios.get(
                "/sdetail/search",{
                    params:{
                        tag:this.tag
                    }
                }
            ).then(res=>{
                console.log(res.data)
                if(res.data.code>0){
                    this.result=true
                    this.pd=true   
                    this.data=res.data.data
                }else{
                    this.pd=false
                    if(this.data.length==0)
                        this.result=false
                }
            }).catch(err=>{
                console.log(err)
            })
        },
        load(){
            this.axios.get(
                "/sdetail/search",{
                    params:{
                        pno:this.pno,
                        tag:this.tag
                    }
                }
            ).then(res=>{
                console.log(res.data)
                if(res.data.code>0){
                    this.pno++
                    this.result=true
                    var rows=res.data.data
                    this.pd=true   
                    this.data=this.data.concat(rows)
                }else{
                    this.pd=false
                    if(this.data.length==0)
                        this.result=false
                }
            }).catch(err=>{
                console.log(err)
            })
        }
    },
    watch: {
        '$route'(){
            this.update()
        }
    },
}
</script>
<style scoped>
    .taglist{
        padding: 30px 15px;
    }
    .taglist section{
        padding: 12px 0;
        text-align: left;
    }
    .taglist section div{
        display: inline;
        padding: 12px;
        background: #fff;
        font-size: 14px;
    }
    .list{
        display: flex;
        flex-flow: row wrap;
        justify-content: space-between;
        margin-top: -30px;
        margin-left: -10px;
    }
    .notice{
        margin: 30px;
    }
</style>
