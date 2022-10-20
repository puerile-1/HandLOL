<template>
    <div class="sendMessage">
        
        <div class="top">
            <div class="topLeft">
                <van-icon name="revoke" size="25" @click="$router.go(-1)"/>
            </div>
            <div class="topMid">
                <span>{{name}}</span>
            </div>
            <div class="topRight">
                <van-icon name="ellipsis" size="25" />
            </div>
        </div>

        <div class="bottom">
            <div class="bottomLeft">
                <van-icon name="volume-o" size="28"/>
            </div>
            <div class="bottomMid">
                <input class="input" type="text" @click="show"/>
            </div>
            <div class="bottomRight">
                <van-icon name="smile-o" size="28" />
                <van-icon name="add-o" size="28"/>
            </div>
        </div>
        <van-number-keyboard
            v-model="value"
            :show="show"
            :maxlength="6"
            @blur="show = false"
            />
    </div>
    
</template>
<script>
export default{
    data(){
        return {
            name:'a',
            show:false,
            value:1
        }
    },
    beforeMount(){
        this.load()
    },
    methods:{
        load(){
            this.name = this.$route.query.names
        },
        show(){
            this.show = true
        },
        
    }

}
</script>
<style lang="less" scoped>

.sendMessage{
    width: 10rem;
    font-family: '仿宋';
    .top{
        width: 100%;
        height: 1.4rem;
        display: flex;
        line-height: 1.4rem;
        justify-content: space-between;
        background-color: rgb(247, 247, 247);
        .topLeft{
            margin-left: 0.3rem;
            
        }
        .topMid{
            font-size: 0.65rem;
        }
        .topRight{
            margin-right: 0.3rem;

        }
    }
    
    
    .bottom{
        background-color: rgb(247, 247, 247);
        
        width: 100%;
        height: 1.6rem;
        display: flex;
        justify-content: space-between;
        position: fixed;
        left: 0;
        bottom: 0;
        .bottomLeft{
            width: 1.5rem;
            display: flex;
            margin-left: 0.3rem;
            align-items: center;
        }
        .bottomMid{
            width: 7rem;
            display: flex;
            
            align-items: center;
            .input{
                width: 6.5rem;
                height: 1rem;
                border:1px solid #fff;
                border-radius: 0.3rem;
            }
        }
        .bottomRight{
            width: 2.5rem;
            display: flex;
            margin-left: 0.3rem;
            margin-right: 0.3rem;
            align-items: center;
            justify-content: space-around;
        }
    }
}
</style>