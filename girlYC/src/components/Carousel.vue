<template>
    <div>
        <div id="carousel" :style="{width:w+'px'}" @mouseenter="stop" @mouseleave="start">
            <ul class="carousel" :class="ulClass" :style="ulStyle">
                <li>
                    <a :class="{active:-1==i}">
                        <div class="notice">
                            <span>系列单品</span>
                            <span>2017.10.15</span>
                            <p>秋冬必备打底衫 我只信赖针织</p>
                        </div>
                        <div class="mask"></div>
                    </a>
                </li>
                <li>
                    <a :class="{active:0==i}">
                        <div class="notice">
                            <span>系列单品</span>
                            <span>2017.10.14</span>
                            <p>来双休闲鞋，出去踏秋吧</p>
                        </div>
                        <div class="mask"></div>
                    </a>
                </li>
                <li>
                    <a :class="{active:1==i}">
                        <div class="notice">
                            <span>系列单品</span>
                            <span>2017.10.14</span>
                            <p>选好色彩，让秋凉靠边站</p>
                        </div>
                        <div class="mask"></div>
                    </a>
                </li>
                <li>
                    <a :class="{active:2==i}">
                        <div class="notice">
                            <span>系列单品</span>
                            <span>2017.10.15</span>
                            <p>秋冬必备打底衫 我只信赖针织</p>
                        </div>
                        <div class="mask"></div>
                    </a>
                </li>
                <li>
                    <a :class="{active:3==i}">
                        <div class="notice">
                            <span>系列单品</span>
                            <span>2017.10.14</span>
                            <p>来双休闲鞋，出去踏秋吧</p>
                        </div>
                        <div class="mask"></div>
                    </a>

                </li>
                <li>
                    <a :class="{active:4==i}">
                        <div class="notice">
                            <span>系列单品</span>
                            <span>2017.10.14</span>
                            <p>选好色彩，让秋凉靠边站</p>
                        </div>
                        <div class="mask"></div>
                    </a>
                </li>
                <li>
                    <a :class="{active:5==i}">
                        <div class="notice">
                            <span>系列单品</span>
                            <span>2017.10.15</span>
                            <p>秋冬必备打底衫 我只信赖针织</p>
                        </div>
                        <div class="mask"></div>
                    </a>
                </li>
            </ul>
            <div class="carousel_control">
                <a @click="move(-1)"><img src="images/carousel-arrow-left.png"/></a>
                <a @click="move(1)"><img src="images/carousel-arrow-right.png"/></a>
            </div>
            <ul class="carousel_indicators">
                <li @click="moveTo(1)" :class="{active:1==i}"></li>
                <li @click="moveTo(2)" :class="{active:2==i}"></li>
                <li @click="moveTo(3)" :class="{active:3==i}"></li>
            </ul>
        </div>   
    </div>
</template>
<script>
import { setTimeout, clearInterval, setInterval } from 'timers';
export default {
    data(){
        return{
            i:1,
            posit:'translate('+(-(1110-(window.innerWidth-1110)/2))+'px)',
            w:window.innerWidth,
            canClick:true,
            ulClass:{hasTrans:true},
            // bannerStyle:{
            //     width:100%+'%',
            //     transform:posit,
            // }
        }
    },
    created(){
        window.addEventListener("resize",()=>{
            this.w=window.innerWidth;
        });
        this.start();
    },
    methods:{
        move(i){
            if(this.canClick){
                this.i+=i;
                this.canClick=false;
                if(this.i==0){
                    setTimeout(()=>{
                        this.i=3;
                        this.ulClass.hasTrans=false;
                        setTimeout(()=>{
                            this.ulClass.hasTrans=true;
                            setTimeout(()=>{
                                this.canClick=true;
                            },200)
                        },50)
                    },300)
                }else if(this.i==4){
                    setTimeout(()=>{
                        this.i=1;
                        this.ulClass.hasTrans=false;
                        setTimeout(()=>{
                            this.ulClass.hasTrans=true;
                            setTimeout(()=>{
                                this.canClick=true;
                            },200)
                        },50)
                    },300)
                }
                this.canClick=true;
            }
        },
        moveTo(i){
            if(this.canClick){
                this.i=i;
                this.canClick=false;
                setTimeout(() => {
                    this.canClick=true;
                }, 600);
            }
        },
        stop(){
            clearInterval(this.timer);
        },
        start(){
            this.timer=setInterval(()=>{
                this.move(1);
            },3000)
        }
    },
    computed:{
        //修饰所有图片的父元素
        ulStyle(){
            var width=this.w*5+'px';
            // var transition="all .3s linear";
            var transform="translate("+(-(1110-(window.innerWidth-1110)/2))+"px)"
            var marginLeft=-this.i*((1110-(window.innerWidth-1110)/2)+(window.innerWidth-1110)/2)+'px';
            return {width,marginLeft,transform}
        }
    },
}
</script>

<style scoped>
    @import url('../assets/carousel.css');
</style>