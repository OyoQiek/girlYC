<template>
    <div>
        <div class="list">
            <div v-for="(item,i) of data" :key="i">
                <item :item="item"/>
            </div>
        </div>
        <button class="seemore" v-if="pd==true" @click="loadMore">加载更多</button>
    </div>
</template>
<script>
import Item from '@/components/list/NewsItem'
export default {
    props:{
        data:{default:""},
        pd:{default:""}
    },
    components:{
        Item,
    },
    methods: {
        loadMore(){
            this.$parent.load()
        }
    },
}
</script>
<style scoped>
 .list{
        width: 1110px;
        margin: 40px auto;
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
