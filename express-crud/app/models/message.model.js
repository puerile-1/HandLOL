module.exports= (sequelize,Sequelize) =>{
    const message = sequelize.define("message",{
        name:{
            type:Sequelize.STRING
        },
        content:{
            type:Sequelize.STRING
        },
        time:{
            type:Sequelize.STRING
        },
        img:{
            type:Sequelize.STRING
        }
    })
    return message
}