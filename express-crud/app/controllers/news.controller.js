const db = require("../models");
const News = db.news;
exports.findAll = (req,res) =>{
    News.findAll().then((data)=>{
        res.send(data);
    }).catch(err=>{
        res.status(500).send({
            message:
                err.message || "查询课程列表出错"
        })
    })
}