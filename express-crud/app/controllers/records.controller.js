const db = require("../models");
const Records = db.records;
exports.findAll = (req,res) =>{
    Records.findAll().then((data)=>{
        res.send(data);
    }).catch(err=>{
        res.status(500).send({
            message:
                err.message || "查询课程列表出错"
        })
    })
}