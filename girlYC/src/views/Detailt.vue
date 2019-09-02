<template>
    <div>
        <my-header/>
        <div class="detail-content container">
            <div class="bg">
                <page :data="data" :result="result" :pic="pic"/>
            </div>
            <tag/>
        </div>


        <Footer/>
    </div>
</template>
<script>
import page from '../components/page/sp_page.vue'
import Tag from '../components/Detail-tag'
export default {
    components:{
        page,
        Tag
    },
    props:{
        id:{default:""}
    },
    data() {
        return {
            data:[],
            pics:[],
            pic:"",
            prices:[],
            title:[],
            result:[]
        }
    },
    created() {
        this.load()
    },
    methods: {
         view(stat,id){
            var data=new URLSearchParams()
            data.append('stat',stat)
            data.append('id',id)
            this.axios.post(
                "/sdetail/view",
                data
            ).then(res=>{
                console.log(res)
            })
        },
        load(){
            this.axios.get("/sdetail/tdBy",{params:{id:this.id}}).then(res=>{
                console.log(res.data)
                if(res.data.code>0){
                    this.data=res.data.data[0]
                    this.pics=this.data.pics.split(",")
                    this.title=this.data.sub_title.split(",")
                    this.prices=this.data.prices.split(",")
                    this.pic=this.pics[0]
                    for(var i=0;i<this.pics.length-1;i++){
                        var obj={}
                        obj.pic=this.pics[i+1]
                        obj.price=this.prices[i]
                        obj.title=this.title[i]
                        this.result[i]=obj                      
                    }
                    console.log(this.data)
                    this.view(this.data.stat,this.data.td_id)
                }else{
                    // 查询失败
                }
            }).catch(err=>{
                console.log(err)
            })
        }
    },
}
</script>
<style scoped>
    .detail-content{
        position: relative;
        padding: 30px 15px;
        width: 1110px;
        box-sizing: border-box;
    }
    .detail-content>.bg{
        width: 740px;
        background: #fff;
        box-sizing: border-box;
        padding: 25px 30px;
    }
    
</style>
