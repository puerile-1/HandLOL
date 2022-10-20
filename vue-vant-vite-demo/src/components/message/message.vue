<template>
    <div class="friends" v-for="(item,index) in bodyItem" :key="index">
        <div class="friendsLeft">
            <img :src="item.img" class="touX">
        </div>
        <div class="friendsMid" @click="send(item.name)">
            <div class="rightTop">
                {{item.name}}
            </div>
            <div class="rightBottom">
                {{item.content}}
            </div>
        </div>
        <div class="friendsRight">
            {{item.time}}
        </div>
    </div>
</template>
<script>
import {getMessage} from "../../api/message"
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
            getMessage().then(res=>{
                console.log(res)
                
                this.bodyItem = res
                console.log(res[0].img)
                
                

            })
        },
        send(name){
            this.$router.push({path:'/sendMessage', query:{names:name}})
        }
    
    }
}
</script>
<style lang="less" scoped>
.friends{
    width: 10rem;
    height: 2rem;
    display: flex;
    font-size: 0.5rem;
    .friendsLeft{
        width: 1.5rem;
        height: 1.5rem;
        .touX{
            width: 90%;
            height: 90%;
            margin: 0.2rem;
        }
    }

    .friendsMid{
        margin-left: 0.4rem;
        width: 7rem;
        height: 1.5rem;
        margin-top: 0.2rem;
        border-bottom: 1px solid #eee;
        
        .rightBottom{
            color: #ccc;
            font-size: 0.35rem;
            margin-top: 0.2rem;
        }
    }
    .friendsRight{
        width: 1.5rem;
        height: 1.5rem;
        color: #ccc;
        margin-top: 0.2rem;
        border-bottom: 1px solid #eee;
    }
}
</style>