SET NAMES UTF8
DROP DATABASE IF EXISTS xiaofeiniu;
CREATE DATABASE xiaofeiniu CHARSET=UTF8;
USE xiaofeiniu;
#管理员信息表
CREATE TABLE xfn_admin(
  aid INT PRIMARY KEY AUTO_INCREMENT, #管理员编号
  aname VARCHAR(32) UNIQUE, #管理员用户名
  apwd  VARCHAR(64) #管理员密码
);
INSERT INTO xfn_admin(NULL,"mhc","123456");
#项目全局设计
CREATE TABLE xfn_settings(
sid INT PRIMARY KEY AUTO_INCREMENT,	#编号
appName	VARCHAR(32),#应用/店家名称
apiUrl  VARCHAR(64),#数据API子系统地址
AdminUrl  VARCHAR(64),#	管理后台子系统地址
appUrl	VARCHAR(64),#	顾客App子系统地址
icp	VARCHAR(64),	#系统备案号
copyright	VARCHAR(128)#	系统版权申明
);
INSERT INTO xfn_settings(NULL,"小肥牛","","","jingC98777","beijing4399")
#桌台信息表
CREATE TABLE xfn_table(
  tid INT PRIMARY KEY AUTO_INCREMENT,#桌台编号
  tname   VARCHAR(64) NULL,#桌台昵称
  type  VARCHAR(16),  #桌台类型，如3-4人桌     
  status  INT #当前状态                           
);
INSERT INTO xfn_table(NULL,"大众桌","4人桌","1");
INSERT INTO xfn_table(NULL,"辉腾桌","4人桌","0");
INSERT INTO xfn_table(NULL,"荣威桌","2人桌","1");
INSERT INTO xfn_table(NULL,"宝骏桌","3人桌","2");
INSERT INTO xfn_table(NULL,"宝马桌","2人桌","3");
INSERT INTO xfn_table(NULL,"奥迪桌","6人桌","1");
INSERT INTO xfn_table(NULL,"思域桌","8人桌","0");
INSERT INTO xfn_table(NULL,"凯迪桌","12人桌","1");
INSERT INTO xfn_table(NULL,"奔驰桌","12人桌","1");
INSERT INTO xfn_table(NULL,"奥拓桌","4人桌","0");
INSERT INTO xfn_table(NULL,"兰博桌","3人桌","1");
INSERT INTO xfn_table(NULL,"保时桌","2人桌","0");
INSERT INTO xfn_table(NULL,"红旗桌","6人桌","2");
INSERT INTO xfn_table(NULL,"布加桌","8人桌","1")
#桌台预定信息表：
CREATE TABLE xfn_reservation(
  rid INT PRIMARY KEY AUTO_INCREMENT,#信息编号
  contactName VARCHAR(64),#联系人姓名
  phone VARCHAR(16),#联系电话
  contactTime	BIGINT,#	联系时间
  dinnerTime	BIGINT #预约的用餐时间
);
INSERT INTO xfn_reservation(NULL,"赵","137xxxxxx","","")
#菜品分类表：
CREATE TABLE xfn_category(
  cid	INT PRIMARY KEY AUTO_INCREMENT,	#类别编号
  cname	VARCHAR(32)	#类别名称
);
#菜品信息表：
CREATE TABLE xfn_dish(
  did	INT PRIMARY KEY AUTO_INCREMENT,	#菜品编号，第一个值为10000
  title	VARCHAR(32)	#菜品名称/标题
  imgUrl	VARCHAR(128)	#图片地址
  price	DECIMAL(6,2)	#价格
  detail	VARCHAR(128)	#详细描述信息
  categoryId	INT #外键，#参考类别cid	所属类别编号
);
