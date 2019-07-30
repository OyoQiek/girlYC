<template>
    <div>
        <div class="footer">
            <div class="container">
                <div>
                    <span><b>女神衣橱：</b></span>
                    <span>穿衣搭配导购网</span>
                </div>
                <div>
                    <span><b>功能菜单：</b></span>
                    <ul>
                        <li><a href="javascript:;">关于女神衣橱</a></li>
                        <li><a href="javascript:;">标签</a></li>
                    </ul>
                </div>
                <div>
                    <span><b>友情链接：</b></span>
                    <ul>
                        <li><a href="javascript:;">VLOG视频</a></li>
                        <li><a href="javascript:;">向内行走</a></li>
                        <li><a href="javascript:;">文案黑客</a></li>
                    </ul>
                </div>
            </div>
            <div class="copyright">
                <p class="container">Copyright © 2017-2019	女神衣橱 - 女神衣橱-穿衣搭配导购网 / 版本 V 2.0	赣ICP备14001024号</p>
            </div>
        </div>
    </div>
</template>
<script>
export default {
    
}
</script>
<style scoped>
    .footer{
        box-sizing: border-box;
        height: 163px;
        background: #222;
        border: 1px solid #eaeaea;
        color: #999;
        font-size: 14px;
    }
    .copyright{
        background: #1b1b1b;
        margin-top: 22px;
        padding: 10px 0;
        font-size: 12px;
    }
    .copyright>p{
        text-align: left;
    }
    .footer>.container{
        display: flex;
        flex-flow: column nowrap;
        align-items: flex-start;
        margin-top: 22px;
    }
    .footer>.container>div{
        display: flex;
        margin-top: 8px;
        color: #9b9b9b;
    }
    .footer>.container>div>ul{
        display: flex;
    }
    .footer>.container>div>ul li a{
        display: block;
        color: #818181;
    }
</style>
