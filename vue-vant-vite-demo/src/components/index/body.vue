<template>
    <div class="body">
        <div class="bodyItem" v-for="(item,index) in bodyItem" :key="index" >
            <div class="bodyLeft" @click="dump(item.body,item.comeFrom,item.img)">
                <div class="bodyLeftTop">
                    {{item.title}}
                </div>
                <div class="bodyLeftBottom">
                    <span class="type">{{item.type}}</span>
                    <span class="comeFrom">{{item.comeFrom}}</span>
                    <div class="commentNum">
                        <img class="commentIcon" src="../../assets/img/评论.png" alt="">
                        <span >{{item.commentNum}}</span>
                    </div>
                    
                </div>
            </div>
            <div class="bodyRight">
                <img :src="item.img">
            </div>
        </div>
        
    </div>
</template>
<script>

import {getBody} from "../../api/user"
import request from '../../utils/request'
export default{
    name:"indexBody",
    data(){
        return{
            bodyItem:[{}],
        }
    },
    beforeMount(){
        this.load()
    },
    methods:{
        load(){
            getBody().then(res=>{
                console.log(res) 
                this.bodyItem = res
                console.log(res[0].img)
            })
        },
        dump(body,comeFrom,img){
            console.log(this.bodyItem[0].body) 
            this.$router.push({path:'/detail', query:{body:body,comeFrom:comeFrom,img:img}})
        }
    }
}
</script>
<style lang="less" scoped>
.body{
    
    width: 10rem;
    
    margin-top: 0.6rem;
    margin-bottom: 1.6rem;
    .bodyItem{
        width: 100%;
        height: 2rem;
        margin: 0.3rem auto;
        display: flex;
        justify-content: space-between;
        font-family:"仿宋";
        .bodyLeft{
            display: flex;
            align-items: center;
            width: 5.5rem;
            height: 100%;
            margin: 0 0.3rem 0 0.3rem ;
            flex-flow: row wrap;
            .bodyLeftTop{
                font-size: 0.42rem;
                width: 100%;
                overflow: hidden;
                font-weight: 900;
                align-self: flex-start;
            }
            .bodyLeftBottom{
                width: 100%;
                font-size: 0.25rem;
                height: 0.5rem;
                line-height: 0.5rem;
                display: flex;
                color: #8a8a8a;
                justify-content: space-around;
                align-items: center;
                align-self: flex-end;
                .type{
                    width: 1rem;
                    height: 0.48rem;
                    text-align: center;
                    background-color: rgb(184, 224, 225);
                    color: rgb(128, 180, 204);
                }
                .comeFrom{
                    width: 2.6rem;
                    height: 0.48rem;
                    text-align: center;
                    
                }
                .commentNum{
                    align-items: center;
                    .commentIcon{
                        width: 0.3rem;
                        height: 0.3rem;
                        margin: 0.1rem 0.1rem -0.05rem 0;
                    }
                }
            }
        }
        .bodyRight{
            width: 4rem;
            align-items: center;
            margin: auto 0.3rem;

            img{
                width: 4rem;
                height: 2rem;
            }
        }
    }
    
    
}
</style>