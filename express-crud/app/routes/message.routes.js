module.exports = app => {

    const message = require("../controllers/message.controller.js");
    var router = require("express").Router();

    router.get("/",message.findAll);
    
    app.use(`/api/message`,router);

}