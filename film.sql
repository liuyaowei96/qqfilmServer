#设置编码格式
SET NAMES UTF8;
#丢弃已存在的数据库
DROP DATABASE IF EXISTS film;
#创建数据库
CREATE DATABASE film CHARSET=UTF8;
USE film;

#登录注册
CREATE TABLE film_login(
  id INT PRIMARY KEY AUTO_INCREMENT,
  uname VARCHAR(50),
  upwd  VARCHAR(32)
);

#登录注册
INSERT INTO film_login VALUES(null,'tom',md5('123'));
INSERT INTO film_login VALUES(null,'jerry',md5('123'));

/*滑动文字选项*/
CREATE TABLE slide_font(
  t_id INT PRIMARY KEY AUTO_INCREMENT,
  t_font VARCHAR(5)
);

/*滑动文字选项*/
INSERT INTO slide_font VALUES
(null,'动作'),
(null,'科幻'),
(null,'喜剧'),
(null,'爱情'),
(null,'恐怖'),
(null,'剧情'),
(null,'战争'),
(null,'惊悚'),
(null,'犯罪'),
(null,'冒险'),
(null,'悬疑'),
(null,'灾难'),
(null,'武侠'),
(null,'古装'),
(null,'奇幻'),
(null,'魔幻'),
(null,'警匪'),
(null,'励志'),
(null,'家庭'),
(null,'歌舞'),
(null,'青春'),
(null,'运动'),
(null,'历史'),
(null,'文艺'),
(null,'传记'),
(null,'记录'),
(null,'动画'),
(null,'伦理'),
(null,'微电影'),
(null,'西部'),
(null,'同性');

/**电影表**/
CREATE TABLE film_table(
  film_id INT PRIMARY KEY AUTO_INCREMENT,  #电影表id
  film_uname VARCHAR(50),                  #标题名
  film_starring VARCHAR(128),              #主演
  film_director VARCHAR(40),               #导演名
  film_date DATE,                          #时间年份
  film_country VARCHAR(10),                #国家
  film_year VARCHAR(32)                    #年份
);

INSERT INTO film_table VALUES(null,'可不可以不勇敢','เจนนิษฐ์ โอ่ประเสริฐ,แพรวา สุธรรมพงษ์','空德.扎度蓝拉密','2019-10-08','泰国','2019');
INSERT INTO film_table VALUES(null,'双子杀手','威尔·史密斯,玛丽·伊丽莎白·温斯特德,克里夫·欧文,道格拉斯·霍奇','李安','2019-10-08','美国','2019');
INSERT INTO film_table VALUES(null,'男子啦啦队','横滨流星,中尾畅树,濑户利树,唐田英里佳,岩谷翔吾','风间太树','2019-10-08','日本','2019');
INSERT INTO film_table VALUES(null,'喜新不厌旧第五季','安东尼·安德森 特雷西·埃利斯·罗斯 马库斯·斯克里布纳 迈尔斯·布','盖尔·勒纳','2018-10-08','美国','2018');
INSERT INTO film_table VALUES(null,'急速逃脱','克里斯蒂安娜·保罗 亚历山大·约瓦诺维奇 汉娜·赫茨施普龙 沃坦·维尔克·默林','克里斯蒂安·阿瓦特','2018-10-07','德国','2018');
INSERT INTO film_table VALUES(null,'小女人','莉·汤普森,卢卡斯·格拉比,伊恩·鲍汉,Melanie Stone,Allie','Clare Niederpruem','2018-10-07','大陆','2018');
INSERT INTO film_table VALUES(null,'半世界','稻垣吾郎,长谷川博己,池胁千鹤,涩川清彦','阪本顺治','2018-10-07','日本','2018');
INSERT INTO film_table VALUES(null,'夺命剑之风云再起','明俊臣 刘语乔 郭凯 孔子曰 王紫垣','张萌','2018-10-06','大陆','2018');
INSERT INTO film_table VALUES(null,'亲爱的儿子','Zakaria Ben Ayyed,Mohamed Dhrif,Imen Cherif,Mouna Mejr','穆罕默德·本·阿提亚','2018-10-04','法国','2018');
INSERT INTO film_table VALUES(null,'艾利克斯现实生活','萨拉·吉尔曼,内森·克莱斯,瑞恩·纽曼','K. Asher Levin','2017-10-04','美国','2017');
INSERT INTO film_table VALUES(null,'上海王','胡军 余男 凤小岳 秦昊 郭采洁','胡雪桦','2017-10-03','大陆','2017');
INSERT INTO film_table VALUES(null,'战栗磁场','Steve Heinz,Nathan Epperson,Tom Latimer','Tomas Galang,Domonic Smith','2017-10-01','美国','2017');
INSERT INTO film_table VALUES(null,'决战食神','葛优 谢霆锋 唐嫣 郑容和 白冰','叶伟民','2017-10-01','大陆','2017');
INSERT INTO film_table VALUES(null,'幽灵医院','白歆惠 罗家英 孟鹏 李昌熙','殷国君','2016-09-01','大陆','2016');
INSERT INTO film_table VALUES(null,'选老顶','黄秋生  杜汶泽  王宗尧  洪卓立  赵硕之  冼色丽  陈意岚  夏韶声','邱礼涛','2016-09-02','大陆','2016');
INSERT INTO film_table VALUES(null,'你是我兄弟','王小源 刘一手 刘美含 马斯原','李根','2016-09-03','大陆','2016');
INSERT INTO film_table VALUES(null,'宝贝当家','王诗龄 吴镇宇 杨千嬅 詹瑞文 元秋','张敏','2015-10-05','香港','2015');
INSERT INTO film_table VALUES(null,'滚蛋吧肿瘤君','白百何  吴彦祖  张子萱  李媛  刘芮麟  程伊  刘莉莉  李建义','韩延','2015-10-08','大陆','2015');
INSERT INTO film_table VALUES(null,'新娘大作战','杨颖  倪妮  陈晓  朱亚文  奚望  井柏然  何炅','陈国辉','2015-10-09','大陆','2015');
INSERT INTO film_table VALUES(null,'边缘线/全城通缉','刘烨  赵文卓  秋瓷炫  古力娜扎',' 汪涛','2014-10-05','大陆','2014');
INSERT INTO film_table VALUES(null,'毒枭帝国','乔什·哈切森 本尼西奥·德尔·托罗 布拉迪·科贝特 卡洛斯·巴登 Claudia Traisac','安德里亚·迪·斯戴法诺','2014-9-30','法国','2014');
INSERT INTO film_table VALUES(null,'我的早更女友','周迅  佟大为  钟汉良  张梓琳  郭书瑶  陈辉虹  白客','郭在容','2014-9-29','大陆','2014');
INSERT INTO film_table VALUES(null,'控制','吴彦祖 姚晨 郝柏杰 冯嘉怡 王馨平 安以轩','毕国智','2013-10-08','美国','2014');
INSERT INTO film_table VALUES(null,'魔境仙踪','詹姆斯·弗兰科 蕾切尔·薇姿 米歇尔·威廉姆斯','山姆·雷米','2013-10-05','美国','2013');
INSERT INTO film_table VALUES(null,'杀戒','刘烨  倪妮  张逗逗  黄柏钧','竹卿','2013-9-30','大陆','2013');
INSERT INTO film_table VALUES(null,'末日情缘/世界末日寻找朋友/末日倒数缘结时','史蒂夫·卡瑞尔 凯拉·奈特利 亚当·布罗迪','劳伦·斯卡法莉娅','2012-10-07','美国','2013');
INSERT INTO film_table VALUES(null,'死亡飞车3：地狱烈焰','多格雷·斯科特 塔尼特·菲尼克斯 鲁克·高斯 丹尼·特乔 文·瑞姆斯','Roel Reiné','2012-10-06','美国','2012');
INSERT INTO film_table VALUES(null,'铁甲钢拳','休·杰克曼 达科塔·高尤 伊万杰琳·莉莉','肖恩·利维','2011-09-30','美国','2011');
INSERT INTO film_table VALUES(null,'极速天使','林志颖 张柏芝 刘若英 汤唯','马楚成','2011-9-29','香港','2011');
INSERT INTO film_table VALUES(null,'那些年，我们一起追的女孩','柯震东 陈妍希 敖犬 郝劭文 蔡昌宪','九把刀','2011-9-25','台湾','2011');
INSERT INTO film_table VALUES(null,'爱出色/我的天空','姚晨 刘烨 陈冲 莫小棋 朱虹 林菀 王喜 高圆圆','陈奕利','2010-10-06','大陆','2010');
INSERT INTO film_table VALUES(null,'孔子','周润发 周迅 陈建斌 任泉 陆毅','胡玫','2010-10-05','大陆','2010');
INSERT INTO film_table VALUES(null,'财神客栈','谢霆锋 张家辉 蔡卓妍 佟大为 黄奕','王晶','2010-9-26','香港','2010');
INSERT INTO film_table VALUES(null,'复仇/暗标','约翰尼·哈里戴 黄秋生 林家栋 林雪 叶璇 任达华 黄日华 张兆辉 吴廷烨 邵美琪 西尔薇·泰斯图德 谷祖琳 冯淬帆','杜琪峰','2009-09-05','香港','2009');
INSERT INTO film_table VALUES(null,'公众之敌','约翰尼·德普 克里斯蒂安·贝尔 玛丽昂·歌迪亚','迈克尔·曼','2009-10-01','美国','2009');
INSERT INTO film_table VALUES(null,'蝴蝶效应3：启示','蕾切尔·敏纳 克里斯·卡马克 Melissa Jones','塞斯·格罗斯曼','2009-08-30','美国','2009');
INSERT INTO film_table VALUES(null,'机器人总动员','本·贝尔特 艾丽莎·奈特 杰夫·格尔林 佛莱德·威拉特','安德鲁·斯坦顿','2008-08-30','美国','2008');
INSERT INTO film_table VALUES(null,'黄石的孩子','乔纳森·莱斯·梅耶斯 拉达·米切尔 周润发 杨紫琼','罗杰·斯波蒂伍德','2008-08-29','欧美','2008');
INSERT INTO film_table VALUES(null,'花花型警','陈坤  余文乐  谭俊彦','马楚成 ','2008-08-25','香港','2008');
INSERT INTO film_table VALUES(null,'老港正传','黄秋生 郑中基 毛舜筠 莫文蔚','赵良骏','2007-08-24','香港','2007');
INSERT INTO film_table VALUES(null,'神枪手与智多星','曾志伟 黄秋生 吴镇宇','姜国民','2007-08-21','香港','2007');
INSERT INTO film_table VALUES(null,'铁三角','古天乐  任达华  孙红雷  林家栋  林熙蕾','林岭东','2007-08-30','香港','2007');
INSERT INTO film_table VALUES(null,'忍','仲间由纪惠 小田切让 黑谷友香 木下邦家 泽尻英龙华','下山天','2006-09-30','日本','2007');
INSERT INTO film_table VALUES(null,'血钻','莱昂纳多·迪卡普里奥 杰曼·翰苏 詹妮弗·康纳利 阿诺德·沃斯洛 大卫·哈雷伍德','爱德华·兹威克','2006-09-29','美国','2006');
INSERT INTO film_table VALUES(null,'致命魔术','休·杰克曼 克里斯汀·贝尔 迈克尔·凯恩 派珀·佩拉博 丽贝卡·豪尔','克里斯托弗·诺兰','2006-08-30','美国','2006');
INSERT INTO film_table VALUES(null,'神经侠侣','陈奕迅 吴镇宇 容祖儿 方中信 李璨琛 官恩娜 田蕊妮 惠英红 廖启智 吴日言 张萌 李子雄','阮世生','2005-07-30','香港','2005');
INSERT INTO film_table VALUES(null,'疑神疑鬼','徐熙媛 刘烨 龚蓓苾 胡歌','邱礼涛','2005-07-29','香港','2005');
INSERT INTO film_table VALUES(null,'情癫大圣','谢霆锋 蔡卓妍 范冰冰 谭耀文 梁洛施 关智斌 陈柏霖 张致恒','刘镇伟','2005-07-28','香港','2005');
INSERT INTO film_table VALUES(null,'韩城攻略','梁朝伟 任贤齐 舒淇 李廷镇','马楚成','2004-09-27','香港','2004');
INSERT INTO film_table VALUES(null,'公主复仇记','钟欣潼 陶红 吴彦祖 詹瑞文 黄家诺 林一峰','彭浩翔','2004-10-08','香港','2004');
INSERT INTO film_table VALUES(null,'怒火救援','丹泽尔·华盛顿 米基·洛克 达科塔·范宁 马克·安东尼','托尼·斯科特','2004-10-09','美国','2004');
INSERT INTO film_table VALUES(null,'迷失东京','比尔·墨里 安娜·法瑞丝 斯佳丽·约翰逊 乔瓦尼·瑞比西','索菲亚·科波拉','2003-01-20','美国','2003');
INSERT INTO film_table VALUES(null,'妖夜回廊','吴彦祖/ 惠英红/ 蒋怡/ 高雄/ 谷峰','李志超','2003-01-30','香港','2003');
INSERT INTO film_table VALUES(null,'花魁杜十娘','赵雪妃 高志森 李嘉欣 吴彦祖 沈殿霞','杜国威','2003-02-01','香港','2003');
INSERT INTO film_table VALUES(null,'想飞','李心洁 吴彦祖 陈冠希 黄秋生 夏文汐','张艾嘉袁锦麟','2002-03-02','香港','2002');
INSERT INTO film_table VALUES(null,'新扎师妹','杨千嬅 吴彦祖 黄浩然','马伟豪','2002-04-04','香港','2002');
INSERT INTO film_table VALUES(null,'天上的恋人','刘烨  陶虹  董洁','蒋钦民','2002-04-20','大陆','2002');
INSERT INTO film_table VALUES(null,'路西法',"Rajesh Babu,Waluscha D'Souza,Renith Elamadu",'Prithviraj Sukumaran','2001-05-20','印度','2001');
INSERT INTO film_table VALUES(null,'北京屋檐下','董国华 杨宇鑫 苏强 梁敉郛','白雪松','2001-05-25','大陆','2001');
INSERT INTO film_table VALUES(null,'小丑2001','杰昆·菲尼克斯 罗伯特·德尼罗 莎姬·贝兹 布莱恩·考伦 谢·惠根姆','托德·菲利普斯','2001-05-30','美国','2001');
INSERT INTO film_table VALUES(null,'不为人知的故事','米克·休斯,乔丹·莱德,尼亚·佩雷斯,杰森·康纳利,艾伦·格里尼,乔·兰','Shane Stanley','2000-06-15','美国','2000');
INSERT INTO film_table VALUES(null,'小丑回魂2','詹姆斯·麦卡沃伊 杰西卡·查斯坦 比尔·斯卡斯加德 比尔·哈德尔 索菲娅·莉莉丝','安德斯·穆斯切蒂','2000-06-20','美国','2000');
INSERT INTO film_table VALUES(null,'我的喜马拉雅','仁青顿珠,旺卓措,次德吉,周波','张馨','2000-06-25','大陆','2000');
INSERT INTO film_table VALUES(null,'爱在长征','Benedict Short Margaux de Wilde','吕军','1999-07-15','大陆','1999');
INSERT INTO film_table VALUES(null,'我和我的祖国','黄渤 张译 刘涛 杜江 葛优','陈凯歌 张一白 管虎 薛晓路 徐峥 宁浩 文牧野','1999-08-20','大陆','1999');
INSERT INTO film_table VALUES(null,'神奇乔纳森的纪录片','The Amazing Johnathan,Anastasia Synn','本杰明·伯曼','1999-09-25','美国','1999');
INSERT INTO film_table VALUES(null,'衰落美利坚','马克西姆·罗伊,雷米·吉拉德,杨·英格兰德,Anoulith Sintharaphone','丹尼斯·阿康特','1998-10-15','加拿大','1998');
INSERT INTO film_table VALUES(null,'中国机长','张涵予 欧豪 杜江 袁泉 张天爱','刘伟强','1998-10-25','大陆','1998');
INSERT INTO film_table VALUES(null,'我的生命之光','卡西·阿弗莱克 伊丽莎白·莫斯 安娜·尼奥斯基 汤姆·鲍尔','卡西·阿弗莱克','1998-10-30','美国','1998');
INSERT INTO film_table VALUES(null,'破晓时分','娜奥米·沃茨,杰里米·博布,詹妮弗·艾莉,艾莫里·科恩,布雷南·布朗','Alistair Banks Griffin','1997-11-15','美国','1997');
INSERT INTO film_table VALUES(null,'鬼入镜：灵之鬼迹','Caitlin Halderman,Jefri Nichol,Marsha Aruan,Ciccio ','奇摩·斯丹波尔','1997-11-20','美国','1997');
INSERT INTO film_table VALUES(null,'格温','埃莉诺•沃辛顿-考克斯,理查德·哈林顿,玛克辛·皮克,马克·路易斯·琼','威廉·麦格雷戈','1997-11-25','英国','1997');
INSERT INTO film_table VALUES(null,'大龄美女想相亲','黑川芽以','大九明子','1996-10-10','日本','1996');
INSERT INTO film_table VALUES(null,'铤而走险','大鹏 欧豪 李梦 曹炳琨 沙宝亮','甘剑宇','1996-10-20','大陆','1996');
INSERT INTO film_table VALUES(null,'红色之子·单刀赴会','李肖宁,其那日图,李春明,塔娜花日,刚照日嘎,白那日苏','王路沙','1996-10-25','大陆','1996');
INSERT INTO film_table VALUES(null,'优步危机','戴夫·巴蒂斯塔 库梅尔·南贾尼 伊科·乌艾斯 贝蒂·吉尔平','迈克尔·道斯','1995-12-10','美国','1995');
INSERT INTO film_table VALUES(null,'加油，李先生','车胜元,朴海俊,金惠钰,安吉强','李桂碧','1995-12-15','韩国','1995');
INSERT INTO film_table VALUES(null,'巨鳄风暴','卡雅·斯考达里奥 巴里·佩珀 罗斯·安德森 安森·布恩 乔治·索纳','亚历山大·阿嘉','1995-12-20','美国','1995');
INSERT INTO film_table VALUES(null,'龙吟诏','李广斌,刘婧','徐超','1994-10-09','大陆','1994');
INSERT INTO film_table VALUES(null,'亲密旅行','沙俊伯 沙溢 姚晨 赵子琪 朱锐','沙溢','1994-10-20','大陆','1994');
INSERT INTO film_table VALUES(null,'终极失忆','迈克尔·切克利斯,布鲁斯·威利斯,梅多·威廉姆斯,凯尔·施密德','布莱恩·A·米勒','1994-10-30','美国','1994');
INSERT INTO film_table VALUES(null,'十万分之一的偶然','田村正和,中谷美紀,高嶋政伸,内山理名,小泉孝太郎,岸本加世子','藤田明二','1993-09-25','日本','1993');
INSERT INTO film_table VALUES(null,'高草丛中','帕特里克·威尔森,哈里森·吉尔伯特森,蕾切尔·威尔森,蕾斯拉·德·奥','文森佐·纳塔利','1993-10-25','加拿大','1993');
INSERT INTO film_table VALUES(null,'千尸屋3','雪莉·穆恩·赞比,希德·黑格,比尔·莫斯利,埃米里奥·瑞弗拉','罗布·赞比','1993-10-30','美国','1993');
INSERT INTO film_table VALUES(null,'你好现任','翁虹 冯雷 温心 万国鹏 王玺','李长欣','1992-12-15','大陆','1992');
INSERT INTO film_table VALUES(null,'舞动天地','安东尼奥·班德拉斯,罗伯·布朗,阿尔法·伍达德,珍娜·迪万','里兹·弗德兰德','1992-12-20','美国','1992');
INSERT INTO film_table VALUES(null,'利亚的鬼魂','Awie,Zul Ariffin','Mamat Khalid','1992-12-25','美国','1992');
INSERT INTO film_table VALUES(null,'你失去的部分','玛丽·伊丽莎白·温斯特德 亚伦·保尔 斯科特·麦克纳里','克里斯托弗·坎特维尔','1991-10-07','加拿大','1991');
INSERT INTO film_table VALUES(null,'大龄美女想相亲','黑川芽以','大九明子','1991-10-08','日语','1991');
INSERT INTO film_table VALUES(null,'目击者2019','esse Howland,Conner Floyd,Rachel Clark-Spear','Christopher Burgart','1991-10-07','韩语','1991');
INSERT INTO film_table VALUES(null,'奔跑的少年','伊利多斯,努尔曼姑·吐尔地玉素甫,常波,阿依古丽·阿不都拉','戴维','1990-10-08','大陆','1990');
INSERT INTO film_table VALUES(null,'终有一天2019','安娜·肯德里克 丹尼尔·布鲁克斯 吉姆·加菲根 丹尼斯·欧哈拉','克里斯多夫·莫利斯','1990-10-07','美国','1990');
INSERT INTO film_table VALUES(null,'万圣节杰克的解药','Derek Nelson,Tiffany Ceri,Peter Cosgrove','安德鲁·琼斯','1990-10-07','英国','1990');