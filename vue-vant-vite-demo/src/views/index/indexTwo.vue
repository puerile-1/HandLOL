<template>
    <div>
      <div class="main">
        <top-nav></top-nav>
        <van-tabs v-model:active="active">
          <van-tab title="动态">
            <topic-top></topic-top>
            <topicBody></topicBody>
            <topic-white></topic-white>
          </van-tab>
          <van-tab title="关注">关注</van-tab>
          <van-tab title="组队">组队</van-tab>
          <van-tab title="城市峡谷">城市峡谷</van-tab>
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
import topNav from '../../components/index/topNav.vue'
import topicTop from '../../components/topic/topicTop.vue'
import topicBody from '../../components/topic/topicBody.vue'
import topicWhite from '../../components/topic/topicWhite.vue'
export default {
  components: {
    topNav,
    topicTop,
    topicBody,
    topicWhite
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
<style lang="css" scoped>
.main {
  width: 10rem;
  height: 100%;
  font-family: '仿宋';
  
}

</style>