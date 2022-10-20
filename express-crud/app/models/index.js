const dbConfig = require("../config/db.config.js");
const Sequelize = require("sequelize");
const sequelize = new Sequelize(
    dbConfig.DB,
    dbConfig.USER,
    dbConfig.PASSWORD,
    {
        host:dbConfig.Host,
        dialect:dbConfig.dialect
    }
)
const db = {};
db.sequelize = sequelize;
db.Sequelize = Sequelize;
db.tutorials = require('./tutorial.model.js')(sequelize,Sequelize)
db.user = require('./user.model.js')(sequelize,Sequelize)
db.news = require('./news.model.js')(sequelize,Sequelize)
db.message = require('./message.model.js')(sequelize,Sequelize)
db.records = require('./records.model.js')(sequelize,Sequelize)
db.article = require('./article.model.js')(sequelize,Sequelize)
db.upload = require('./upload.model.js')(sequelize,Sequelize)
module.exports = db
