 SET NAMES UTF8;
DROP DATABASE IF EXISTS lq;
CREATE DATABASE lq CHARSET=UTF8;
USE lq;

#网站的基本信息
CREATE TABLE lq_site_info(
	site_name VARCHAR(16),
	logo VARCHAR(128),
	copyright VARCHAR(128)
);
INSERT INTO lq_site_info VALUES(
"浪琴",
"image/logo.png",
"沪ICP备:16030460号-4 ©2017 Longines Watch Co. Francillon Ltd.All rights reserved");

#导航条目 
CREATE TABLE lq_navbar_item(
	name VARCHAR(16),
	url  VARCHAR(64),
	title VARCHAR(32)
);
INSERT INTO lq_navbar_item VALUES("商城首页","/index.html","商城首页");
INSERT INTO lq_navbar_item VALUES("腕表选购","/index.html","多样商品");
INSERT INTO lq_navbar_item VALUES("浪琴世界","/index.html","发展史");
INSERT INTO lq_navbar_item VALUES("logo首页","/index.html","多样的商品");
INSERT INTO lq_navbar_item VALUES("品牌","/index.html","多样的商品");
INSERT INTO lq_navbar_item VALUES("零售店","/index.html","多手段支付");

#轮播图 主页
CREATE TABLE lq_carousel_item(
	cid INT PRIMARY KEY AUTO_INCREMENT,
	pic VARCHAR(128),
	url VARCHAR(128),
	name VARCHAR(32),
	Star_introduction VARCHAR(60)
);
INSERT INTO lq_carousel_item VALUES
(NULL,'image/lunbo01.jpg','/m1.html','凯特•温斯莱特','气质高贵的奥斯卡影后凯特•温斯莱特于2010年加入浪琴表大家庭。'),
(NULL,'image/lunbo02.jpg','/m2.html','JUNG WOO-SUNG','韩国演员郑雨盛获委任位浪琴表优雅形象大使'),
(NULL,'image/lunbo03.jpg','/m3.html','林志玲','集专业模特与著名演员于一身的美女林志玲，自2005起就以其迷人的魅力与清新的风格担当着浪琴表优雅形象的大使。'),
(NULL,'image/lunbo04.jpg','/m4.html','赵丽颖','新一代实力影视巨星赵丽颖加入浪琴表优雅形象大使大家庭，庆祝浪琴表185周年纪念');

#畅销表款 主页/畅销表款/浪琴表名将系列
CREATE TABLE lq_Best_selling_watch(
	cid INT,
	tltle VARCHAR(16),
	serial_number VARCHAR(16),
	img VARCHAR(128)
);
INSERT INTO lq_Best_selling_watch VALUES
("1","浪琴表名匠系列","L2.628.4.78.3","image/畅销表款/Home page best selling watch Longines watch series01.jpg"),
("2","浪琴表名匠系列","L2.629.4.78.6","image/畅销表款/Home page best selling watch Longines watch series02.jpg"),
("3","浪琴表名匠系列","L2.893.4.51.6","image/畅销表款/Home page best selling watch Longines watch series03.jpg");

#查看所有表款 主页/查看所有表款
CREATE TABLE lq_View_all_statements(
	cid INT,
	url VARCHAR(128),
	title VARCHAR(30)
);
INSERT INTO lq_View_all_statements VALUES
("1","image/View all statements01.jpg"," 寻找您的理想 Longines腕表"),
("2","image/View all statements02.jpg"," 寻找零售商");


#浪琴新闻 主页/浪琴新闻
CREATE TABLE lq_Longqin_news(
	cid INT,
	url VARCHAR(128),
	title VARCHAR(128),
	time VARCHAR(12)
);
INSERT INTO lq_Longqin_news VALUES
(NULL,"image/Longqin news01.jpg","Longines FEI Jumping Nations Cup of S...","2016-06-02"),
(NULL,"image/Longqin news02.jpg","浪琴表国际马联世界杯障碍赛中国联赛第二站...","2019-05-26"),
(NULL,"image/Longqin news03.jpg","Longines Global Champions Tour of Mad...","2019-05-19");



#商品列表  分页/腕表选购/浪琴表心月系列
CREATE TABLE lq_new_product(
	uid INT NOT NULL,
	title VARCHAR(16),
	Table_type VARCHAR(16),
	serial_number VARCHAR(16),
	img VARCHAR(128),
	price DECIMAL(10,2)
);
INSERT INTO lq_new_product VALUES
("1","浪琴表新月系列","自动机械女士腕表","L8.111.4.87.6","image/shangpin01.jpg","14,600.00"),
("2","浪琴表新月系列","自动机械女士腕表","L8.111.5.87.6","image/shangpin02.jpg","27,100.00"),
("3","浪琴表新月系列","自动机械女士腕表","L8.111.5.79.6","image/shangpin03.jpg","38,400.00"),
("4","浪琴表新月系列","自动机械女士腕表","L8.111.5.78.6","image/shangpin04.jpg","25,000.00"),
("5","浪琴表新月系列","自动机械女士腕表","L8.111.4.71.6","image/shangpin05.jpg","12,600.00"),
("6","浪琴表新月系列","自动机械女士腕表","L8.111.0.87.6","image/shangpin06.jpg","27,900.00"),
("7","浪琴表新月系列","自动机械女士腕表","L8.111.0.71.6","image/shangpin07.jpg","25,900.00"),
("8","浪琴表新月系列","自动机械女士腕表","L8.110.5.79.6","image/shangpin08.jpg","34,300.00"),
("9","浪琴表新月系列","自动机械女士腕表","L8.110.4.87.6","image/shangpin09.jpg","10,400.00"),
("10","浪琴表新月系列","自动机械女士腕表","L8.110.4.71.6","image/shangpin10.jpg","8,300.00"),
("11","浪琴表新月系列","自动机械女士腕表","L8.112.4.87.6","image/shangpin11.jpg","10,400.00"),
("12","浪琴表新月系列","自动机械女士腕表","L8.112.4.71.6","image/shangpin12.jpg","8,300.00");




#子页/腕表选购




#用户表
CREATE TABLE lq_user(
	uid INT PRIMARY KEY AUTO_INCREMENT,
	uname VARCHAR(32),
	upwd VARCHAR(32),
	email VARCHAR(64),
	phone VARCHAR(11),
	avatar VARCHAR(128),
	user_name VARCHAR(32),
	gender	INT
);
INSERT INTO lq_user VALUES
("1","dingding","123456","ding@qq.com","18111011000","images/avarar/defult.png","张丁","0"),
("2","dangdang","123456","dang@qq.com","18115421000","images/avarar/defult.png","张三","1");










