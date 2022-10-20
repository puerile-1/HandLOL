<template>
    <div>
      <div class="main">
        <top-nav></top-nav>
        <van-tabs v-model:active="active">
          <van-tab title="消息">
            <message></message>
          </van-tab>
          <van-tab title="好友">
            <friends></friends>
          </van-tab>
          <van-tab title="组队">内容 3</van-tab>
          <van-tab title="关注">内容 4</van-tab>
        </van-tabs>
        <van-tabbar v-model="active" route>
          <van-tabbar-item name="home" icon="home-o" to="/indexOne">首页</van-tabbar-item>
          <van-tabbar-item name="file" icon="hot-o" dot to="/indexTwo">圈子</van-tabbar-item>
          <van-tabbar-item name="message" icon="friends-o"  to="/indexThree">消息</van-tabbar-item>
          <van-tabbar-item name="me" icon="contact"  to="indexFour">我的</van-tabbar-item>
      </van-tabbar>
    </div>
      
  </div>
    
</template>

<script>
import { reactive, toRefs } from 'vue';
import message from '../../components/message/message.vue'
import friends from '../../components/message/friends.vue'
import topNav from '../../components/index/topNav.vue'
export default {
  components: {
    topNav,
    friends,
    message
  },
  setup() {
    const state = reactive({
      active: 'home',
    })
    
    return { 
      ...toRefs(state),
    };
  },
};
</script>
<style lang="less" scoped>
.main {
  width: 10rem;
  height: 100%;
  font-family: '仿宋';
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
  }
}
</style>