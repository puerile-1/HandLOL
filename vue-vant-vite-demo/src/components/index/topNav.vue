<template>
  <div class="topNav">
    <div class="topLeft">
      <img src="../../assets/img/列表2.png" class="icon"  @click="change" v-if="open_close">
      <img src="../../assets/img/列表2.png" class="icon" @click="change" v-else>
    </div>
    <div class="topCenter">
      <van-search class="search" shape="round" v-model="value" placeholder="请输入搜索关键词" />
    </div>
    
  </div>
  
</template>


<script>
import { ref } from 'vue';
export default {
 name: 'topNav',
 data() {
  return {
    active: ref('file'),
    openStatus: false,
    open_close: false,
  }
 },
 methods: {
  change() {
   this.openStatus = !this.openStatus
   this.$emit("Status",this.openStatus)
   if (this.openStatus) {
    setTimeout(() => {
     this.open_close = false
    }, 1000)
   } else {
    setTimeout(() => {
     this.open_close = true
    }, 1000)
   }
  },
 },
}
</script>

<style lang="less" scoped>
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
</style>
