module.exports= (sequelize,Sequelize) =>{
    const records = sequelize.define("records",{
        outcome:{
            type:Sequelize.STRING
        },
        mode:{
            type:Sequelize.STRING
        },
        kda:{
            type:Sequelize.STRING
        },
        img:{
            type:Sequelize.STRING
        }
    })
    return records
}