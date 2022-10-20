<template>
    <div class="meTopNav">
        <div class="top">
            <div class="nav">
                <div class="navLeft">
                    <img src="../../assets/img/列表2.png" class="icon"/>
                </div>
                <div class="navRight">
                    <img src="../../assets/img/设置.png" class="icon"/>
                </div>
            </div>
            <div class="person">
                <div class="personLeft">
                    <div class="username">
                        <span class="name">{{userInfo.name}}</span>
                        <span class="grade">Lv{{userInfo.grade}}</span>
                    </div>
                    <div class="id">
                        <span class="idNum">掌盟号:{{userInfo.id}}</span>
                    </div>
                    <div class="see">
                        <div class="guan">
                            <span class="num">{{userInfo.guanNum}}</span>
                            <span class="label">关注</span>
                        </div> 
                        <div class="guan">
                            <span class="num">{{userInfo.fenNum}}</span>
                            <span class="label">粉丝</span>
                        </div>
                        <div class="guan">
                            <span class="num">{{userInfo.fangNum}}</span>
                            <span class="label">访客</span>
                        </div>
                    </div>
                </div>
                <div class="personRight">
                    <div class="tou">
                        <img class="touX" :src="userInfo.avatar" alt="">
                    </div>
                    <div class="update" @click.stop="uploadHeadImg">
                        <span class="caption">更改头像</span>
                    </div>
                    
                    <input type="file" accept="image/*" @change="handleFile" id="a" class="hiddenInput"/>
                </div>
            </div>
        </div>
        
    </div>
</template>
<script>
import axios from 'axios'
import img from "../../assets/img/touX.jpg"

export default{
    data () {
        return {
            userInfo: {
            avatar: localStorage.getItem('avatar'),
            name: localStorage.getItem('name'),
            grade: localStorage.getItem('grade'),
            id: '011792718',
            guanNum:13,
            fenNum:14,
            fangNum:52
            }
        }
    },
    methods: {
        uploadHeadImg () {
        // 实现隐藏被点击的效果, 这样就可以不用修改input的样式
            this.$el.querySelector('.hiddenInput').click()
        },
        handleFile (e) {
            let $target = e.target || e.srcElement
            // 获取到上传的file
            let file = $target.files[0]
            console.log(file)
            // 创建FileReader的实例用于读取文件
            let reader = new FileReader()

            // 生成表单格式
            let param = new FormData()
            // 加入参数字段
            param.append('file', file)
            let name = localStorage.getItem('name')
            param.append('name', name)
            // 无法直接查看param,可以用get的方法查看
            console.log(param.get('file'))
            
            // axios请求
            axios.post('http://localhost:9000/api/avatar/add', param, {
                // application/x-www-form-urlencoded：默认编码方式
                // multipart/form-data: 设置指定传输数据为二进制数据，例如图片、mp3、文件
                // text/plain：纯文本的传输。空格转换为“+”，但不支持特殊字符编码。
                headers: { 'Content-Type': 'multipart/form-data' }
            }).then(res => {
                // 后端文件存储完成后再进行图片的读取操作
                // 读取file文件作为base64格式
                reader.readAsDataURL(file)
            })
            
            // 读取成功的操作  ( 更换头像 )
            reader.onload = data => {
                let res = data.target || data.srcElement
                // res.result 为图片的base64格式, 直接放入img标签的src中即可
                this.userInfo.avatar = res.result
            }
            // 读取失败的操作
            reader.onerror = (e) => {
                console.log('error' + e)
            }
        }
    }

}
</script>

<style lang="less" scoped>
.meTopNav{
    width: 10rem;
    height: 5.7rem;
    font-family:"仿宋";
    color: #fff;
    display: flex;
    .top{
        width: 10rem;
        height: 5.7rem;
        background-image: url('../../assets/img/body3.jpg');
        .nav{
            width: 10rem;
            height: 1.5rem;
            display: flex;
            
            
            
            .navLeft{
                margin-top: 0.3rem;
                align-items: center;
                width: 1.5rem;
                display: flex;
                height: 1rem;
                margin-left: 0.5rem;
                .icon{
                    width: 0.7rem;
                    height: 0.7rem;
                    color: #fff;
                }
            }
            .navRight{
                margin-top: 0.3rem;
                align-items: center;
                width: 1.5rem;
                display: flex;
                height: 1rem;
                margin-left: 7.5rem;
                .icon{
                    width: 0.7rem;
                    height: 0.7rem;
                    
                }
            }
        }
        .person{
            display: flex;
            .personLeft{
                width: 6rem;
                margin-left: 1rem;
                
                .username{
                    display: flex;
                    .name{
                        margin-top: 0.28rem;
                        align-items: center;
                        font-size: 0.5rem;
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
                .id{
                    .idNum{
                        font-size: 0.4rem;
                    }
                }
                .see{
                    margin-top: 0.5rem;
                    width: 5rem;
                    font-size: 0.4rem;
                    display: flex;
                    .guan{
                        display: flex;
                        flex: 1;
                        flex-flow: column;
                        .num{
                            flex: 1;
                            margin-left: 0.2rem;
                        }
                        .label{
                            flex: 1;
                        }
                    }
                }
            }
            .personRight{
                width: 4rem;
                .tou{
                    margin-left: 0.5rem;
                    .touX{
                        width: 2.5rem;
                        border-radius: 1.25rem;
                        margin: 0.1rem auto;
                    }
                }
                
                .update{
                    width: 3rem;
                    margin-left:0.9rem ;
                    .caption{
                        
                        font-size: 0.45rem;
                    }
                    
                }
                .hiddenInput{
                        display: none;
                    }
            }
        }
    }
    
}
</style>