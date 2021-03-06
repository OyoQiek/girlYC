set names utf8;
DROP DATABASE IF EXISTS girlYC;
create database girlYC CHARSET=UTF8;
use girlYC;
create table s_detail(
    sd_id INT primary key AUTO_INCREMENT, #单品id
    sd_type varchar(16),  #单品类型
    title varchar(32),  #标题
    _href varchar(32),  #跳转地址
    create_time varchar(16), #创建时间
    collect_num INT,     #喜欢数
    view_num INT,        #点击数
    tag varchar(32),     #标签
    first_content varchar(256),  #首段内容
    pics varchar(256),   #图片地址
    sub_title varchar(256),#内容小标题
    content varchar(2048), #段落内容 
    stat INT
);
insert into s_detail values(null,"系列单品","用一件皮衣，凹无数造型","/detail","2017/9/30",0,0,"皮衣","众所周知，皮衣是凹造型的一把好手，尤其对个性分明的女人来说，一件抵得上无数件，当然，如此这般省时省力的待遇也不是谁都消受得了，驾驭能力弱者就得慎重考虑，在非黑即白的搭配学里，落落大方和贻笑大方之间，差得可不止是十万八千里的距离。","./images/detail/23083/01.jpg,./images/detail/23083/02.jpg,./images/detail/23083/03.jpg,./images/detail/23083/04.jpg,./images/detail/23083/05.jpg,./images/detail/23083/06.jpg,./images/detail/23083/07.jpg","连帽宽松棒球服外套,短款连帽PU皮机车外套,水洗皮修身彩色小皮衣, 休闲立领短款皮衣,西装领收腰小皮衣,简约圆领休闲皮衣,原宿风连帽拉链皮衣","01 在所有皮衣里，棒球服式的皮衣算是比较随和的类型了，喜欢休闲风的女人几乎都可以驾驭。如果非要找出点儿挑剔之处的话，就是年龄方面的限制了，年纪大的没有年纪小的穿着顺眼，这是事实。/02 没办法，属性使然，至于什么属性，可意会不可言传，反正，追求街头风酷帅范儿的女人都懂得。无独有偶，连帽机车外套的受众也是同样的群体，出场就带着一股狂放的气息，教人欲罢不能。/03 温柔的女人就不要强行感受狂放的气息了，不同的皮衣有不同的性格，跟一个萝卜一个坑一样，对应着不同的女人，正因为这样，世间才有了形形色色的美，或许，这就是彩色小皮衣存在的意义。/04 别看皮衣平时总是一副一成不变的样子，其实骨子里百变着呢，和碰撞造成的冲击感不同，太违和的视觉观感之于女人并不是一件值得推崇的事情，不走酷帅路线没关系，心向往之就行了/05 所谓的心向往之，一句话理解就是，尽一切可能去尝试一些乍一看不太适合自己又不会彻底迷失自己的风格，举个例子，端庄如OL，也可以在闲暇之余和皮衣交个朋友，意外的，还挺优雅。/06 换言之，在不违和的前提下，不拒绝任何有可能散发个人魅力的机会才是女人应该解决的首要问题，哪怕普普通通，也得有鲜明的个性，而且，谁说个性必须酷炫，某种程度上，温和也是个性的一种。/07 就以往的经验来看，只要选择的不是大众款就行，撞衫倒是其次，拉低品味就得不偿失了。传承着作为一件外套的基本功能，皮衣适合的场合也非常广泛，出街、约会、上班、旅游，怎么穿都有理，尤其是造型，任性凹，出错算我输。",1);
insert into s_detail values(null,"系列单品","一件卫衣就能搞定的风光，何需忧伤","/detail","2017/10/13",0,0,"卫衣","一般情况下女生都是出门症候群，不是出门少一件衣衫，就是穿着这件还惦记着那件，就连出个街或者假日小憩也要挑来拣去地难落下一个满意的结局，于是口头禅里就又多了一样——好忧伤。殊不知，一件卫衣就能搞定的风光，何需费那么大的周章。","./images/detail/23210/01.jpg,./images/detail/23210/02.jpg,./images/detail/23210/03.jpg,./images/detail/23210/04.jpg,./images/detail/23210/05.jpg,./images/detail/23210/06.jpg,./images/detail/23210/07.jpg","绑带连帽宽松卫衣,流苏刺绣连帽卫衣,丝绒V领拼接卫衣,刺绣三带宽松卫衣,贴布刺绣高腰卫衣,刺绣连帽宽松卫衣,贴皮宽松斗篷卫衣,中长印花宽松卫衣","01 不就是想一招儿就能极致发挥娇俏浪漫又不失率真青春的奇效，衣袖抽带顺便再系个蝴蝶结够不够，铁锈红一半诱惑一半纯，玩味青春既有品，又不至于张狂到错失了甜美的曼妙时分。/02 字母刺绣，流苏扫尾，帅不止一点，酷到浪漫丛生，谁的青春没有想过这样的个性，穿件黑衣算什么，青春不是只有小清新，垮肩宽松中高腰，举手抬头间显露出挑刚刚好，不那么直接却也不会过于矫情，妙。/03 丝绒女生的闪耀时光，告别经典至极的运动修身款，来一点宽松垮肩的小渲染竟然能够矜贵慵懒两参半，撞色衣袖拼接很打眼，十足的流行新鲜，却又能在红蓝条纹的映衬下尽显贵族气派。/04 穿卫衣本身就是对青春时尚的个性挑战，根本无从品评所谓的品位高低，只要喜欢其他的便都是浮云，就好比这里的超长衣袖，并非穿古越今的舞台妖娆，却能将随性不羁演绎的惟妙惟肖。/05 娇俏女生独爱高挑，这并非终其一生也难梦想成真，关键的关键就是重组身材比例，长袖连帽小高腰，在高腰裤畅行的时代何其受宠，秀出的不只是小蛮腰的纤秀窈窕，更有大长腿的颀长曼妙。/06 别说穿同款的星球刺绣卫衣就是循着明星的足迹一路直追流行，换个角度看这叫好东西要分享，同是少女心，谁能不爱这集聚着梦幻色彩的芭比调，减龄添俏皮，秒回十七岁。/07 是不是很有御姐风范儿，黑色贴皮边儿走的就是斗篷路线，当然无法抗拒其骨子里自带的酷帅无边，有如主角光环，一路无需预演自成闲适悠然，不规则衣摆直接挑战传统卫衣经典，俏皮客串一把神秘感。/08 玩儿下装消失不可或缺的中长款，打造若隐若现诱惑的最佳效果，要的就是这比短款长一些，比长款短一截的黄金分割，再加上垮袖连帽宽松直筒，虽然有点BF风，然，反衬的却是时尚女生的纤细玲珑。",1);
create table t_detail(
    td_id INT primary key AUTO_INCREMENT, #搭配id
    td_type varchar(16),  #搭配类型
    title varchar(32),  #标题
    _href varchar(32),  #跳转地址
    create_time varchar(16), #创建时间
    collect_num INT,     #喜欢数
    view_num INT,        #点击数
    tag varchar(32),     #标签
    first_content varchar(256),  #首段内容
    pics varchar(256),   #图片地址
    sub_title varchar(256),#内容小标题
    prices varchar(32),   #价格
    stat INT
);
insert into t_detail values(null,"女神搭配","金所炫","/detailt","2016/07/10",0,0,"潮人搭配","白色圆领短袖T恤+卡其色小脚裤+蓝色高帮帆布鞋+绿色单肩包","./images/detail/t/21861/01.jpg,./images/detail/t/21861/02.jpg,./images/detail/t/21861/03.jpg,./images/detail/t/21861/04.jpg","七格格2016夏装新款 前短后长 螺纹衣身圆领宽松纯色短袖T恤 女,YEP2016春夏新品韩版百搭宽松薄款显瘦运动裤哈伦小脚休闲裤女,2016春夏韩版高帮帆布鞋女系带小白鞋子白色学生球鞋休闲平底单鞋","69.90,106.00,29.90",2);

insert into t_detail values(null,"女神搭配","金所炫","/detailt","2016/07/10",0,0,"潮人搭配","白色圆领短袖T恤+卡其色小脚裤+蓝色高帮帆布鞋+绿色单肩包","./images/detail/t/21861/01.jpg,./images/detail/t/21861/02.jpg,./images/detail/t/21861/03.jpg,./images/detail/t/21861/04.jpg","七格格2016夏装新款 前短后长 螺纹衣身圆领宽松纯色短袖T恤 女,YEP2016春夏新品韩版百搭宽松薄款显瘦运动裤哈伦小脚休闲裤女,2016春夏韩版高帮帆布鞋女系带小白鞋子白色学生球鞋休闲平底单鞋","69.90,106.00,29.90",2);
insert into t_detail values(null,"女神搭配","金所炫","/detailt","2016/07/10",0,0,"潮人搭配","白色圆领短袖T恤+卡其色小脚裤+蓝色高帮帆布鞋+绿色单肩包","./images/detail/t/21861/01.jpg,./images/detail/t/21861/02.jpg,./images/detail/t/21861/03.jpg,./images/detail/t/21861/04.jpg","七格格2016夏装新款 前短后长 螺纹衣身圆领宽松纯色短袖T恤 女,YEP2016春夏新品韩版百搭宽松薄款显瘦运动裤哈伦小脚休闲裤女,2016春夏韩版高帮帆布鞋女系带小白鞋子白色学生球鞋休闲平底单鞋","69.90,106.00,29.90",2);
insert into t_detail values(null,"女神搭配","金所炫","/detailt","2016/07/10",0,0,"潮人搭配","白色圆领短袖T恤+卡其色小脚裤+蓝色高帮帆布鞋+绿色单肩包","./images/detail/t/21861/01.jpg,./images/detail/t/21861/02.jpg,./images/detail/t/21861/03.jpg,./images/detail/t/21861/04.jpg","七格格2016夏装新款 前短后长 螺纹衣身圆领宽松纯色短袖T恤 女,YEP2016春夏新品韩版百搭宽松薄款显瘦运动裤哈伦小脚休闲裤女,2016春夏韩版高帮帆布鞋女系带小白鞋子白色学生球鞋休闲平底单鞋","69.90,106.00,29.90",2);
insert into t_detail values(null,"女神搭配","金所炫","/detailt","2016/07/10",0,0,"潮人搭配","白色圆领短袖T恤+卡其色小脚裤+蓝色高帮帆布鞋+绿色单肩包","./images/detail/t/21861/01.jpg,./images/detail/t/21861/02.jpg,./images/detail/t/21861/03.jpg,./images/detail/t/21861/04.jpg","七格格2016夏装新款 前短后长 螺纹衣身圆领宽松纯色短袖T恤 女,YEP2016春夏新品韩版百搭宽松薄款显瘦运动裤哈伦小脚休闲裤女,2016春夏韩版高帮帆布鞋女系带小白鞋子白色学生球鞋休闲平底单鞋","69.90,106.00,29.90",2);
insert into t_detail values(null,"女神搭配","金所炫","/detailt","2016/07/10",0,0,"潮人搭配","白色圆领短袖T恤+卡其色小脚裤+蓝色高帮帆布鞋+绿色单肩包","./images/detail/t/21861/01.jpg,./images/detail/t/21861/02.jpg,./images/detail/t/21861/03.jpg,./images/detail/t/21861/04.jpg","七格格2016夏装新款 前短后长 螺纹衣身圆领宽松纯色短袖T恤 女,YEP2016春夏新品韩版百搭宽松薄款显瘦运动裤哈伦小脚休闲裤女,2016春夏韩版高帮帆布鞋女系带小白鞋子白色学生球鞋休闲平底单鞋","69.90,106.00,29.90",2);
insert into t_detail values(null,"女神搭配","金所炫","/detailt","2016/07/10",0,0,"潮人搭配","白色圆领短袖T恤+卡其色小脚裤+蓝色高帮帆布鞋+绿色单肩包","./images/detail/t/21861/01.jpg,./images/detail/t/21861/02.jpg,./images/detail/t/21861/03.jpg,./images/detail/t/21861/04.jpg","七格格2016夏装新款 前短后长 螺纹衣身圆领宽松纯色短袖T恤 女,YEP2016春夏新品韩版百搭宽松薄款显瘦运动裤哈伦小脚休闲裤女,2016春夏韩版高帮帆布鞋女系带小白鞋子白色学生球鞋休闲平底单鞋","69.90,106.00,29.90",2);
insert into t_detail values(null,"女神搭配","金所炫","/detailt","2016/07/10",0,0,"潮人搭配","白色圆领短袖T恤+卡其色小脚裤+蓝色高帮帆布鞋+绿色单肩包","./images/detail/t/21861/01.jpg,./images/detail/t/21861/02.jpg,./images/detail/t/21861/03.jpg,./images/detail/t/21861/04.jpg","七格格2016夏装新款 前短后长 螺纹衣身圆领宽松纯色短袖T恤 女,YEP2016春夏新品韩版百搭宽松薄款显瘦运动裤哈伦小脚休闲裤女,2016春夏韩版高帮帆布鞋女系带小白鞋子白色学生球鞋休闲平底单鞋","69.90,106.00,29.90",2);
insert into t_detail values(null,"女神搭配","金所炫","/detailt","2016/07/10",0,0,"潮人搭配","白色圆领短袖T恤+卡其色小脚裤+蓝色高帮帆布鞋+绿色单肩包","./images/detail/t/21861/01.jpg,./images/detail/t/21861/02.jpg,./images/detail/t/21861/03.jpg,./images/detail/t/21861/04.jpg","七格格2016夏装新款 前短后长 螺纹衣身圆领宽松纯色短袖T恤 女,YEP2016春夏新品韩版百搭宽松薄款显瘦运动裤哈伦小脚休闲裤女,2016春夏韩版高帮帆布鞋女系带小白鞋子白色学生球鞋休闲平底单鞋","69.90,106.00,29.90",2);
insert into t_detail values(null,"女神搭配","金所炫","/detailt","2016/07/10",0,0,"潮人搭配","白色圆领短袖T恤+卡其色小脚裤+蓝色高帮帆布鞋+绿色单肩包","./images/detail/t/21861/01.jpg,./images/detail/t/21861/02.jpg,./images/detail/t/21861/03.jpg,./images/detail/t/21861/04.jpg","七格格2016夏装新款 前短后长 螺纹衣身圆领宽松纯色短袖T恤 女,YEP2016春夏新品韩版百搭宽松薄款显瘦运动裤哈伦小脚休闲裤女,2016春夏韩版高帮帆布鞋女系带小白鞋子白色学生球鞋休闲平底单鞋","69.90,106.00,29.90",2);
insert into t_detail values(null,"女神搭配","金所炫","/detailt","2016/07/10",0,0,"潮人搭配","白色圆领短袖T恤+卡其色小脚裤+蓝色高帮帆布鞋+绿色单肩包","./images/detail/t/21861/01.jpg,./images/detail/t/21861/02.jpg,./images/detail/t/21861/03.jpg,./images/detail/t/21861/04.jpg","七格格2016夏装新款 前短后长 螺纹衣身圆领宽松纯色短袖T恤 女,YEP2016春夏新品韩版百搭宽松薄款显瘦运动裤哈伦小脚休闲裤女,2016春夏韩版高帮帆布鞋女系带小白鞋子白色学生球鞋休闲平底单鞋","69.90,106.00,29.90",2);