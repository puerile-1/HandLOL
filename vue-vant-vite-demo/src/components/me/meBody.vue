<template>
    <div class="meBody">
            <div class="title">
                <div class="titleLeft">
                    <img src="../../assets/img/lollogo.png" class="logo" alt="">
                </div>
                <div class="titleRight">
                    <van-icon name="arrow" size="25" color="#fff"/>
                </div>
            </div>
            <div class="body">
                <div class="bodyTop">
                    <div class="bodyTopLeft">
                        <img class="edg" src="../../assets/img/edg.jpeg" alt="">
                    </div>
                    <div class="bodyTopMid">
                        <span class="gameId">Flechazo</span>
                        <span class="gameAdd">暗影岛 电信 | Lv51</span>
                    </div>
                    <div class="bodyTopRight">
                        <div class="rank">
                            <img class="rankImg" src="../../assets/img/rank.jpeg" alt="">
                        </div>
                        <div class="rankName">
                            <span>最强王者</span>
                            <span>1520胜点</span>
                        </div>
                    </div>
                </div>
                <div class="bodyMid">
                    
                    <div class="guan">
                        <span class="num">2333</span>
                        <span class="label">场次</span>
                    </div> 
                    <div class="guan">
                        <span class="num">48.6%</span>
                        <span class="label">胜率</span>
                    </div>
                    <div class="guan">
                        <span class="num">20</span>
                        <span class="label">五杀</span>
                    </div>
                    <div class="guan">
                        <span class="num">229</span>
                        <span class="label">超神</span>
                    </div>
                </div>
                <div class="line">

                </div>
            </div>
            
            
        
        
    </div>
</template>
<style lang="less" scoped>
.meBody{
    width: 10rem;
    font-family: '仿宋';
    .title{
        display: flex;
        width: 100%;
        height: 1.3rem;
        line-height: 1.3rem;
        background-color: #4abcc7;
        .titleLeft{
            width: 6rem;
            height: 100%;
            
            .logo{
                margin-top: 0.15rem;
                margin-left: 0.2rem;
                width: 3.5rem;
            }
        }
        .titleRight{
            display: flex;
            margin-top: 0.3rem;
            width: 4rem;
            height: 100%;
            margin-left: 5.5rem;
        }
    }
    .body{
        width: 10rem;
        
        .bodyTop{
            display: flex;
            width: 9.8Srem;
            align-items: center;
            margin-top: 0.2rem;
            padding-left: 0.2rem;
            .bodyTopLeft{
                width: 2rem;
                .edg{
                    width: 1.5rem;
                    height: 1.5rem;
                }
            }
            .bodyTopMid{
                width: 5rem;
               
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
                .rank{
                    
                    .rankImg{
                        width: 1.8rem;
                        margin-top:0.2rem;
                        margin-left: 0.8rem;
                    } 
                }
                .rankName{
                        color: #aaa;
                        
                    }
            }
        }
        .bodyMid{
            margin-top: 0.4rem;
            width: 9rem;
            font-size: 0.4rem;
            margin-left: 1rem;
            display: flex;
            .guan{
                display: flex;
                flex: 1;
                flex-flow: column;
                .num{
                    flex: 1;
                    margin-left: 0.05rem;
                }
                .label{
                    flex: 1;
                }
            }
        }
        .line{
            margin: 0.2rem;
            border-bottom: 0.1px solid #eee;
        }
        
    }

}
</style>