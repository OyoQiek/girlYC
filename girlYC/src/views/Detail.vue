<template>
    <div>
        <my-header/>
        <div class="detail-content container">
            <div class="bg">
                <page/>
            </div>
            <tag/>
        </div>


        <Footer/>
    </div>
</template>
<script>
import page from '../components/page/23083'
import Tag from '../components/Detail-tag'
export default {
    components:{
        page,
        Tag
    }
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
