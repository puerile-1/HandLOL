const db = require("../models");
const Message = db.message;
exports.findAll = (req,res) =>{
    Message.findAll().then((data)=>{
        res.send(data);
    }).catch(err=>{
        res.status(500).send({
            message:
                err.message || "查询课程列表出错"
        })
    })
}