module.exports = app => {

    const records = require("../controllers/records.controller.js");
    var router = require("express").Router();

    router.get("/",records.findAll);
    
    app.use(`/api/records`,router);

}