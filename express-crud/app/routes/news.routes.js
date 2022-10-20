module.exports = app => {

    const news = require("../controllers/news.controller.js");
    var router = require("express").Router();

    router.get("/",news.findAll);
    
    app.use(`/api/news`,router);

}