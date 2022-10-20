const { read } = require("fs");
const db = require("../models");
const Article = db.article;
exports.findAll = (req,res) =>{
    Article.findAll().then((data)=>{
        res.send(data);
    }).catch(err=>{
        res.status(500).send({
            message:
                err.message || "查询课程列表出错"
        })
    })
}
exports.update = (req,res) =>{
    console.log(req.body)
    Article.update({
        content:req.body.content,
        avatar:req.body.avatar,
        name:req.body.name,
        grade:req.body.grade,
        lolRank:req.body.lolRank,
        cloudRank:req.body.cloudRank,
        readNum:0,
        time:'06-09',
        sendNum:0,
        commentNum:0,
        shareNum:0
    },{
        where: {
            name:null
        }
    }).then((data)=>{
        res.send(data)
    })
}
