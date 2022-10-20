<template>
    <div class="friends" v-for="(item,index) in bodyItem" :key="index">
        <div class="friendsItem" @click="send(item.name)">
            <div class="friendsLeft">
                <img :src="item.img" class="touX">
            </div>
            <div class="friendsRight">
                <span class="name">{{item.name}}</span>
                
            </div>
        </div>
    </div>
</template>
<script>
import {getMessage} from "../../api/message"
import router from '../../router'
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
    font-size: 0.5rem;
    
    .friendsItem{
        display: flex;
        width: 10rem;
        height: 2rem;
        justify-content: space-between;
        .friendsLeft{
            width: 2rem;
            height: 2rem;
            align-items: center;
            .touX{
                width: 1.5rem;
                height: 1.5rem;
                margin: 0.25rem;
            }
        }


        .friendsRight{
            align-items: center;
            width: 8rem;
            height: 2rem;
            border-bottom: 1px solid #eee;
            position: relative;
            .name{
                width: 3rem;
                height: 0.5rem;
                position: absolute;
                top: 0.65rem;
                left: 0.4rem;
            }
        }
    }
}
</style>