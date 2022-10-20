<template>
    <div class="publish">
        <div class="publishTop">
            <van-icon class="back" name="arrow-left" size="25"  @click="$router.go(-1)"/>
            <span class="title" >发表帖子</span>
            <div class="send" @click="fileSubmit">发表</div>
        </div>
        <div class="input">
            <input type="text" id="name" class="content">
        </div>
        <div class="file">
            <van-uploader 
            v-model="fileList"
             multiple
            class="up"
            :after-read="afterRead"
            />
        </div>
        <div class="other">
            <div class="otherLeft">
                <van-icon name="location-o" />
                <span class="wen">所在位置</span>
            </div>
            <div class="otherRight">
                <van-icon name="arrow" color='#ccc' />
            </div>
        </div>
        <div class="other">
            <div class="otherLeft">
                <van-icon name="certificate" />
                <span class="wen">提醒谁看</span>
            </div>
            <div class="otherRight">
                <van-icon name="arrow" color='#ccc' />
            </div>
        </div>
        <div class="other">
            <div class="otherLeft">
                <van-icon name="contact" />
                <span class="wen">谁可以看</span>
            </div>
            <div class="otherRight">
                <van-icon name="arrow" color='#ccc' />
            </div>
        </div>
        
    </div>
</template>
<script>

import axios from 'axios'
import request from "../../utils/request"

export default {
      data(){
            return {
                  file: {}, //上传的文件对象
                  img:'',
                  fileList :[]
            }
	},
	
	methods:{
		fileSelect(e){ 
			this.file = e.target.files[0]
            console.log(this.file)
		},
		fileSubmit(){
			let content = document.getElementById("name").value
            let avatar = localStorage.getItem('avatar')
            let name = localStorage.getItem('name')
            let grade = localStorage.getItem('grade')
            let lolRank = localStorage.getItem('lolRank')
            let cloudRank = localStorage.getItem('cloudRank')
            let user = {
                content:content,
                avatar:avatar,
                name:name,
                grade:grade,
                lolRank:lolRank,
                cloudRank:cloudRank
            }
            console.log(user)
			axios.post('http://localhost:9000/api/article/update',user).then(res=>{
				console.log(res)
			})
            
		},
         // 用表单提交
        afterRead(file) {
        //文件读取完成后的回调函数
        let content = file.file;
        //创建一个新的FormData
        let formData = new FormData();
        // upload这个名字是后台给的
        formData.append("file", content);
        //获取formdata表单所有的数据
        console.log(formData.getAll(""));
        // axios
        //   .post(
                    //服务器上传地址
        //     `http://xxxxxxxxxxxx`,
                //服务器需要的数据，此处是formdata表单
        //     formData,（名字是后台参数确定的）
                //如果默认请求头是json，需要改一下请求头数据格式
        //     {
        //       "Content-Type": "multipart/form-data"
        //     }
        //   )
        //   .then(res => {
        //     console.log(res);
        //     console.log(res.config.headers);
        //   });
        axios({
            method: "post",
            //服务器上传地址
            url: 'http://localhost:9000/api/upload/add',
            data: formData,//（名字是后台接口参数确定的）
            headers: {
            // 修改请求头
            "Content-Type": "multipart/form-data"
            }
        }).then(res => {
            console.log(res);
            console.log(res.config.headers);
        });
        } 
	}
}
</script>
<style lang="less" scoped>
.publish{
    width: 10rem;
    font-family: '仿宋';
    .publishTop{
        display: flex;
        margin-top: 0.2rem;
        align-items: center;
        font-size: 0.55rem;
        justify-content: space-between;
        .back{
            margin-left: 0.2rem;
        }
        .title{
            margin-left:0.6rem ;
        }
        .send{
            font-size: 0.4rem;
            margin-right: 0.3rem;
            padding: 0.1rem 0.3rem 0.1rem 0.3rem;
            border: 1px solid #ccc;
            color: rgb(116, 116, 116);
        }
    }
    .input{
        width: 9rem;
        height: 3rem;
        .content{
            font-size: 0.5rem;
            width: 9rem;
            height: 1rem;
            border: 1px solid #fff;
            
        }
    }
    .file{
        font-size: 0.5rem;
        width: 10rem;
        height: 6rem;
        .up{
            margin-left: 1rem;
            width: 8.5rem;
            height: 3rem;
            --van-uploader-size:100px;
        }
    }
    .other{
        margin-left: 1rem;
        width: 8rem;
        display: flex;
        font-size: 0.45rem;
        align-items: center;
        margin-top: 0.45rem;
        
        justify-content: space-between;
        .otherLeft{
            
            .wen{
                margin-left: 0.5rem; 
            }
        }
    }
    
   
}
</style>