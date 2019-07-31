<template>
    <div>
        <my-header/>
        <div class="detail-content container">
            <div class="bg">
                <page/>
            </div>
            <div class="tagdiv">
                <div><span>标签云</span></div>
                <div>
                    <ul>
                        <li><a href="javascrip:;">T恤</a></li>
                        <li><a href="javascrip:;">休闲搭配</a></li>
                        <li><a href="javascrip:;">卫衣</a></li>
                        <li><a href="javascrip:;">外套</a></li>
                        <li><a href="javascrip:;">小性感搭配</a></li>
                        <li><a href="javascrip:;">少淑搭配</a></li>
                        <li><a href="javascrip:;">潮人搭配</a></li>
                        <li><a href="javascrip:;">衬衫</a></li>
                        <li><a href="javascrip:;">裙子</a></li>
                        <li><a href="javascrip:;">连衣裙</a></li>
                        <li><a href="javascrip:;">针织衫</a></li>
                        <li><a href="javascrip:;">更多</a></li>
                    </ul>
                </div>
            </div>
        </div>


        <Footer/>
    </div>
</template>
<script>
import page from '../components/page/py/23083'
export default {
    components:{
        page
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
    .detail-content>.tagdiv{
        width: 340px;
        box-sizing: border-box;
        padding: 16px;
        background: #fff;
        position: absolute;
        right: -10px;
        top: 30px;
    }
    .detail-content>.tagdiv div:first-child{
        border-bottom: 1px solid #ddd;
        font-size: 15px;
        position: relative;
        text-align: left;
    }
    .detail-content>.tagdiv div:first-child span{
        border-bottom: 1px solid #000;
        display: inline-block;
        padding-bottom:5px;
        padding-right: 15px;
        color: #3f3f3f;
        font-weight: bold;
    }
    .detail-content>.tagdiv div:nth-child(2) ul{
        display: flex;
        flex-flow: row wrap;
        margin-top: 8px;
        padding-right: 38px;
    }
    .detail-content>.tagdiv div:nth-child(2) ul li a{
        display: block;
        padding: 5px 8px;
        margin: 0 6px 6px 0;
        transition: all .1s linear;
        color: #777;
        border: 1px solid #ddd;
        font-size: 14px;
    }
    .detail-content>.tagdiv div:nth-child(2) ul li a:hover{
        background: #000;
        color: #fff;
        border: 1px solid #fff;
    }
</style>
