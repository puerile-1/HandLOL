<template>
    <div class="indexFour">
        <div class="nav">
          <me-top-nav></me-top-nav>
        </div>
        <div class="body">
          <me-body></me-body>
        </div>
        <div class="record">
          <me-record></me-record>
        </div>
        
    </div>
    <van-tabbar v-model="active" route>
          <van-tabbar-item name="home" icon="home-o" to="/indexOne">首页</van-tabbar-item>
          <van-tabbar-item name="file" icon="hot-o" dot to="/indexTwo">圈子</van-tabbar-item>
          <van-tabbar-item name="message" icon="friends-o"  to="/indexThree">消息</van-tabbar-item>
          <van-tabbar-item name="me" icon="contact"  to="/indexFour">我的</van-tabbar-item>
      </van-tabbar>
</template>
<script>
import { ref } from 'vue';
import meTopNav from '../../components/me/meTopNav.vue'
import meBody from '../../components/me/meBody.vue';
import meRecord from '../../components/me/meRecord.vue';

export default {
  components:{
    meTopNav,
    meBody,
    meRecord
},
  setup() {
    const active = ref('me');
    return { active };
  },
};
</script>
<style lang="less" scoped>
.indexFour{
  font-family: '仿宋';
}
</style>