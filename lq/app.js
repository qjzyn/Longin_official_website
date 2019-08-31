const http=require("http");
const express=require("express");
const routerDate=require("./router/index_data");
const routerLogin=require("./router/login");





let app=express();
let server=http.createServer(app);
server.listen(8080);
console.log("服务器启动完成");

app.use("/index_data",routerDate);
app.use("/login",routerLogin);