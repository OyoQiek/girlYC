<template>
    <div style="overflowX:hidden">
        <my-header></my-header>
        <div class="page-row">
            <div>
                <div><span v-text="data.length"></span>篇</div>
                <div v-text="type"></div>
            </div>
        </div>
        <List :data="data" :pd="pd"/>
        <!-- <button class="seemore">加载更多</button> -->
        <Footer/>
    </div>
</template>
<script>
import List from '@/components/list/List'
export default {
    components:{
        List,
    },
    props:{
        type:{default:""}
    },
    data() {
        return {
            data:[],
            pno:1,
            pd:true
        }
    },
    created() {
        this.update();
    },
    methods: {
        update(){
            this.axios.get("/sdetail/by",{params:{type:this.type}}).then(res=>{
                 if(res.data.code>0){
                    this.data=res.data.data
                    this.pno++
                    this.pd=true 
                }else{
                    this.data=""
                    this.pd=false
                }
            }).catch(err=>{
                console.log(err)
            })
        },
        load(){
            this.axios.get("/sdetail/by",{params:{type:this.type,pno:this.pno}}).then(res=>{
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
    watch: {
        '$route'(){
            this.update()
        }

    },
}
</script>
<style scoped>
    .page-row{
        background: #666;
        height: 260px;
        box-sizing: border-box;
        display: flex;
        flex-flow: column nowrap;
        justify-content: center;
        align-items: center;
        font-size: 14px;
        color: #fff;
        margin-bottom: 30px;
    }
    .page-row div div:first-child{
        margin-top: -10px;
        margin-bottom: 5px;
    }
    .page-row div div:last-child{
        width: 94px;
        height: 30px;
        line-height: 30px;
        border: 1px solid #fff;
        border-radius: 15px;
    }
    .list{
        width: 1110px;
        margin: 50px auto;
        display: flex;
        flex-flow: row wrap;

    }
    .seemore{
        background: #fff;
        padding: 10px 22px;
        color: #333;
        border: 1px solid #333;
        border-radius: 4px;
        display: block;
        outline: 0;
        margin: 0 auto;
        cursor: pointer;
        margin-top: 20px;
        margin-bottom: 68px;
        transition: all .3s linear;
        box-sizing: border-box;
    }
    .seemore:hover{
        background: rgba(0, 0, 0, .1);
        opacity: .8;
        border: 1px solid #fff;
    }
</style>
