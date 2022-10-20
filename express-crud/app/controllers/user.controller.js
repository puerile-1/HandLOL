
const db = require("../models");
const User = db.user;
exports.findAll = (req,res) =>{
    console.log(req.body)
    
    User.findAll({
            where: {
                id: req.body.userName
            }
        }).then((data)=>{
            if(data){
                if(data[0].userPwd===req.body.userPwd){
                    console.log('密码正确,登录成功!')
                    res.send(data)
                    
                }
                else{
                    console.log('密码错误!')
                    res.send("1")
                } 
            }else{
                console.log('用户不存在!')
                res.send("2")
            }
        
        
    }).catch(err=>{
        res.status(600).send({
            message:
                err.message || "查询课程列表出错"
        })
    })
}
