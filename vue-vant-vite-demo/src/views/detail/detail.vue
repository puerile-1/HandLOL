<template>
    <div class="detail">
        <div class="detailTop">
            <van-icon class="back" name="arrow-left" size="25"  @click="$router.go(-1)"/>
            <span class="title" >详情</span>
            <img src="../../assets/img/设置.png" class="icon"/>
        </div>
         <div class="bodyTop">
            <div class="bodyTopLeft">
                <img class="edg" :src="img" alt="">
            </div>
            <div class="bodyTopMid">
                <span class="gameId">{{comeFrom}}</span>
                <span class="gameAdd">发布于一小时前</span>
            </div>
            <div class="bodyTopRight">
                <div class="guan">
                    关注
                </div>
                
            </div>
        </div>
        <div class="body">
            {{name}}
        </div>
    </div>
</template>
<script>
export default{
    data(){
        return {
            name:'a',
            img:'',
            comeFrom:''
            
        }
    },
    beforeMount(){
        this.load()
    },
    methods:{
        load(){
            this.name = this.$route.query.body
            this.img = this.$route.query.img
            this.comeFrom = this.$route.query.comeFrom
        },
        
        
    }

}
</script>
<style lang="less" scoped>
.detail{
    .detailTop{
        display: flex;
        margin-top: 0.2rem;
        align-items: center;
        font-size: 0.55rem;
        justify-content: space-between;
        .back{
            margin-left: 0.2rem;
        }
        .title{
            margin-left:0.2rem ;
        }
        .icon{
            width: 0.7rem;
            height: 0.7rem;
            margin-right: 0.2rem;
        }
    }
    .bodyTop{
        display: flex;
        width: 9.8Srem;
        align-items: center;
        margin-top: 0.2rem;
        padding-left: 0.2rem;
        .bodyTopLeft{
            margin-left: 0.2rem;
            width: 2rem;
            .edg{
                width: 1rem;
                height: 1rem;
            }
        }
        .bodyTopMid{
            width: 6rem;
            
            display: flex;
            flex-flow: column;
            .gameId{
                font-size: 0.5rem;
            }
            .gameAdd{
                font-size: 0.3rem;
                color: #aaa;
            }
        }
        .bodyTopRight{
            width: 4rem;
            font-size: 0.4rem;
            margin-left: 0.5rem;
            .guan{
                    width: 0.8rem;
                    padding: 0.05rem 0.2rem 0.05rem 0.2rem;
                    margin-left: 0.8rem;
                    border:1px solid #111;
                    
                }
        }
    }
    .body{
        margin: 0 auto;
        width: 9rem;
        font-size: 0.5rem;
    }
}
</style>