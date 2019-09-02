<template>
    <div style="overflowX:hidden">
        <my-header></my-header>
        <div class="page-row">
            <div>
                <div><span>1</span>篇</div>
                <div v-text="type"></div>
            </div>
        </div>
        <List/>
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
