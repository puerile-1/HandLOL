module.exports= (sequelize,Sequelize) =>{
    const user = sequelize.define("user",{
        userName:{
            type:Sequelize.STRING
        },
        userPwd:{
            type:Sequelize.STRING
        },
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
        }
    })
    return user
}