<template>
    <div class="form">
        <van-nav-bar class="page-nav-bar"
            title="登录"
        />
        <van-form @submit="onSubmit">
            <div class="pig">
                <img class="img" src="../../assets/img/pig.jpg" alt="">
            </div>
            <van-field
                name="userName"
                placeholder="请输入用户名"
                left-icon="manager"
                v-model="user.userName"
                class="userName"
                />
            <van-field
                type="password"
                name="userPwd"
                left-icon="lock"
                placeholder="请输入密码"
                v-model="user.userPwd"
                class="userPwd"
            />
            <div class="checked">
                <van-checkbox v-model="checked" class="check">已阅读并同意服务协议和隐私保护指引</van-checkbox>
            </div>
            <div class="login">
                <van-button class="loginButton" @click="login" round type="primary" native-type="submit">
                    <img class="img" src="../../assets/img/jiantou.png" alt="">
                </van-button>
            </div>
        </van-form>
        <div class="bottom">
            <span class="bottomType">手机号登录</span>
            <span class="bottomType">找回密码</span>
            <span class="bottomType">新用户注册</span>
        </div>
    </div>
</template>
<script>
import { reactive, toRefs } from 'vue'
import {login} from "../../api/user"
import request from "../../utils/request"
import { Toast } from 'vant';
import router from "../../router/index.js";
//1、构建登录请求
//2、获取用户名和密码到服务端
function useSubmit(user){
    const onSubmit = async()=>{
        Toast.loading({
            message: '加载中...',
            forbidClick: true, 
        });
        login({
            userName:user.userName,
            userPwd:user.userPwd
        }).then(res=>{
            console.log(res)
            
            
            if(res === 1)
            {
                Toast.fail('用户名或密码错误');
            }
            else if(res === 2){
                Toast.fail('用户不存在');
            }
            else{
                window.localStorage.setItem('avatar',res[0].avatar);
                window.localStorage.setItem('name',res[0].name);
                window.localStorage.setItem('grade',res[0].grade);
                window.localStorage.setItem('lolRank',res[0].lolRank);
                window.localStorage.setItem('cloudRank',res[0].cloudRank);
                router.push("/indexOne")   
                Toast.success('用户登录成功');
            }
        })
        
        
    };
    return{
        onSubmit,
    };
} 
export default{
    setup(){
        const state = reactive({
            user:{
                userName:"",
                userPwd:"",
                avatar:"",
                name:'',
                grade:0,
                lolRank:'',
                cloudRank:''
            },
            checked:false
            
        });
         
        return {
            ...toRefs(state),
            ...useSubmit(state.user),
            //login
        }
    }
} 
</script>
<style lang="css" scoped>
.form{
    width: 10rem;
    font-family:"仿宋";
}
.pig{
    display: flex;
    width: 2.5rem;
    justify-content: space-between;
    align-items: center;
    margin: 1.8rem auto;
}
.userName{
    border-radius: 3rem;
    border: 1px solid #ccc;
    width: 80%;
    margin: 0.5rem auto 1rem auto;
}
.userPwd{
    border-radius: 3rem;
    border: 1px solid #ccc;
    width: 80%;
    margin: 0 auto;

}
.checked{
    width: 100%;
    display: flex;  
    justify-content: space-between;

}
.check{
    width: 6rem;
    align-items: center;
    margin: 0.4rem auto;
    font-size: 0.3rem;
}
.login{
    border-radius: 1rem;
    width: 100%;
    display: flex;
    justify-content: space-between;
}
.loginButton{
    align-items: center;
    width: 1.5rem;
    margin: 1rem auto ;
}
.img{
    width: 100%;
    margin: 0 auto;
}
.bottom{
    width: 7rem;
    display: flex;
    margin: 5rem auto;
    justify-content: space-between ;
}
.bottomType{
    align-items: center;
    width: 5rem;
    margin-left: 0.5rem;
    font-weight: 900;
    font-size: 0.3rem;
}
</style>