<template>
    <div class="topicTop">
        <div class="line"></div>
        <div class="topicNav">
            <div class="topicNavLeft">
                <span>| 热门话题</span>
            </div>
            <div class="topicNavRight">
                <span>查看更多话题</span>
                <van-icon name="arrow" size="20" color="#ccc"/>
            </div>
        </div>
        <div class="topicImg">
            <img src="../../assets/img/bg.jpg" alt="">
        </div>
        <div class="topicTitle">
            <div class="titleLeft">
                <span>jcc吸引你的巨龙羁绊</span>
                <span>庆典皮肤'比惨'大会</span>
                <span>手游无限乱斗来袭</span>
            </div>
            <div class="titleRight">
                <span>手游端午迅走竞速</span>
                <span>哪些英雄爱过端午</span>
                <span>夏季赛6月10日见</span>
            </div>
        </div>
        <div class="line2">

        </div>
    </div>
</template>
<style lang="less" scoped>
.topicTop{
    width: 10rem;
    .line{
        border-bottom: 0.5px solid #ccc;
        margin : 0.2rem auto;
    }
    .topicNav{
        font-size: 0.4rem;
        display: flex;
        align-items: center;
        justify-content: space-between;
        .topicNavLeft{
            margin-left: 0.2rem;
            font-weight: 900;
            display: flex;
            align-items: center;
        }
        .topicNavRight{
            display: flex;
            color: #ccc;
        }
    }
    .topicImg{
        width: 10rem;
        height: 4.5rem;
        img{
            width: 9.5rem;
            height: 4.5rem;
            margin-left: 0.25rem;
            border-radius: 0.1rem;
        }
    }
    .topicTitle{
        margin-top: 0.3rem;
        width: 10rem;
        display: flex;
        .titleLeft{
            width: 5rem;
            font-size: 0.4rem;
            display: flex;
            flex-flow: column;
            margin-left: 1rem;
        }
        .titleRight{
            width: 5rem;
            font-size: 0.4rem;
            display: flex;
            flex-flow: column;
            margin-left: 0.5rem; 
        }
    }
    .line2{
        width: 10rem;
        height:0.2rem;
        margin-top: 0.1rem;
        background-color: #eee;
    }
}

</style>