<template>
    <div class="topicBody" v-for="(item,index) in bodyItem" :key="index">
        <div class="topicBodyTop">
            <div class="bodyTopLeft">
                <img class="edg" :src="item.avatar" alt="">
            </div>
            <div class="bodyTopMid">
                <div class="selfMessage">
                    <span class="gameId">{{item.name}}</span>
                    <span class="grade">Lv{{item.grade}}</span>
                </div>
                <div class="topicLabel">
                    <span class="label1">LOL{{item.lolRank}}</span>
                    <span class="label2">云顶{{item.cloudRank}}</span>
                    
                </div>
                
            </div>
            <div class="bodyTopRight">
                <div class="guan">
                    关注
                </div>
                <van-icon name="arrow-down" class="icon" />
            </div>
        </div>
        <div class="topicBodyMid">
            <div class="content">
                <span class="title">{{item.content}}</span>
                
            </div>
            <div class="video" v-if="item.video">
                <video :src="item.video" controls :poster="item.videoBg"></video>
            </div>
            <div class="img" v-if="item.img">
                <img :src="'http://localhost:9000/'+item.img" alt="">
            </div>
            <div class="timeAndNum">
                <div class="num">
                    {{item.readNum}}阅
                </div>
                <div class="time">
                    {{item.time}}
                </div>
            </div>
            <div class="commentAndLike">
                <div class="send">
                    <van-icon name="share-o" size="20" />
                    <span class="number">{{item.sendNum}}</span>
                </div>
                <div class="comment">
                    <van-icon name="comment-o" size="20" />
                    <span class="number">{{item.commentNum}}</span>
                </div>
                <div class="like">
                    <van-icon name="good-job-o" size="20" />
                    <span class="number">{{item.shareNum}}</span>
                </div>
            </div>
            <div class="line2">

            </div>
        </div>

    </div>
</template>
<script>
import axios from "axios"
import {getArticle} from "../../api/article"
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
            getArticle().then(res=>{
                console.log(res)
                this.bodyItem = res
                console.log(res[0].img)
                
            })
        }
    }
}
</script>
<style lang="less" scoped>
.topicBody{
    font-family: '仿宋';
    width: 10rem;
    height: 11.1rem;
    .topicBodyTop{
            display: flex;
            width: 9.8rem;
            margin-top: 0.2rem;
            padding-left: 0.2rem;
            .bodyTopLeft{
                
                width: 2rem;
                .edg{
                    margin-top: 0.2rem;
                    border-radius: 0.75rem;
                    width: 1.5rem;
                    height: 1.5rem;
                }
            }
            .bodyTopMid{
                width: 7rem;
               
                display: flex;
                flex-flow: column;
                .selfMessage{
                    display: flex;
                    align-items: center;
                    .gameId{
                        margin-left: 0.2rem;

                        font-size: 0.5rem;
                    }
                    .grade{
                        font-size: 0.3rem;
                        color: #ff80c0;
                        background-color: rgb(166, 208, 245);
                        border-radius: 0.1rem;
                        align-items: center;
                        margin: 0.3rem;
                        padding: 0.1rem;
                    }
                }
                
                .topicLabel{
                    display: flex;
                    justify-content: space-around;
                    font-size: 0.1rem;
                    width: 4.2rem;
                    .label1{
                        align-items: center;
                        color: #0084ff;
                        border-radius: 0.1rem;
                        font-size: 0.2rem;
                        background-color: #9bd6fb;
                        padding: 0.1rem;
                    }
                    .label2{
                        align-items: center;
                        color: #e0323e;
                        border-radius: 0.1rem;
                        font-size: 0.2rem;
                        background-color: #67f2f2;
                        padding: 0.1rem;
                    }
                }
            }
            .bodyTopRight{
                width: 3rem;
                font-size: 0.4rem;
                display: flex;
                align-items: center;
                margin-right: 0.1rem;
                .guan{
                    
                    padding: 0.05rem 0.2rem 0.05rem 0.2rem;
                    
                    border:1px solid #111;
                    
                }
                .icon{
                    margin-left: 0.4rem;
                }
            }
        
    }
    .topicBodyMid{
        width: 10rem;
        height: 5rem;
        .content{
            width: 100%;
            height: 1rem;
            line-height: 1rem;
            font-size: 0.5rem;
            .title{
                margin: 0.5rem;
            }
        }
        .video{
            width: 10rem;
            video{
                margin-left: 0.25rem;
                width: 9.5rem;
                height: 5.7rem;
            }
        }
        .img{
            width: 10rem;
            img{
                margin-left: 0.25rem;
                width: 9.5rem;
                height: 5.7rem;
            }
        }
        .timeAndNum{
            font-size:0.3rem;
            width: 10rem;
            height: 1rem;
            display: flex;
            align-items: center;
            color: #ccc;
            border-bottom: 1px solid #ccc;
            .num{
               margin-left: 0.5rem; 
            }
            .time{
                display: flex;
                margin-left: 0.5rem;
            }
        }
        .commentAndLike{
            font-size:0.5rem;
            color: rgb(129, 129, 129);
            width: 10rem;
            height: 1rem;
            line-height: 1rem;
            display: flex;
            justify-content: space-around;
            margin-top: 0.2rem;
            .number{
                margin-left: 0.15rem;
            }
        }
        .line2{
            width: 10rem;
            height:0.2rem;
            margin-top: 0.1rem;
            background-color: #eee;
        }
    }
}
</style>