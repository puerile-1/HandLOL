<template>
    <div class="meRecord" v-for="(item,index) in bodyItem" :key="index">
        <div class="bodyItem" >
            <div class="recordLeft">
                <img class="img" :src="item.img" alt="">
            </div>
            <div class="recordMid">
                <span class="victory" :data-value="item.outcome" >{{item.outcome}}</span>
                <span class="mode">{{item.mode}}</span>
            </div>
            <div class="recordRight">
                <span class="kda">{{item.kda}}</span>
                <van-icon name="arrow" size="25" color="#ccc" class="icon"/>
            </div>
        </div>
        
    </div>
</template>
<script>
import {getRecords} from "../../api/record"
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
            getRecords().then(res=>{
                console.log(res)
                
                this.bodyItem = res
                console.log(res[0].img)
                
                

            })
        }
    }
}
</script>
<style lang="less" scoped>
.meRecord{
    width: 10rem;
    height: 1.5rem;
    display: flex;
    align-items: center;
    .bodyItem{
        display: flex;
        .recordLeft{
            display: flex;
            align-items: center;
            width: 1rem;
            margin-left: 0.2rem;
            .img{
                width: 1rem;
                border-radius: 0.5rem;
            } 
        } 
        .recordMid{
            display: flex;
            align-items: center;
            width: 5.8rem;
            height: 1.5rem;
            
            font-size: 0.45rem;
            .victory[data-value="胜利"]{
                margin-left: 0.4rem;
                color: aqua;
            }
            .victory[data-value="失败"]{
                margin-left: 0.4rem;
                color: orangered;
            }
            .mode{
                color: #aaa;
                margin-left: 0.4rem;
            }
        }
        .recordRight{
            display: flex;
            align-items: center;
            width:3rem;
            .kda{
                width: 2rem;
                color:#aaa;
                font-size: 0.45rem;
            }
            .icon{
                width: 1rem;
                margin-left: 0.3rem;
            }
        }
    }
   
}
</style>