module.exports = app => {

    const article = require("../controllers/article.controller.js");
    var router = require("express").Router();
    var router1 = require("express").Router();
    router.get("/",article.findAll);
    router1.post("/",article.update)
    app.use(`/api/article`,router);
    app.use(`/api/article/update`,router1)

}