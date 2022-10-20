module.exports= (sequelize,Sequelize) =>{
    const upload = sequelize.define("upload",{
        
        img:{
            type:Sequelize.STRING
        },
        

    })
    return upload
}