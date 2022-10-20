const db = require("../models");
const Tutorial = db.tutorials;
const User = db.user;
exports.create = (req,res) => {
    if(!req.body.title){
        res.status(400).send({
            message:'课程名称不为空'
        });
        return ;
    }
    //创建临时变量存储数据
    const tutorial = {
        title: req.body.title,
        description: req.body.description,
        published: req.body.published
    };
    Tutorial.create(tutorial).then(data=>{
        res.send(data);
    }) .catch(err => {
        res.status(500).send({
            message:
                err.message || "创建课程出错"
        });
    });
}
exports.findAll = (req,res) =>{
    Tutorial.findAll().then((data)=>{
        res.send(data);
    }).catch(err=>{
        res.status(500).send({
            message:
                err.message || "查询课程列表出错"
        })
    })
}