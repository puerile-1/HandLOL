module.exports = app => {
	let express = require('express')
	let router1 = express.Router()
	let router2 = express.Router()
	let multer = require('multer')
	const fs = require('fs');
	let path = require('path');
	let upload = multer({
		storage: multer.diskStorage({
			//设置文件存储位置
			destination: function(req, file, cb) {
				let date = new Date();
				let year = date.getFullYear();
				let month = (date.getMonth() + 1).toString().padStart(2, '0');
				let day = date.getDate();
				let dir = "./uploads/" + year + month + day;
	
				//判断目录是否存在，没有则创建
				if (!fs.existsSync(dir)) {
					fs.mkdirSync(dir, {
						recursive: true
					});
				}
	
				//dir就是上传文件存放的目录
				cb(null, dir);
			},
			//设置文件名称
			filename: function(req, file, cb) {
				let fileName = file.fieldname + '-' + Date.now() + path.extname(file.originalname);
				//fileName就是上传文件的文件名
				cb(null, fileName);
			}
		})
	});
	app.use(express.static(path.join(__dirname))) 
	
	const db = require("../models");
	const Article = db.article;

	router1.post('/', upload.single('file'), (req, res) => {
		res.json({
			file: req.file
			
		})
		console.log(req.file)
		const article = {
			img: req.file.path
		};
		Article.create(article).then(data=>{
			
		})
	})
	app.use(`/api/upload/add`,router1);
	router2.get('/', (req, res) => {
		
		Article.findAll().then((data)=>{
			res.send(data);
		})
	})
	app.use(`/api/upload/back`,router2);
}
