module.exports= (sequelize,Sequelize) =>{
    const article = sequelize.define("article",{
        avatar:{
            type:Sequelize.STRING
        },
        name:{
            type:Sequelize.STRING
        },
        grade:{
            type:Sequelize.INTEGER
        },
        lolRank:{
            type:Sequelize.STRING
        },
        cloudRank:{
            type:Sequelize.STRING
        },
        content:{
            type:Sequelize.STRING
        },
        video:{
            type:Sequelize.STRING
        },
        videoBg:{
            type:Sequelize.STRING
        },
        img:{
            type:Sequelize.STRING
        },
        readNum:{
            type:Sequelize.INTEGER
        },
        time:{
            type:Sequelize.STRING
        },
        sendNum:{
            type:Sequelize.INTEGER
        },
        commentNum:{
            type:Sequelize.INTEGER
        },
        shareNum:{
            type:Sequelize.INTEGER
        },

    })
    return article
}