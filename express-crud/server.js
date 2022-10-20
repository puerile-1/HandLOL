const express = require('express');
const bodyParser = require('body-parser');
const cors = require('cors');
const path = require('path');
const app = express();
var corsOptions = {
    origin:"http://localhost:3000"
};
app.use(cors(corsOptions));
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({extended:true}));
app.all("*", (req, res, next) => {
    res.header("Access-Control-Allow-Origin", "*");
    next();
  });
  app.use(express.static(path.join(__dirname))) 
const db = require("./app/models");
db.sequelize.sync();
require("./app/routes/tutorial.routes")(app)
require("./app/routes/user.routes")(app)
require("./app/routes/news.routes")(app)
require("./app/routes/message.routes")(app)
require("./app/routes/records.routes")(app)
require("./app/routes/article.routes")(app)
require("./app/routes/upload.routes")(app)
require("./app/routes/avatar.routes")(app)
const PORT = 9000;
app.listen(PORT,()=>{
    console.log(`项目运行在端口：${PORT}.`);
})