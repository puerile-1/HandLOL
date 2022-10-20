module.exports= (sequelize,Sequelize) =>{
    const news = sequelize.define("news",{
        title:{
            type:Sequelize.STRING
        },
        type:{
            type:Sequelize.STRING
        },
        comeFrom:{
            type:Sequelize.STRING
        },
        commentNum:{
            type:Sequelize.INTEGER
        },
        body:{
            type:Sequelize.STRING
        },
        img:{
            type:Sequelize.STRING
        }
    })
    return news
}