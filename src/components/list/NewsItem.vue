<template>
    <div>
        <div class="item">
            <div class="itemmb">
                <a href="javascript:;" class="itempic"><img src="images/banner1.jpg" alt=""><div class="mask"></div></a>
                <div class="title">
                    <a href="javascript:;">秋冬必备打底衫 我只信赖针织</a>
                    <div>
                        <span>系列单品</span>
                        <span>2017.10.15</span>
                    </div>
                </div>
                <div class="info">
                    <div>nvshen</div>
                    <ul>
                        <li><span>t</span>1</li>
                        <li><span>t</span>0</li>
                        <li><span>t</span>111</li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</template>

<script>
export default {
    
}
</script>

<style scoped>
    .item{
        width: 350px;
        padding: 0 10px;
    }
    .item>.itemmb{
        margin-bottom: 30px;
        background: #fff;
    }
    .item>.itemmb>.itempic{
        display: block;
        height: 524px;
        padding-bottom: 60%;
        overflow: hidden;
        position: relative;
        font-size: 14px;
        box-sizing: border-box;
        
    }
    .item>.itemmb>.itempic:hover .mask{
        opacity: 1;
        height: 524px;
    }
    .item>.itemmb>.itempic .mask{
        opacity: 0;
        background: linear-gradient(180deg, rgba(0,0,0,0.01) 2%, rgba(0,0,0,0.85));
        position: absolute;
        bottom: 0;
        left: 0;
        width: 100%;
        height: 0px;
        overflow: hidden;
        transition: all .3s ;
    }
    .item>.itemmb>.title{
        padding: 15px 15px 0;
        box-sizing: border-box;
        height: 60px;
        font-size: 14px;
        color: #3f3f3f;
        display: flex;
        flex-flow: column nowrap;
        align-items: flex-start;
        margin-bottom: 10px;
    }
    .item>.itemmb>.title>a{
        font-size: 18px;
        color: #000;
    }
    .item>.itemmb>.title>div{
        width: 100%;
        display: flex;
        flex-flow: row nowrap;
        justify-content: space-between;
    }
    .item>.itemmb>.title>div>span:last-child{
        color: #aaa;
    }
    .item>.itemmb>.info{
        box-sizing: border-box;
        padding: 15px;
        display: flex;
        justify-content: space-between;
        align-items: center;
    }
    .item>.itemmb>.info>ul{
        display: flex;
    }
    .item>.itemmb>.info>ul>li{
        margin-left: 10px;
    }
</style>
