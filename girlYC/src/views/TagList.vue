<template>
    <div>
        <my-header></my-header>
        <div class="taglist container">
            <section>
                <div>标签：<span>针织衫</span></div>
            </section>
            <div class="list">
                <list/>
            </div>
        </div>
        <Footer></Footer>
    </div>
</template>
<script>
import List from '../components/list/List'
export default {
    components:{
        List,
    }
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
</style>
