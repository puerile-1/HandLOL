<template>
    <div class="indexOne">
      
      <div class="main">
        
        <div class="left_main" :class="{ left_main_show: !openStatus }">
          <div class="leftMainBody" v-if="openStatus">
            <table-side></table-side>
          </div>
        </div>
        <div class="right_main">
          
          <div class="open_close">
            <van-overlay :show="show" @click="change" class="overlay"/>
            <div class="topNav">
              <div class="topLeft">
                <img src="../../assets/img/列表2.png" class="icon"  @click="change" v-if="open_close">
                <img src="../../assets/img/列表2.png" class="icon" @click="change" v-else>
              </div>
              <div class="topCenter">
                <van-search class="search" shape="round" v-model="value" placeholder="请输入搜索关键词" />
              </div>
              
            </div>
            <div class="topRight" >
                <span class="navBtn active" >推荐</span>
                <span class="navBtn ">赛事</span>
                <span class="navBtn">LOL</span>
                <span class="navBtn">云顶</span>
            </div>
            <carousel :slides="slides" :inv="invTime"></carousel>
            <index-Body></index-Body> 
            <van-tabbar v-model="active" route>
              <van-tabbar-item name="home" icon="home-o" to="/indexOne">首页</van-tabbar-item>
              <van-tabbar-item name="file" icon="hot-o" dot to="/indexTwo">圈子</van-tabbar-item>
              <van-tabbar-item name="message" icon="friends-o"  to="/indexThree">消息</van-tabbar-item>
              <van-tabbar-item name="me" icon="contact"  to="indexFour">我的</van-tabbar-item>
          </van-tabbar>
          </div>
        </div>
      </div>
      
    </div>
    
</template>

<script>
import { reactive, toRefs } from 'vue';
import indexBody from '../../components/index/body.vue'
import carousel from '../../components/lunbo/Carousel.vue'
import tableSide from '../../components/tableSide.vue'
import img from '../../assets/img/轮播1.jpeg'
import img2 from '../../assets/img/轮播2.jpeg'
import img3 from '../../assets/img/轮播3.jpeg'
import img4 from '../../assets/img/轮播4.jpeg'


export default {
  components: {
    carousel,
    indexBody,
    tableSide
  },
  setup() {
    const state = reactive({
      active: 'home',
      invTime: 2000,
      openStatus: false,
      open_close: false,
      show: false,
      slides: [
        {
          src:img,
          title:'图1',
        },
        {
          src:img2,
          title:'图2'
        },
        {
          src:img3,
          title:'图3'
        },
        {
          src:img4,
          title:'图4'
        }
      ]
    })
    const change=()=> {
      state.openStatus = !state.openStatus
        state.show = !state.show
      
      if (state.openStatus) {
        setTimeout(() => {
        state.open_close = false
        }, 1000)
      } else {
        setTimeout(() => {
        state.open_close = true
        }, 1000)
      }
    }
    return { 
      ...toRefs(state),
      change
    };
  },
};
</script>
<style lang="less" scoped>
.main {
 display: flex;
 width: 100%;
 font-family: '仿宋';
 .left_main {
  margin: 0;
  width: 300px;
  height: 100vh;
  text-align: center;
  transition: width 0.5s;
  background-image: url('../../assets/img/back.jpg') ;
  .leftMainBody{
    width: 100%;
    
  }
 }
 .right_main {
  width: 10rem;
  flex: 1;
  
  position: relative;
  .open_close {
   position: absolute;
   left: 0;
   top: 0;
   .overlay{
     position: absolute;
    left: 0;
    top: 0;
   }
   .topNav{
      width: 10rem;
      height: 1rem;
      font-family:"仿宋";
      margin: 0.3rem auto;
      display: flex;
      .topLeft{
        align-items: center;
        width: 1.5rem;
        display: flex;
        height: 1rem;
        margin-left: 0.5rem;
        .icon{
          width: 0.7rem;
          height: 0.7rem;
          display: flex;
          align-items: center;
        }
      }
      .topCenter{
        width: 9rem;
        height: 1rem;
        display: flex;
        align-items: center;
        
      }
      
    }
    .topRight{
        width: 8rem;
        display: flex;
        align-items: center;
        justify-content: space-between;
        margin: 0.2rem auto;
        font-size: 0.45rem;
        .active{
          font-weight: 900;
        }
      }
  }
 }
 .left_main_show {
  width: 0px;
 }
}
</style>