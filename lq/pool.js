const mysql=require("mysql");
let pool=mysql.createPool({
	host:"127.0.0.1",
	user:"root",
	password:"",
	database:"lq",
	connectionLimit:10
})
console.log("数据库连接池完成");
module.exports=pool;