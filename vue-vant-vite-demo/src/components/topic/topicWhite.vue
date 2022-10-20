<template>
    <div class="topicWhite">
        <div class="add" @click="publish">
            <img class="img" src="../../assets/img/加.png" alt="">
        </div>
    </div>
</template>
<script>
export default{
    methods:{
        publish(){
            this.$router.push('/publish')
        }
    }
}
</script>
<style lang="less" scoped>
.topicWhite{
    width: 10rem;
    height: 1.5rem;
    .add{
        width: 1.5rem;
        height: 1.5rem;
        position:fixed;
        bottom: 2rem;
        border-radius: 0.75rem;
        left: 8rem;
        background-color: #111;
        
        .img{
            width: 0.8rem;
            margin-top: 0.38rem;
            margin-left: 0.32rem;
            height: 0.8rem;
        }
    }
}
</style>