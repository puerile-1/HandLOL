<template>
    <div class="sideBar">

        <div class="sidebarTop">
            <div class="topLine">
                <van-icon name="scan" color="#ffb366"/>
                <img class="touX" src="../assets/img//touX.jpg" >
                <van-icon name="edit" color="#ffb366"/>
            </div>
            <div class="TopName">
                <span class="name">浅挚半兮</span>
                <span class="grade">Lv9</span>
            </div>
            <div class="topLabel">
                <span class="label">英雄联盟</span>
                <span class="label">云顶</span>
                <span class="label">金铲铲</span>
            </div>
            
        </div>
        <div class="sidebarBody">
            <div class="body">
                <van-icon name="comment-o" />
                <span class="item">我的评论</span>
            </div>
            <div class="body">
                <van-icon name="envelop-o" />
                <span class="item">与我相关</span>
            </div>
            <div class="body">
                <van-icon name="point-gift-o" />
                <span class="item">活动中心</span>
                <van-badge :content="20" />
            </div>
            <div class="body">
                <van-icon name="sign" />
                <span class="item">我的任务</span>
            </div>
            <div class="body">
                <van-icon name="star-o" />
                <span class="item">我的收藏</span>
            </div>
        </div>
        <div class="sidebarBottom">
            <div class="body">
                <van-icon name="setting-o" />
                <span>设置</span>
            </div>
        </div>
    </div>
</template>
<script>
export default{
    
}
</script>
<style lang="less" scoped>
.sideBar{
    width: 6rem;
    height: 27rem;
    font-size: 0.5rem;
    margin: 0 auto;
    font-family: '仿宋';
    color: #ffffff;
    .sidebarTop{
        width: 5rem;
        height: 2.5rem;
        padding: 0.5rem;
        border: 1px solid #ffb366;
        margin: 2rem auto;
        
        .topLine{
            width: 100%;
            margin: 0 auto;
            display: flex;
            justify-content: space-between;
            align-items: baseline;
            position: relative;
            .touX{
                width: 1.5rem;
                height: 1.5rem;
                position: absolute;
                top: -1.3rem;
                left: 1.8rem;
            }
        }
        .TopName{
            width: 100%;
            margin: 0.5rem auto;
            .name{
                align-items: center;
            }
            .grade{
                font-size: 0.3rem;
                color: #ff80c0;
                background-color: aliceblue;
                border-radius: 0.1rem;
                align-items: center;
                margin: 0.3rem;
                padding: 0.1rem;
            }
        }
        .topLabel{
            display: flex;
            justify-content: space-around;
        
            width: 100%;
            .label{
                align-items: center;
                color: #0084ff;
                border-radius: 0.1rem;
                font-size: 0.3rem;
                background-color: #ffffff;
                padding: 0.1rem;
            }
        }
    }
    .sidebarBody{
        
        width: 5rem;
        height: 10rem;
        text-align: left;
        
        .body{
            width: 100%;
            margin: 0.5rem auto;

        }
    }
    .sidebarBottom{
        margin-top: 2.8rem;
        width: 5rem;
        height: 30%;
        text-align: left;
        .body{
            width: 100%;
            margin: 0 auto;
        }
    }
}
</style>