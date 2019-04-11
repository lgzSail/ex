set names utf8;
drop database if exists wz;
create database wz charset=utf8;
use wz;

/**用户信息**/
CREATE TABLE wz_user(
  uid INT PRIMARY KEY AUTO_INCREMENT,
  uname VARCHAR(32),
  upwd VARCHAR(32),
  email VARCHAR(64),
  phone VARCHAR(16),
  avatar VARCHAR(128),        #头像图片路径
  user_name VARCHAR(32),      #用户名，如王小明
  gender INT                  #性别  0-女  1-男
);

CREATE TABLE wz_origin(
  bid INT PRIMARY KEY AUTO_INCREMENT,
  bname VARCHAR(30) ,              #图片编号
  jj VARCHAR(3000) ,      #简介
  bimage VARCHAR(128)     #图片路径
);


INSERT INTO wz_origin VALUES
(NULL, '徐昌酩 (1929—2018)','徐昌酩，1929年12月生于浙江桐乡乌镇。 徐昌酩自幼求学乌镇，17岁离开乌镇。1964年起为历界“中国服交会”创作大型壁画和各类商品册的设计；1972年获美国波明代公司设计奖；1973年主编《中国画》、《海上名画》、《中国工艺品》等多部画集；1982年至1983分赴南斯拉夫、菲律宾任“国际博览会”上海馆总体设计并获奖；1993年作品入编文化部出版的《中国美术五十年》，在国内外多次举办个人画展。作品《咏春》被南海紫光阁收藏。曾在新加坡、比利时、美国等国成功举办个人画展。 原中国美术家协会理事、上海市美术家协会副主席、一级美术师、上海市对外文化交流协会理事、上海中国画院兼职画师、上海大学美术学院客座教授，嘉兴画院名誉院长，享受国务院特殊津贴。曾长期主持上海市美术家协会工作，全国第七、八、九届评委、总评委。 徐先生热爱故乡，支持家乡的文化建设。现乌镇西栅有昌酩画苑，展出先生的精典作品和毕生收藏。','img/jj/1.jpg'),
(NULL, '木心 (1927-2011)','木心，本名孙璞。海外华人文化界传奇式大师，画家，作家。1927年2月14日出生于乌镇东栅栏杆桥老宅，五岁时迁居东栅财神湾的孙家花园。<br>

木心是一位在中国并不出名，在国外却声名远扬的当代作家和艺术家。他从小受到良好的传统私塾教育，1946年进入了由刘海粟创办的上海美专学习油画，但没过多久又转到了与他的哲学理念更为接近的林风眠门下，入杭州国立艺专继续探讨中西绘画。建国后木心一直在京沪展览界任美术设计工作。<br>

1971年，木心在文革期间被拘留审查，囚禁18个月，所有作品皆被烧毁。文革结束后平反，任上海工艺美术家协会秘书长。<br>

1982年，木心离开中国，旅居纽约。到国外后，他把主要精力放在写作上，自1984至2000，他已出版了12本小说、散文和诗集，有《散文一集》、《琼美卡随想录》、《即兴判断》、《西班牙三棵树》、《温莎墓园》、《巴珑》、《马拉格计划》、《素履之往》、《木心散文选》等；他的画作被耶鲁大学博物馆收藏，这也是20世纪的中国画家中第一位有作品被该馆收藏的，他也是出现在美大学课本中的惟一中国作家。<br>

木心曾在全美举办巡回画展，所到之处，遍收鲜花与掌声。他的画册摆在纽约大都会博物馆最醒目的位置，与美术史上的顶级大师并列。<br>

2006年，木心先生的学生陈丹青将先生20年前的旧作《哥伦比亚的倒影》介绍到国内。《哥伦比亚的倒影》是木心先生的第一部简体中文版作品，内中选编《九月初九》、《哥伦比亚的倒影》、《上海赋》等散文13篇，并全文刊印1986年5月9日纽约《中报》副刊《东西风》发起的“木心的散文专题讨论会”文本。书甫出版即引起极大轰动，一时洛阳纸贵。作家陈村读到木心的《上海赋》时，称自己“如遭雷击”，乃为文宣告说：“不告诉读书人木心先生的消息，是我的冷血，是对美好中文的亵渎。”他指出：“企图中文写作的人，早点读到木心，会对自己有个度量。”因为“木心是中文写作的标高。”<br>

叶落归根，2006年，木心先生返国定居故乡乌镇。2011年12月，木心先生在浙江乌镇逝世，享年84岁。<br>

他是一位真正触及艺术最高之美的大家。他的美感臻于纯粹，因而融会贯通，在文学、美术、音乐方面均有杰出创作。木心非凡的才情和学识使其在纽约的精英文艺圈中享有很高声誉，拥有一批忠实的拥趸。','img/jj/2.jpg'),
(NULL, '潘朗 (1911—1981)','字裕璋，笔名潘公昭、潘光祖、宁静、杨义旗等，乌镇人，新闻出版界前辈，翻译家。<br>

中学毕业后，潘朗因家贫入吴兴绮成丝织厂当艺徒，兼靠卖文度日。18岁，考入浙江省兵工讲习所。“一·二八”淞沪抗战爆发后，力主奔赴前线，被军方勒令辞职。初拟参加抗日救国团体，后又欲徒步北上抗日，皆因故受阻而失望彷徨。
<br>
民国22年(1933)6月，潘朗以“浙江何君”之名致函上海《申报》“读者顾问”栏，揭露反动军队，倾诉自己衷肠，询问如何继续奋斗。旋被《申报》馆录用。初任校对，后被聘为编辑，并参与该报社论起草工作。当时工资不高，生活清苦，潘朗要求进步，好学不倦，工作之余自学文学、历史及英语、日语，研究国际时事。1924年夏，由小李(胡乔木)和朱兢洲介绍参加中国共产党地下组织。1925年，中共领导下的上海职业界救国会成立，被选为理事，后又改任香港《珠江日报》、《港报》编辑和主笔。
<br>
抗日战争爆发后，以《申报》战地记者身份，深入延安和八路军抗日前线，忠实报道八路军英勇抗战。抗战期间，他在香港通过《珠江日报》、《申报》(港版)，向海内外宣传抗日。1940年，赴重庆主编《国讯》(即《救国通讯》，黄炎培等创立的中华职业教育社所办)。30年，复回香港，主持《国讯》(港版)和中国民主同盟的《光明报》编务。
<br>
民国28年(1939)，因与基督徒赵淑芬结婚，而与中共地下组织失去联系。1936年1月，重新参加中共。时任《国讯》、《展望》主编和苏商《时代日报》俄文翻译。当时，国民党统治区内进步报刊相继被查封，《展望》是唯一由中共上海地下组织所掌握的宣传阵地。37年12月，受党派遣去香港，入《星岛日报》及《华商报》社工作．
<br>
广州解放后，参与筹建《南方日报》任编委和总编室主任。1953年，赴朝鲜战场。朝鲜停战后，调任国务院对外文化联络委员会科长，后改任专员，主管对外宣传和国际文化调研工作。1963年IO月，调外文出版局任业务办公室二处副处长。<br>

“文化大革命”期间，潘朗遭严重迫害，心身备受摧残，家属亦受株连。粉碎“四人帮”后，潘朗夫妇得到平反并恢复工作。<br>

潘朗出身贫寒，全赖勤奋刻苦，自学成才，通英、法、俄、日数国外语。为人正直忠厚，襟怀坦白，待人热诚友善，工作认真负责，任劳任怨。毕生从事新闻出版事业，编著和翻译作品甚丰，然大半在“文革”中遗失，其残存的1945年至1962年间的译著尚有：《越南民族运动史》《今日的台湾》，《东南亚各国内幕》等编著16种；《现代美国》、《美国的政党》、《印度游记》等11种','img/jj/3.jpg'),
(NULL, '张琴秋 (1904—1968)','女，乳名凤生，学名梧， 崇德县(今桐乡市)人，沈泽民妻，中国共产党第一代革命新女性， 被誉为”传奇女将军”。自幼聪明伶俐，勤奋好学。9岁入私塾，后转入振华女校，后考入省立杭州女子师范学校；  1913年春，与同学孔德(沈雁冰夫人)转入上海爱国女校，时结识沈雁冰之弟沈泽民。 半年后 ，考入南京美术专科学校。入学未久，得伤寒病，休学回家治疗。病愈后，留振华女校代课数月。此时接触社会，深感政治腐败，人民生活困苦不堪，不知将何以改变此黑暗现状，于是致函沈泽民。
<br>
沈泽民已是共产党员，见琴秋志向高远，便多次去信启导，寄赠进步书刊，琴秋从此接受革命思想。1914年春，考入上海大学。上大是中国共产党宣传马克思列宁主义培养青年干部的新型学校，瞿秋白、张太雷、邓中夏等先后在校任教。 是年4月，加入中国社会主义青年团；11月，加人中国共产党。在上大期间，受党派遣，和同学黄伦先在杨树浦创办平民学校，招收附近纱厂工人150多人入学，向他们宣传革命道理，并从中发展党团员。“五卅”运动中 ，深人工厂，发动女工姐妹，坚持罢工斗争。
<br>
1914年冬，张琴秋和沈泽民结婚。年底，由党组织派往莫斯科中山大学(1916年，更名莫斯科中国共产主义者劳动大学)学习。回国后，任中共上诲沪东区区委委员，从事党的地下工作。20年3月，和沈泽民一起，被派往鄂豫皖革命根据地，开始戎马倥偬的战斗生涯，是中国工农红军历史上惟一的女性将领。 1924年1月，被选为中华苏维埃共和国中央执行委员。
<br>
1949年4月，任中华全国妇女联合会第一届常委、生产事业部部长，后又连任两届执委。10月，中央人民政府成立，出任中华人民共和国纺织工业部副部长、中共党组副书记。此后分管纺织业生产近二十年，勤勤恳恳，兢兢业业，为发展纺织工业做出重要贡献。 张琴秋为第一届全国政协委员， 第一、二、三届全国人民代表大会代表。
<br>
“ 文化大革命 ”中张琴秋被诬陷迫害，于1968年4月21日因不堪凌辱，跳楼身亡，以死抗争。女儿玛娅也惨受酷刑而死。1979年6月，中共中央为之平反昭雪。悼词说：“她的一生是革命的一生，战斗的一生，全心全意为人民服务的一生。”','img/jj/4.jpg'),
(NULL, '孔另境 (1904—1972)','1904年7月19日出生于乌镇，为茅盾内弟，也是新文化运动的著名作家、出版家、文史学家。孔另境原名孔令俊，字若君。孔子第七十六代“令”字辈。在家乡乌镇读小学，去嘉兴读中学，后赴沪入上海大学。在时代的感应下，孔另境积极参加政治运动，课余从事工人教育，1925年初加入中国共产党，参加五卅运动上街时被捕。
<br>
大革命时期， 孔另境赴广州国民党中央宣传部担任助理干事，后参加国民革命军总司令部政治部，随北伐军誓师北上。国共分裂时被“欢送出境”。
<br>
从政治战线退到文化战线之初，孔另境赴天津南开中学教书，后转入河北省立女子师范学院。因“共党嫌疑”被捕，转解北平行营军法处。后经鲁迅托许寿裳、汤尔和与北平行营张学良说情，百日羁拘后由李霁野、台静农保释出狱。
<br>
回到上海后，开始从事职业写作，为生活书店、中华书局等写书《斧声集》、《秋窗集》等。为茅盾助编《中国的一日》；在《申报·自由谈》、《现代》等报刊上发表杂文和散文。编辑《现代作家书简》、《中国小说史料》等。从1924年起发表作品始用“另境”笔名，以后孔另境成为他的常用名。
<br>
1936年冬，孔另境任华中学教导主任，又创办了华光戏剧专科学校。在抗战文化宣传工作上，曾起了一定的影响
<br>
1938年11月，孔另境与其学生金韵琴结婚。太平洋战争爆发后，租界被冲破，学校停办。孔另境携眷赴苏北投奔新四军。回沪后，孔另境为世界书局主编大型《剧本丛刊》五集。由于进步立场明显，1945年5月，孔另境终被日本宪兵拘捕，受尽严刑拷打。
<br>
抗日战争胜利后，孔另境加入第三方面军主办的《改造日报》工作，并为大地出版社、春明书店等主编《新文学》、《今文学》等刊物，发表茅盾、郭沫若等重要文章。1948年入江湾中学教书。
<br>
1949年终于盼来了上海解放，兴奋之余文思大发，孔另境连续发表《迎接人民解放军》、《旧事新谈－—怀念革命的摇篮上海大学》、《这一天终于来到了》等文章。同年8月孔另境赴京参加第一届文代会，在大会作专题发言。之后，孔另境曾任大公职业学校校长、山东齐鲁大学教授、上海春明出版社总经理及总编辑等职，公私合营后，进上海文化出版社。
<br>
1957年3月孔另境代表出版界参加全国宣传工作会议，回来后又参加上海宣传工作会议，“大鸣大放”后，不久即进入反右整风阶段，孔另境虽然没有被定为右派，但“漏网大右派”的帽子却一直跟随着他，历次运动不断地被重点批斗。
<br>
1959年孔另境任上海文艺出版社编审；1960年底筹备上海出版文献资料编辑所，任编审。从此报刊上再也没有发表他的文章。1963年孔另境获准一年半创作假，在家埋头编著五十余万字的《五卅运动史》，此稿最终没有出版。
<br>
孔另境年满60周岁退休，虽然赋闲在家，仍难逃“文革”噩运。他患有严重的糖尿病，1968年7月，孔另境被上海虹口区公检法军管组找去“谈话”，就此开始了他一生中的第四次坐牢。关押7个多月后，并发大叶性肺炎，终至不治，于1972年9月18日离开人世。享年68岁。
<br>
孔另境著有《斧声集》、《秋窗集》、《庸圆集》、《横眉集》等，1987年，出版《我的记忆——孔另境散文选》，其未刊著作尚有《五卅运动史料》、《中学国文教材丛书》、《万古忠义》等。','img/jj/5.jpg'),
(NULL, '萧家干 (1900一1972)','字嵩岭，乌镇人,近代著名实业家，中国民族乳品工业先驱。萧家干自幼勤奋好学,1916年毕业于乌镇植材小学；五四运动后，立志实业救国，报考上海复旦大学工商管理系。先后任教于复旦、群治两校。1930年，辞去教职，招股集资八万元，创办西湖炼乳股份有限公司。工厂与牧场皆采用科学管理，尤重视先进技术之采用。所有乳制品质量均可与舶来品媲美，不仅畅销国内，且远销东南亚诸国。
<br>
“七七”事变爆发，日军逼近杭州，为免工厂、牧场沦于敌手，萧家干毅然将工厂设备深埋地下，将乳牛送与山农(约定不宰食、不资敌)，挥泪疏散职工，告别杭州后辗转至四川自贡。当时当地土法制盐技术落后，他悉心钻研，改进技术，发明灶用真空制盐机，所产食盐纯度高达99.6％，生产率提高五十倍，获国家专利，是为该地机械化生产精制岩盐之开端并沿用至今(事载《国家盐业大典》)。
<br>
萧家干为发展民族乳品工业，屡仆屡起，艰苦备尝。1951年，再集资创办杭州联合乳品厂。公私合营后，该厂并入杭州民生制药厂，萧家干调杭州轻工业局任工程师。1957年，奉调黑龙江省工业厅．筹建牙克什乳品厂。同年被错划为右派分子。1979年2月，给予纠错，恢复政治声誉。','img/jj/6.jpg'),
(NULL, '沈泽民 (1900—1933)','沈泽民，原名沈德济，是茅盾的胞弟，1900年6月23日出生于乌镇。与茅盾一样，他的小学也是在立志小学读的，中学则是在省立第三中学(湖州中学)读的。他的数理化成绩很好，中学毕业后，根据自己的特长和父亲的意愿，他考入南京河海工程专门学校。但也许是受哥哥的影响，沈泽民后来还是从事文学和新闻活动。
<br>
1919年，沈泽民受到“五四”新思潮影响，在南京参加了进步学生组织的集会和宣传洱劫。同年寒假，在家乡与胞兄茅盾、表哥卢奉璋、同乡曹辛汉等组织“桐乡青年社”，出版《新乡人》杂志，宣传新文学，提倡白话文。11月，中国少年学会在南京成立，沈泽民是骨干之一，并一度担任《少年中国》、《少年世界》的编辑工作。他还与同学张闻天一起担任《南京学生联合会月刊》的撰稿人，利用这些阵地，著文抨击军阀统治，揭露社会黑暗，宣传革命思想。还在《民国日报》副刊《觉悟》、《学生杂志》、《妇女杂志》、《小说月报》等刊物上发表了一系列有关社会革命和妇女问题的文章和译文。<br>

20世纪初，马克思主义书籍多为日文，为了更好地学习马克思主义，他与张闻天东渡日本进修日语。半年后回国，加入文学研究会。同年，由茅盾介绍，加入中国共产党，从此走上职业革命道路。他曾在党创办的平民女校教英文；在安徽省立五中任教时与进步师生组织“芜湖学社”，创办《芜湖》杂志；还在上虞春晖中学从事革命活动半年。
<br>
1924年1月，中共上海地方兼区执行委员会改组，沈泽民当选为执行委员。他与早期共产党人恽代英、萧楚女等发起“革命文学”运动，发表了《我们需要怎样的文艺》、《文学革命与革命文学》等文章，宣传马克思主义的文学主张。
<br>
1925年秋，他与张琴秋结婚。张琴秋是他嫂子孔德沚的小学同学，又是瞿秋白夫人杨之华的大学同学。不久，两人先后赴苏联莫斯科中山大学深造。1930年4月，在周恩来的安排下，他们与王稼祥、杨尚昆、张闻天、伍修权等陆续回国。
<br>
1931年1月，在中共六届四中全会上，沈泽民被选为中央委员，并任宣传部长。3月，受党派遣，与夫人进入鄂豫皖苏区，5月，成立鄂豫皖中央分局，沈泽民任委员，并兼任鄂豫皖省委书记。11月7日，中华苏维埃共和国临时中央政府在江西瑞金成立，沈泽民当选为中央执行委员。
<br>
1932年6月，国民党纠集26个师和5个旅的兵力，对鄂豫皖苏区发动第四次反革命“围剿”。1932年10月10日，分局召开紧急会议，讨论红军行动去向。一种意见认为，红军应跳出根据地；沈泽民则认为不应脱离根据地。讨论结果是两种方案都采纳：方面军总部率领十、十一、十二、七十三师和少共国际团跳出根据地，暂到平汉路以西活动；沈泽民带领七十四、七十五两师坚持根据地斗争。
<br>
在鄂豫皖根据地的“肃反”中，沈泽民保护了徐海东等一大批优秀红军干部。后来，他任分局书记，与徐海东、吴焕先等重新组建了红二十五军。
<br>
1933年，由于斗争环境恶劣，沈泽民染上了恶性疟疾，根据地缺医少药，他无法得到很好的医治。11月病情加重。20日，沈泽民在湖北黄安(红安)逝世。逝世前，沈泽民自知不治，在一件衬衫上写了向党中央的汇报，要成仿吾带往上海。报告未写完，他就昏迷了。这件衬衫——沈泽民的重要遗物，成仿吾经多方辗转，终于交给了党中央。
<br>
沈泽民是中国共产党早期的一位重要领导干部，为了纪念他为中国革命和新文学事业所作出的贡献，中华苏维埃共和国中央人民委员会第四十八次会议决定，将“苏维埃大学”改名为“国立沈泽民苏维埃大学”。以一个人的名字命名一所大学，并冠以“国立”字样，如此殊荣，故乡能不骄傲万分!
<br>
全国解放后，沈泽民的遗体迁葬于红安烈士公墓，董必武同志题写了墓碑。
<br>
兄弟双双成长为建立新中国的重要参与者和中国共产党的高级领导干部，这在乌镇的历史上亦是绝无仅有的。','img/jj/7.jpg'),
(NULL, '丰子恺 (1898—1975)','原名润，又名仁，号子凯，笔名TK，祟德县(今桐乡县)人。现代画家、文学家、艺术教育家。早年曾师从弘一大师（李叔同）学习绘画、音乐，深受其佛学思想影响。五四后，开始进行漫画创作。早期漫画作品多取自现实题材，带有“温情的讽刺”，后期常作古诗新画，特别喜爱儿童题材。他的漫画风格简易朴实、意境隽永含蓄，是沟通文学与绘画的一座桥梁。1975年4月，丰子恺回故乡探亲访友，作书画多幅分赠亲友。同年9月15日，病逝于上海，骨灰安放于上海龙华革命公墓。
<br>
子恺著作等身，历年不同版本之著译多达一百六十余种，部分著作曾译成外文在国外发行。现有《丰子恺文集》艺术卷、文学卷共七册。《中国大百科全书·中国文学》评其散文曰：“感情真率自然，语言朴素洒脱。形式灵活多样，信笔所至，妙趣横生，于平易琐细中寓深意，在淡泊飘逸中见真情。”
<br>
1984年，故乡人民为纪念丰子恺，在原址重建缘缘堂，陈列丰子恺生前遗物、照片、手稿、著作等，供国内外友人参观瞻仰。','img/jj/8.jpg'),
(NULL, '王会悟 (1898-1993)','王会悟，1898年7月生于浙江省桐乡青镇。父亲王彦臣，晚清秀才，禀性耿直，设塾授徒，以修束养家。后应植材高等小学聘请为国文教员，曾教过茅盾《礼记》。
<br>
王会悟自6岁开始接受父亲王彦臣的启蒙教育。辛亥革命后，王会悟曾就读于嘉兴师范学校，但终因家庭经济困难而中途辍学。返乡后，办了一所小学，后来因学生增多，原有的课堂不能容纳，便向邻近的宝阁寺和尚借用一间殿堂，独自办起了桐乡第一所女子小学。在女子小学里，她开始宣传新思想和倡导新风俗，她鼓励女孩剪辫子，反对童养媳和女子缠足的陋习。
<br>
1918年她以半工半读的方式入外国教会所办的湖州湖郡女塾攻读英语，在女塾中，她最喜爱的课外书本是《新青年》杂志。她大胆给刊物主编陈独秀等人写信，表示赞成提倡白话文，拥护刊物所宣传的思想。陈独秀在回信中高兴的写道：“没想到我们的新思想影响到教会学堂了。”
<br>
1919年，王会悟独自到上海，寻求妇女独立解放的途径。经上海学联介绍，到了黄兴夫人徐宗汉那里，安排在上海女界联合会做文秘工作。在这里，她结识了后来成为中国共产党创始人之一、马克思主义哲学家的湖南人李达。当时李达作为中国共产党留日学生总会代表，回国办事，与女界联合会有工作联系。在多次接触中，李达的崇高信仰和渊博的学识，使王会悟十分敬佩。王会悟的工作热情和对新思想的追求，也使李达对她产生了爱慕之情。他们于1920年下半年结为伉俪。就在陈独秀家的客厅里，举行了简单的婚礼。
<br>
1921年7月，中国共产党第一次代表大会在上海召开之前，正是由于与李达的结合，使王会悟得以参与“一大”的筹备工作。从会议的选址、代表的住宿、会务等都是由她操办的。开会途中，由于受到特务的干扰，王会悟提议到距乌镇二十多公里的嘉兴继续召开，并先行赶往嘉兴安排一切。她先到市区张家弄鸳湖旅馆包租两间客房，作为代表歇脚之处，又托旅馆账房代雇了一艘中型画舫式游船，还预定了一桌酒菜。待到代表们乘早班车从上海抵达嘉兴，王会悟已在车站迎接。
<br>
为了确保会议安全进行，王会悟作了周到细致的安排。她让船主把船撑到离烟雨楼东南方向二百米左右比较僻静的水域用篙插住，让代表们在中舱的客堂间里围坐在八仙桌前安心开会。她自己则装扮成歌女模样，坐在船头望风放哨，充当会议的“哨兵”，一旦有别的游船靠近，就哼起嘉兴小调，手指敲着舱门打节拍，提醒代表们注意。
<br>
在王会悟的精心照料下，按照事先确定的“以一日之长开完大会”要求，会议从中午11点左右开始到傍晚结束，一直进行得很顺利。王会悟为“一大”的顺利召开，为中共产党的创立做出了贡献。
<br>
“文化大革命”初，因李达指出“顶峰论”违反辩证法，被迫害致死。粉碎“四人帮”后，王会悟非常高兴，特别是中共十一届三中全会召开以后，更觉精神振奋。1980年，李达被平反时，她已是八旬高龄，为中共党史、妇女运动史、中共“一大”会址介绍和家乡地方志的编写工作，提供了大量的第一手资料。由于当时中共“一大”代表已先后作古，王会悟成了当时唯一的知情人和见证者。
<br>
王会悟没有参加中国共产党，但是她时时刻刻以党员的标准要求自己，她为中国共产党，为中国妇女解放事业作出了巨大贡献。1993年10月20日，王会悟在北京病逝，终年96岁。','img/jj/9.jpg'),
(NULL, '沈骊英 (1897—1941)','女，原名家蕙，乌镇人，世界闻名的中国农学家，对小麦育种曾作出卓越的贡献。祖父善蒸，精历算，曾掌方言馆数十年。父亲承怿号伯欣，法国巴黎大学法学博士。
<br>
1921年，沈骊英毕业于神州女中后，在苏州振华女校任教三年。旋留学美国，在威尔斯来女子大学研究植物学，得理学士学位；复入康纳尔大学研究农学两年。在美期间，听教授介绍世界学术进步概况时，教授列举学术专家之姓名、国籍，以鼓励各国学生，所举国名甚多，而唯独无中国。骊英感触殊深，遂立志献身科学，报效祖国。1917年回国，初任浙江省建设厅农业技师，从事水稻，小麦品种改良之研究。1923年，任中央农业实验所技正。此后，赴苏、皖、湘、桂、川、黔等地试验小麦杂交育种。所选育之九品系优良麦种，亩产较当地小麦高出40-100斤，且适种范围广，抗病害力强，成熟期提早5至10天，并可不碍水稻前期播种。其中“中农18”，系从世界小麦1700余品种中作对比试验，经七年不懈努力，优选培育而成。此良种抗病、早熟，丰产，质优，适应于中国，尤其是川、鄂、黔，陕等省。1926年起大面积推广，成都三年比较试验结果平均亩产高于当地小麦41斤，获巨大成功。
<br>
沈骊英从事科研，行识见，有毅力，精密刻苦，孜孜不倦。常冒大风雨赤足行走泥泞中，逐一审察试验之作物。抗战军兴，中央农业部裁撤所有女职员，独骊英坚决不走，恳切表示愿不领薪水，留部完成试验。她说：“我为事业，非为钱而工作。”政府从南京撤退，她以妊娠之身带子女三人开始流亡时，仍亲携历年试验记录和种子箱，自宁而湘而黔，辗转数千里。抵达四川荣昌县。途中常说，“抗战期间，一滴汽油，即为国民一滴血”，拒雇汽车而颠顿跋涉于蜀道。1928年．得双腿剧痛症，仍垂泪忍痛，不弃职守。每逢田间收种，必扶病前往，观察记录作物性状而忘其病痛。
<br>
沈骊英终日埋头丘陇之间、实验室内，积劳成疾，1941年10月7日，猝发脑溢血，殉职于荣昌中央农业实验所内，终年仅四十。卒后，国民政府明令褒扬，重庆各界沉痛追悼。冯玉祥，李德全夫妇、邓颖超，邓初民、张申府、史良、谢冰心等前往吊唁。董必武作五言长诗哀挽；邓颖超、冰心撰文怀念；学生费孝通以《一封未拆的信——纪念老师沈骊英先生》表达自己对先生的崇敬之情。
<br>
沈骊英有著作22种，大半译载于英、美作物育种学和生物学杂志，常为各国学者所引证，故著名农学家钱天鹤誉之日：“骊英先生为农业界不可多得之科学家，其地位之高，在今日甚少有人可与之并驾齐驱。”
<br>
骊英丈夫沈宗翰博士，亦著名农业专家，中央农业实验所所长。有子女四人，骊英去世时长子君山年仅九岁。','img/jj/10.jpg'),
(NULL, '茅盾 (1896—1981)','茅盾，原名沈德鸿，字雁冰，现代作家、社会活动家，新中国第一任文化部长，1896年7月4日生于浙江桐乡县乌镇观前街。父亲沈永锡，清末秀才，通晓中医，是具有开明思想的维新派人物，母亲陈爱珠，是一位通文理、有远见而性格坚强的妇女。茅盾10岁丧父，童年时代，就接受了母亲所教的文学、地理和历史知识，所以茅盾说 “我的第一个启蒙老师是我母亲”(《我走过的道路》)。
<br>
茅盾1913年考入北京大学预科，1916年毕业，进入上海商务印书馆编译所工作。1920年开始文学活动，曾与郑振铎、叶圣陶等人一起组织文学研究会。1921年接编《小说月报》，倡导现实主义，翻译介绍外国文艺。对我国新文学运动产生了巨大的影响。1927年发表第一部中篇小说《幻灭》，它与相继问世的《动摇》(1928)、《追求》(1928)合为总名《蚀》三部曲，引起强烈的反响。1933年的长篇小说《子夜》是他最重要的代表作。茅盾为了和国民党新闻检查机构作“韧性的斗争”，一生用了一百二十多个笔名，主要有玄珠、方璧、止敬、蒲牢、形天等。
<br>
新中国成立后，茅盾任第一任文化部部长。曾当选为历届全国人民代表大会代表，历届政协全国委员会常务委员和第四、五届政协全国委员会副主席。
<br>
茅盾关心家乡建设，1980年5月在《颠江日报》发表《可爱的故乡》文中说“漫长的岁月和迢迢千里的远隔，从未遮断过我的乡思。”当年12月，赠给乌镇中学图书一批。他为家乡赋词题字不下十余次，最后一次为家乡题字是“乌镇电影院”。
<br>
1981年3月27日，茅盾病逝于北京。临终时他致函党中央，表达对共产主义事业坚贞不渝的信念，要求追认为中国共产党党员。中共中央根据其请求和一生表现，决定恢复其中国共产党党籍，党龄从1921年算起。
<br>
茅盾著作等身，除翻译外，留下一千二百多万字作品。自1983年起，人民文学出版社陆续出版四十卷本《茅盾全集》，收录其全部文学著作。
<br>
茅盾的一生经历丰富，过程坎坷，但始终围绕文学和革命这两个中心。他以天才和努力，跨上了中国现代文学的高峰；而以文学巨匠的资历担任共和国第一任文化部长，可谓当之无愧，众望所归。
<br>
有这么一位同乡，乌镇人自然可以很骄傲。他仿佛是千年古镇文化精神的典范，是一座后人会不断前来瞻仰的文化丰碑。','img/jj/11.jpg'),
(NULL, '严独鹤 (1889—1968)','中国新闻界前辈，名桢，字子材，别号知我、槟芳馆主、老卒、晚睛，清咸丰年间翰林严辰的侄孙。1889年10月3日出生在乌镇北栅严辰翰林第旧宅。“独鹤”是他早年元配夫人卢氏产后得病不治，悲痛之余，自认孤如独鹤．即以独鹤为笔名。笔名流布四海后，原名竟少有人知。他是现代新闻史上有影响的编辑之一，曾主编当时著名的《新闻报》副刊达30年之久。
<br>
乌镇历史上有两个翰林第，一个是夏同善的翰林第，另一个就是严辰的。严独鹤是严辰的侄孙，后来也以笔杆为生，看来是继承了诗礼之家的传统了。
<br>
严独鹤少时就读于上海制造局兵工学校和广方言馆，毕业后先执了几年教鞭，后进入上海中华书局任编辑。不久入世界书局编辑英文书刊。旋又应聘《新闻报》，负责编辑副刊。他把原来的副刊《庄谐录》改名为《快活林》，后又改为《新园林》。经常约请一些知名人物为副刊写稿，自己则每天要撰写一篇“谈话”(署名独鹤)，虽仅短短的四五百字，却要言不烦，经常针砭时弊，抨击社会黑暗，受到读者的欢迎。当时《申报》副刊《自由谈》主编是周瘦鹃，两张副刊又都办得很有特色，简直旗鼓相当，人们就誉称他俩是“一鹃一鹤”。
<br>
在严独鹤的外孙朱啸风的回忆中，严独鹤是很多名人的老师。他的学生有张学良、张恨水、秦瘦鸥，蒋介石也曾让蒋经国拜他为师。严氏在新闻报最快意之事，是从1929年起在所编《快活林》上刊发张恨水的《啼笑因缘》。小说一出，使张恨水名满天下，成为南北妇孺皆知的作家，这在现代文学史上亦是一异数。顾明道的《荒江女侠》也是20世纪二三十年代的畅销小说，而最初就发表在严独鹤主编的副刊《新园林》上。严独鹤先生全家老少都是戏迷，时京剧四大名旦之一荀慧生曾说过，没有严独鹤，就没有我荀慧生。
<br>
抗战前，《新闻报》还发行过《新闻夜报》，副刊《夜声》也由已升任副总编辑的严独鹤编辑。他与文艺界中的进步人士如郭沫若、田汉、洪深、许广平、袁雪芬、安娥等常有交往，很多稿子就是他们提供的。他还和洪深等开办过电影讲习班，明星胡蝶也曾沐受过他的教泽。
<br>
在他主编副刊的30多年中，历史舞台不停地上演着一出出悲壮的史诗：北伐战争，抗日战争，解放战争。他虽然没有站在舞台的正中，但始终以正义的言论支持其中代表进步的一方。他利用舆论的力量，揭露敌人的丑行，呼吁人民觉醒，向恶势力作坚决的斗争。
<br>
他主编副刊的30多年，也正是我国新闻事业从起步走向成熟的重要时期。所以，他的辛勤劳动和成功经验无疑是一笔宝贵的财富，他留下了近万篇报纸副刊的言论文章和一本《严独鹤小说集》。他主编的副刊《快活林》和《新园林》是我国新闻史上有影响的副刊之一，它们的基本格局至今仍有借鉴的意义。
<br>
1948年春天，严独鹤偕夫人陆蕴玉回乡扫墓、探亲。重新踏进了乌镇翰林旧门第，在这里接待多年未见的亲友。他在乌镇见到植材小学毁于战乱，即慷慨捐资，助其恢复。在镇上，他还向当地的一些进步人士介绍了上海女子界的动态，可知先生的思想总是站在时代前列的。
<br>
新中国成立后，严独鹤出任《解放日报》编辑顾问、上海新闻界联合图书馆和上海图书馆副馆长，并曾出席第二届全国文代会。并以文化名流的资格，历任上海市第一届至第五届人民代表大会代表和全国政协第三、四届委员。十年浩劫中，他没能逃过厄运，于1968年含冤而死，清贫得几乎难以成殓。
<br>
但是，故乡没有忘记自己的儿子。1990年5月5日，严独鹤图书馆在故乡成立并对外开放。著名科学家苏步青为图书馆题写了馆名，上海市图书馆老馆长、学者顾延龙也为馆内的阅览室题匾。
<br>
严先生著有长篇小说《人海梦》、《严独鹤小说集》及电影剧本数部。','img/jj/12.jpg'),
(NULL, '汤国梨 (1883—1980)','字志莹，号影观，女，祖籍浙江乌镇。我国现代妇女解放运动的先驱，诗词家、书法家。博学多才，其志自坚，有“旷代清才，直与贺、柳并辔”之美誉。
<br>
作为一代儒宗、朴学大师章太炎的夫人，汤国梨的名气是很大的，尤其是江浙一带.她和章太炎的婚礼,规格之高、嘉宾之多，恐怕难有媲美者，至今仍为一些熟悉现代掌故并喜欢舞文弄笔的前辈文人津津乐道。章是余杭仓前镇人，汤则祖籍乌镇，一条苕溪自西而东，将他们连在了一起。
<br>
汤国梨两岁时随父母去江阴，七岁，又移家汉口。九岁时父亲去世，母亲带领三个孩子回到故乡乌镇，寄居于舅父家。汤国梨是长女，便帮助母亲分挑家庭重担。白天做家务，晚上靠父亲生前教识的几个字读唐诗，填宋词。
<br>
1905年，汤国梨23岁，时资产阶级革命已在中国兴起，她也深受新思想的影响，行事有新式女性的风采，在舅父支持下进入上海务本女学读书。在校期间，积极参加爱国的革命运动。1907年夏，她以第一名的优异成绩毕业。回到故乡后，受聘于私立吴兴女校。先为教员，次任舍监，最后任校长。
<br>
1911年秋，应务本老同学之邀，她离开吴兴女校，到上海创办神州女校和《神州日报》。与坚决革命的章太炎的结合，注定了她要经受连续不断的磨难。声讨袁世凯，护法孙中山，抨击蒋介石，反对汪精卫，坎坷走来，从不失凛然正气。
<br>
1949年5月24日，上海解放，汤国梨欢欣鼓舞。1950年，她回到苏州，满怀热情地参加了政府工作，当选为苏州市和江苏省首届人民代表，并担任了一些公职。晚年，她极为关心台湾回归祖国，实现祖国统一大业。她深切怀念在台湾的亲友故旧，经常撰写怀念文章，呼吁台湾有识之士尽快促成祖国统一。
<br>
1979年，《章太炎全集》出版，汤国梨几十年的夙愿终于实现。
<br>
汤国梨是在乌镇度过她的青少年时代的，出去后却很少回来。但晚年的汤国梨还是禁不住对故乡的怀念，多次在诗中表达这份情愫。1980年7月27日清晨，汤国梨病逝于苏州，享年98岁。1986年，迁葬于杭州西子湖畔南屏山麓章太炎墓侧，沙孟海题写墓碑。
<br>
汤国梨善诗词，工书法，著有《影观诗稿》、《影观词稿》，九十高龄后所作书法作品多次在国内外展出。','img/jj/13.jpg'),
(NULL, '卢学溥 (1877-1956)','1877年出生在乌镇，字洞泉，又作鉴泉、润泉，中国金融界元老。祖上自清康熙年间迁到青镇经商，是茅盾的表叔。
<br>
许是乌镇地处两省三府七县之交界，襟海带湖的形势造就出的开放风气所致，历史上的一些杰出人物，书固然读得好，所为国计民生之事也都十分漂亮，儒风之纯正，令人感叹，卢学溥即是一个典型。
<br>
卢学溥祖籍东阳，迁居青镇后由于经营有方，家资日益充盈，渐渐成为乌镇一带的乡绅望族。卢学溥在一个富绅与书香结合的家庭里长大，受到良好的教育，由经商带来的开明、练达家风无疑对他的性格产生重大影响。
<br>
1902年秋，卢学溥与严槐林、沈听蕉等结伴到杭州应乡试，卢、严两人中式。次年，卢赴京会试落第。回家后接任祖父卢小菊任立志书院山长。卢学溥年轻气盛，大行改革，聘请沈听蕉等有真才实学、思想激进的人当教师，学校风气大为改观。卢本人也成为当地瞩目的新派人物。
<br>
当时，茅盾正求学于该校，由于勤奋好学，颇得师长青睐。卢学溥对茅盾的文学才华大加赞赏，曾作批语云：“十二岁小儿能作此语，莫谓祖国无人也。”对茅盾寄予了很高期望。
<br>
许是家族的经商理财因子萌动，1908年下半年，卢学溥突然辞别书生事业离开家乡，在南京、北京等地经理财政事务。先后任奉天教育厅和北洋政府财政部秘书、财政部制用局机要科长和公债司司长、北洋政府财政部次长、北京新亨银行常务董事和中国银行监察人等职。
<br>
北伐战争后，卢学溥出任南京中国银行监察人。1926年，梁士诒任交通银行总理，力邀卢学溥协理，卢为之大力整顿，使银行度过了金融危机。不久，卢学溥出任交通银行董事长，并兼任浙江实业银行常务董事。当时，国民党宋子文创办中央银行，将中央、中国、交通三大银行充入官股为国家银行。孔、宋家族试图独揽国家金融，对卢学溥等进行排挤，但又欲借重卢在银行界的声望，委以虚职。卢学溥不愿依附，遂自行辞职，专心致志经营浙江实业银行，后来该行成了实力雄厚的私人银行，与浙江兴业、新华、上海等银行并称“南四行”，在银行界很有威望。
<br>
读书人自古重气节，卢学溥也不例外。在日伪统治期间，他隐居于上海万航公寓，始终不与汪伪政府合作。抗战胜利后，他才继续出任浙江实业银行董事。1949年后，他兼任永亨银行、大陆实业公司董事长，盐业银行、中国银行董监事等职；1952年，银行进行公私合营，卢学溥继续担任公私合营银行董事和中国银行监察人。
<br>
卢学溥对乌镇的贡献也确实大可称道，曾多次出资维修家乡的名胜古迹。曾捐资修茸乌镇寿圣塔，分水墩等古迹，又购书寄赠植材学校。1933年，他继承祖父遗志，慷慨解囊，组织续修《乌青镇志》。他自任总纂，聘请嘉兴朱仲璋、武进张季易分任编辑，还请同乡茅盾、嘉兴金笺孙等进行具体研讨，历时3年，耗资一万余银元，终于1936年6月全部告成。
<br>
乌镇历史上曾有过多次镇志的编修。祖父卢小菊曾因欲重修镇志而未成。并引为憾事。孙子卢学溥终于完成了祖父的遗愿，卢小菊在九泉之下当可欣慰矣。
<br>
卢学溥组织续修的这部《乌青镇志》，人称“卢志”，共44卷，分订线装木版本12册，封面由书法家叶恭绰题写。在“董志”基础上新增了工商、教育、选举、大学生、两庑先儒、才媛、大事记、存疑和旧序等章节。为乌镇留下了极为珍贵的历史文献资料。该志体例完善，内容精核，新增套色地图与风景照片。现在，要了解乌镇的史料事迹，基本上是靠“卢志”。单此一事，卢学溥对乡邦文献的传承就足以让后人铭记了。
<br>
1956年12月25日，卢学溥在上海公寓逝世，享年80岁。','img/jj/14.jpg'),
(NULL, '劳乃宣 (1843—1921)','字季宣，号玉初，别署矩斋，晚年又号韧叟，劳氏为青镇旧族，祖父寓居苏州时入籍乌镇。音韵学家、拼音文字提倡者。
<br>
清同治十年（1871），劳乃宣中进士。曾任保定通志局编纂，并先后担任河北省几个县的县知事。后任江宁提学使。先后任京师大学堂（北京大学前身）总理，兼署学部副大臣及代理大臣；上海的南洋公学（交通大学前身）监督；杭州求是大学堂（浙江大学前身）监督。交通大学、浙江大学和北京大学这三个著名大学校长任史上，都有着劳乃宣的名字。
<br>
民国成立后，他志存复辟，组织遗老遗少成立社团“十老会”，但终不能挽救大清的命运。当一切终为定局时，劳乃宣选择了与他姓“劳”同音的崂山隐居，把无法实现的政治企图，寄托在了他自认为蕴含他血脉渊源的峻奇自然山水之上。隐居期间，他花了十年时间，主动帮助德国传教土卫理贤翻译《易经》，在西方出版后引起轰动，乃至闻名于世的西方哲学家容格也说，《易经》的翻译者，是他一生影响最大的人之一。1921年7月21日，劳乃宣病逝于青岛。
<br>
劳乃宣是杰出的等韵学大家。1883年出版的《等韵一得》一书，是清代最晚出的等韵学著作，也是清末唯一的一本等韵学著作。明末等韵学的研究分南北两派，北派以《中原音韵》为正宗，将三十六字母全部删去。南派以《洪武正韵》为正宗，保存了三十六字母中的全部浊音。《等韵一得》属南派系统。全书分内外篇，内篇以声母、韵母、四声为三个纲，包括字母谱、韵摄谱、四声谱等10谱；外篇包括字母、韵谱、四声、双声叠韵、反切、射字、读法、杂论等8个内容。该书条理清晰分明，审音精细，分类多合现代音理。
<br>
劳乃宣还是早期拼音文字的倡导者。1905年，劳乃宣为了弥补王照所提倡的官话合声字母只能拼写北方话的不足而在其基础上增加了6个声母、3个韵母和一个入声符号，以拼写下江官话，这就是宁音谱（后以《增订合声简字谱》为名在南京出版单行本）。在此基础上再增加7个声母、3个韵母、一个浊音符号，以拼写吴语，这就是吴音谱（后以《重订合声简字谱》为名在南京出版单行本）。在吴音谱基础上再增加20个声母、2个韵母，制成闽广音谱（未出单行本）。1907年出版的《京音简字述略》阐述了王照的官话字母，同年出版的《简字全谱》则包括了京音、宁音、吴语和闽广音四谱。1909年，劳乃宣与赵炳麟、汪荣宝等一班名流，在北京成立了研究文字改革的最早的群众性团体之一“简字研究会”。他的合声简字在南方得到广泛传播，从而使他成为中国拼音运动史上正确解决方言与共同语关系问题的第一人，他的工作对后来注音字母方案的研制具有很大的影响。
<br>
劳乃宣是故土乌镇走出来一位忧国忧民的乡杰。他勤政爱民的地方官，更是中国最早成立、孕育了无数国之栋梁的三所著名大学的校长，是真正才学绝佳的学问大家。作为一个没落旧朝代走出来的遗臣，他曾扮演了一个顽固守旧的角色，但他为中华文化的推广和传承做出的贡献却为人称道。
<br>
晚年时，劳乃宣虽客居他处，却时时梦萦故乡，在他《归耕釜麓出都感赋》诗中，就歌咏了他所处镇的县城桐乡：
<br>
南云望断故山苍，
<br>
且荷犁锄倚太行。
<br>
渔父笑人殊楚泽，
<br>
居民爱我即桐乡。','img/jj/15.jpg'),
(NULL, '夏同善 (1831—1880)','字舜东，号子松，字舜东，原是仁和（杭州）人。幼年丧母，父亲夏建寅续娶乌镇萧氏，夏同善事之如同生母。父亲仕途失意，又值家道中落，遂弃儒经商。夏同善常随继母住在外婆家，他从小酷爱读书，竟遍读外祖父萧麒所藏典籍。
<br>
1855年，夏同善中举人，次年进士及第，钦点翰林，并赐“翰林第”匾。夏同善因念自己得以读书，皆赖萧家，就把匾挂在外婆家的大厅上，又请得圣旨改建萧家厅。崭新的翰林第造好后，他还将圣旨诰命供奉在正厅中梁一对雕花镏金拷漆木盒内。夏同善文章超群，时人誉谓“在曾、左之上”。慈禧太后十分赏识他的才学，曾命他和翁同龢一起为光绪帝侍读，翁同龢主要教光绪读书，夏同善主要教光绪写仿格（写字）。
<br>
夏同善仕途还算顺利，历官庶常馆庶子、詹事府詹事、兵部侍郎、顺天学政、吏部左侍郎等。','img/jj/16.jpg'),
(NULL, '严辰 (1822—1893)','原名仲泽，字淄生，号达叟，清道光二年(1822)出生于青镇。乌镇有两座晚清时期的翰林第，一为夏同善，另一座就是晚清进士翰林院庶吉士严辰的。严辰的翰林第在乌镇北栅，已圯。严辰从小聪颖过人，好学不倦。道光二十三年(1843)，他到云南省亲，途经寄居贵阳的族兄燮斌处，恰逢朝廷加开恩科，严辰就借贵州籍在客里应试，竟中举人，中举后改归原籍。咸丰九年(1859)，成进士，授翰林院庶吉士。同治元年(1862)，在翰林院散馆考试中，因在制赋触怒慈禧皇太后，由首列降至第十名，任刑部主事。主事的官阶仅为正六品。严辰深知，自己既已冒犯太后，仕途的前景实际上已是很渺茫了，于是当机立断，辞归乡里。从此，他以自己的学识和声望服务桑梓，“凡地方应行兴革之事，无不尽力倡办”，修学宫，办书院，筑桥铺路，行善济贫，成为受乡人尊敬的著名乡绅。
<br>
严辰对乡里的贡献多多，但概而言之，有三大贡献：
<br>
一是尽力革除官府的一些弊政，为老百姓办好事。当时桐乡收验漕米，官府有所谓“样盘”的做法，吏役借此欺诈百姓，从中渔利。严辰于光绪元年(1875)请御史奏准，终于革除“样盘”。他还建议在丰年创办“积谷仓”，钱谷并储，以备歉收时赈济。光绪八年和十五年，乌镇两次发生灾荒，“积谷仓”便发挥了巨大作用，可谓活人无数。
<br>
二是他十分重视发展地方教育事业。在分水书院遭战火洗劫后，他发起创建立志书院，经过四年艰苦经营，终告成立。他不仅任立志书院山长20多年，还担任桐乡桐溪书院、翔云书院的山长。此外，他同样重视普及启蒙教育，在乌镇创立义塾六处，吸收所有的适龄儿童上学。乌镇素来文风颇盛，历史上因读书而享令名的数不胜数，严辰自己即是一个范例。在立志书院成立不久，他又在书院对面筑文昌阁，目的无非是希望乌镇文运昌盛，多出一些杰出人才。
<br>
严辰的第三大贡献是编修地方志，尤其是《光绪桐乡县志》的编修。他认为编修地方志十分重要，“将使一镇之民风俗尚赖是以传，而乡曲之人潜德幽光……湮没不彰者，皆得附以不朽，其功岂不甚伟”。他在编修县志的10年中，“或家居，或舟居，日以编志为课”，无有停息。编修地方志是很吃力的，不仅要做文字爬梳挑剔工作，还得经常亲自跋山涉水作实地考察研究，“测其高下大小，以订旧志之讹”。所以，县志成“而辰则精尽”。同时，他还校补了《乌青镇志》。
<br>
光绪十九年(1893)，严辰因病到安徽就医，卒于安庆，享年72。有《墨花吟馆诗抄》留世。1921年，镇人感念严辰为家乡所作的贡献，联名呈文请求附祀于杨园祠，使“两贤济美，辉映后先”。','img/jj/17.jpg'),
(NULL, '李乐 (1568—1655)','李乐，字彦和，号临川，乌镇人，明朝隆庆戊辰进士。
<br>
其初任新淦县令时，律法简约，不烦百姓，政令透明，易于执行，所以境内社会安定，民户富足，百姓视之如父母。他有一句格言：“无心之失甚多，有意之恶不作。”足以见其为人。初有政绩，就升为礼科给事中，不久又改任吏科，当上了京官。可他因上了一道《科场积弊疏》，触犯了大京兆，不久即被外放，历任福建佥事、江西参议、广西参议等职。但他还是一如既往地实行清明政治，惩办贪官污吏毫不客气；对自己也极为严格，百姓多被其福。后来因病告归，朝廷却要他继续做官，授为尚宝卿，他没有去。这一举动使远近的缙绅百姓颇为动容，对他的品德深为敬佩，后来乡里有事，便常常要先问问他的意见。李乐也没有辜负大家的信任，为乡里办了不少事情，但绝不涉及一毫私心，颇有君子之风。因此，当时的彭应参题了一块“真君子”的匾挂在李乐的堂前。李乐是当之无愧的。
<br>
这样的好官总是有些故事在百姓中流传的。据说李乐在新淦县时，御史萧廪经过，钦慕李乐的清名，想见他一面，就下了个帖子。李乐前往拜见，萧御史大概出来慢了些，李乐居然大声喊道：“御史临县，令为主；今来谒，则御史为主。乌得迟慢？”萧御史当然不高兴，回去跟好友曾见台说起，曾是知道李乐的，也是爱才的，就劝慰了一番，又说：“贤令未便轻议体统也。”萧御史也就释然了。
<br>
李乐退休后，有感于宋末沈东皋的《乌青镇志》早已绝迹，就编了一册《万历李志》，为乡邦历史续传。这是乌镇历史上第二本镇志。可以说，明朝万历以前的乌镇历史，全靠李乐的《万历李志》得以传至今日。民国时，卢学溥编修新志，就曾参考了李乐后代收藏的已成海内孤本的“李志”。
<br>
李乐87岁时逝世，乡人以乡贤的规格祭祀他。
<br>
著有《金川纪略》、《见闻杂记》、《拳勺园小刻》，明万历二十九年(1601)，重修《乌青镇志》，志分五卷，当年完稿付梓。','img/jj/18.jpg'),
(NULL, '鲍廷博 (1728—1814)','鲍廷博，字以文，号渌饮，祖籍安徽歙县之长塘，故称长塘鲍氏。父亲鲍思诩娶杭州顾氏为妻，遂移家杭州，鲍廷博曾一度迁居青镇杨树浜南村。
<br>
浙江自古多藏书家和藏书楼，明清两代，仅桐乡就有四所闻名南北的藏书楼，即濮院杨氏的嘉乐楼、梧桐汪氏的裘杼楼、崇德吕氏的天盖楼和乌镇鲍廷博的知不足斋。知不足斋藏书可观，所藏之孤本、善本经鲍廷博及其子孙校刊而辑成的《知不足斋丛书》计30集，收书207种，蔚为大观，内容涉及经史考订、算书、金石、书画、地理、诗文集、书目等，是我国古代著名大型丛书之一，世称善本。
<br>
鲍廷博的藏书来源，一是搜购，二是抄录。他爱书之名远播之后，四方来售者无数；他听说有人售书，无论远近，亦必前往搜购。他和当时著名藏书楼如赵氏二林的小山堂、汪氏的振绮堂、吴氏的瓶花斋、孙氏寿松堂等订有互抄之约，鲍廷博每每不辞劳苦，亲自抄录他们的善本、珍本和孤本。
<br>
鲍廷博精于版本目录之学，长期的搜购更增强了他的鉴赏力。他能够对前来求售的书籍的来龙去脉说得一清二楚，甚至对其中的错讹了如指掌。著名学者阮元称鲍廷博“博及群书，家藏万卷。虽隐僻罕见著录者，问之无不知其原委”。时誉如此之盛，鲍廷博却根据《大戴记》中“学然后知不足”语，谦虚地把自己的藏书楼命名为“知不足斋”。
<br>
乾隆诏修《四库全书》，征集天下已刊和未刊书籍，鲍廷博命子鲍士恭集家藏图书626种(多系宋元旧版)，通过浙江学政王杰送呈四库馆，为当时私人藏书家进献之首。乾隆大加嘉赏，并颁赐《古今图书集成》一部。在发还原呈书籍时，乾隆还在其中的《唐阙史》、《武经备要》上亲题御诗，再示嘉奖。《唐阙史》上的诗为：“知不足斋奚不足?渴于书籍是贤乎；长编大部都庋阁，小说卮言亦入橱。”得此殊荣，引得当时的读书人大为羡慕。
<br>
鲍廷博藏书特别值得称赞之处是他的“以散为聚”的藏书思想，所谓“以散为聚”主要表现为以刻书的方法把书存之于世。所以他在中国出版史上亦有一定地位，曾主持刊刻《知不足斋丛书》26集。丛书校刊于1796年，鲍廷博亲自校勘，汇集了他家藏的所有古善本和珍抄旧刻。鲍廷博86岁被钦赐为举人，一时传为盛事。鲍廷博刻书还有一件不为人所注意、但在中国小说史上具有重要意义的事，即他曾刊刻蒲松龄的《聊斋志异》，此书即世称现存最早的《聊斋志异》刻本，也即乾隆三十年(1765)的杭州青柯亭本。此书一出，《聊斋志异》得以广泛流传，以后的各种评注本、石印本和铅印本等都据此翻印。
<br>
鲍廷博一生读书、爱书、搜书、藏书，从不自秘，常常投赠他人，并以为图书得以公用为藏书最终之目的。但垂暮之年贫病交加，一代书痴丧失了聚书、抄书的能力，无异于失去生命的源泉，第二年便告别了这个世界。
<br>
鲍廷博，一位纯粹的、令人钦敬的读书人，一位为保存和传播祖国文化遗产而不遗余力的藏书家。','img/jj/19.jpg'),
(NULL, '沈东溪 (1522—1566)','名铧，世营冶铸业。明嘉靖年间，携七房儿媳，自吴兴县竹墩村迁居桐乡市柞溪镇(今乌镇郊)。于镇两端辟地十亩，设工场，开炉冶铸锅镬，行销远近。其后，留六房儿媳及叔侄辈于柞溪，自率家人移居县城，开炉营业。
<br>
东溪信佛，嗜酒，爱弈棋，与县城凤鸣寺方丈交往甚密。嘉靖三十三年(1554)，倭寇侵扰沿诲，东溪将柞溪工场移入城内，借凤鸣寺外地临时经营，为寺院熔铸钟鼎烛台。三十五年，倭寇占嘉兴，攻皂林，围桐乡县城四十余日。守将无法退敌。某日，东溪与方丈对弈于僧舍，扬言：“欲退贼，何必张惶。”其时巡抚阮鹗亦在围城中，闻言奇之，即备礼往访，请教退敌方略。东溪说：“目下兵尽矢穷，人无寸铁，惟有集城中锅釜铁器，熔汁泼洒。”巡抚依计聚铁，募工熔汁，又于城上垒大木，以巨索绑结，待敌攻城，冶工以铁汁杂火药，凌空泼洒，毙敌无数。倭寇大惊溃退，桐乡城得以保存。寇平后，巡抚手书“退寇全城”四字，制匾悬于其庐；又授百户，不就。
<br>
卒后隆庆间(1567--1572)从祀皂林宗礼祠，后祀县城忠义祠。百姓感其德，尊为飞火将军。其子孙继承冶铸业，开设沈亦昌冶坊于柞溪(后迁乌镇)，绵延四百余年。柞溪多炉，俗称炉头，地名沿用至今。','img/jj/20.jpg'),
(NULL, '张杨园 (1608—1674)','张杨园，名履祥，字考夫，号念芝，因世居乌镇近郊炉头杨园村，人称杨园先生。他是明末清初著名的理学家，一生崇奉程朱理学，以教授学生为务，人品德行，无可挑剔，尤有孝行，在乌镇名声极大；中年经营农务，以实践所得，写成《补农书》一书，是一位自学成才的农学家。
<br>
张杨园出身在一个较富裕的家庭，且祖父、父亲、哥哥都是读书人，父亲、哥哥曾中过邑庠生(秀才)，所以自幼受到良好的文化熏陶。加上自己的聪明和好学，从小就表现出过人的才智和孝笃的品德。15岁，应童子试，补县学弟子员(秀才)。1631年，23岁的杨园到友人颜士凤家担任教师，从此开始了他的教学生涯。他教育严格，既重知识，又重德行，尤其重视启蒙教育和做学问的方法示范。他自己对孔孟之学极感兴趣，提出“祖述孔孟，宪章程朱”，在授徒时同样贯穿了这一宗旨。在吕留良的语溪东庄留馆时，他帮助吕留良刻印了二程遗书、朱子遗书、语类及先儒遗著数十种，为保存古籍、弘扬文化作出了不小的贡献。
<br>
在教育的同时，杨园的求知研究之心从不稍懈。他研读《小学》、《近思录》，钻研孔孟儒学和程朱理学。晚年，杨园的治学水平更显精熟，对王阳明的《传习录》进行条分缕析的评论，揭露其阳儒阴释的学术本质。
<br>
从顺治四年(1647)开始，张杨园一面教书，一面雇人经营农业。`每当春耕、秋收季节，他都要暂停学馆，回家务农。48岁那年，杨园完成了《补农书》，以补充当时流传的《沈氏农书》的未尽事宜。《补农书》较多地介绍种桑、养蚕和丝织业方面的知识和技术，很适应当时蚕桑、丝织业已较普遍的现实，具有很大的指导意义。当代农学专家陈恒力对《补农书》评价甚高，说它是“总结明末清初农业经济与农业技术的伟大作品之一，是我国农业史上的一种最可宝贵的遗产”。后来，该书广泛流传于苏、浙、皖等地，并根据书中的方法指导生产。1957年，中共中央农村工作部组织力量来嘉兴农村作调查，对《补农书》作过专题研究。
<br>
康熙十三年(1674)七月，张杨园恬然而逝，被安葬于住宅东南半里许的田头，后又迁葬于杨园村北西溪桥畔。乾隆年间，浙江学使立巨碑，上题“理学真儒杨园张先生之墓”。200年后的同治十一年(1872)，清政府为笼络人心，降旨准张杨园从祀圣庙，即把张杨园的牌位供奉在孔庙正堂前的廊屋里，分享祭孔的祀品。这在封建社会是一种极高的荣耀。难怪后人要大发感慨，说“布衣祀两庑，古今能有几？”
<br>
张杨园的著作，《清史稿》卷四百八十《儒林一》有记载，如《读易笔记》、《读史偶记》、《近古录》等，后人以《杨园先生全集》刊行。
<br>
张杨园之教学、研学、著作卓成大家，为乌镇历史上排名第一的乡贤。','img/jj/21.jpg'),
(NULL, '茅坤 (1512—1601)','字顺甫，别号鹿门，明嘉靖十七年进士。“唐宋八大家”之父，著名作家，藏书家，其文学创作及理论在我国古代文学史上具有重要影响。历任青阳知县、丹徒知县、礼部主事、吏部稽勋司、广平通福建副等职。让茅坤流传后世的不是他的官职，而是他作为明朝文学流派“唐宋派”的主将身份和他编写的《唐宋八大文抄》164卷。《文抄》专选韩愈、柳宗元、欧阳修、苏洵、苏轼、苏辙、王安石、曾巩等八人的文章，进一步肯定提倡唐宋文，盛行海内，影响深远。
<br>
《唐宋八大家文抄》名盛一时，但世人少知茅坤其人，更不知茅坤与乌镇的渊源。民国卢学溥所修的《乌青镇志》上有茅坤的传记。茅坤是湖州人，湖州当时称归安，其时乌镇亦隶属归安。茅坤曾写过一篇《分署本末署》，记述了乌镇建立分署机构的经过。大概是这层因缘，卢学溥将之视为乌镇人了。
<br>
另据《湖录》记载，茅坤的藏书在当时富甲海内，筑藏书楼数十间仍充栋不能容，后由其孙茅元仪根据实际收藏编写《白华楼书目》，分为九学十部。九学为：一经学、二史学、三文学、四说学、五小学、六兵学、七类学、八数学、九外学。九学而外，再加世学，号曰十部。从其所列类目看，除传统的门类外，还特别注重兵、数、外、世等类，由此可以窥见其藏书十分入世，内容也与一般士大夫的藏书有较大不同。','img/jj/22.jpg'),
(NULL, '赵伯琮(1127—1194)','宋太祖赵匡胤的七世孙，谥号哲文神武成孝皇帝。乌镇曾是南宋安定郡王赵伯琮的王府所在地，《乌青镇志》有载。
<br>
孝宗是南宋最有作为的君主。他不甘偏安，力图恢复中原，同时改革内政，希望重振国势，致弥漫朝野的妥协求和之风一度有所扭转。然而，面对高宗的处处牵制、主和派的极力阻挠、主战派的人才凋零等内外不利因素，孝宗深感力不从心，中兴大业最终付之东流。
<br>
伯琮家族随着南宋的灭亡而销声匿迹，那肯定曾是十分豪华富丽的王府也因此了无痕迹。哪怕是文字记载，有关王府的信息也仅在《乌青镇志》中表明地点的四个字：“在顾家桥。”至于它的规模、格局如何，一概付诸阙如。镇志中还有一处关于赵伯琮的世系、封赠的文字，但因多有不确而反致混乱。近来，当地出土了安定郡王赵伯琮、媳胡氏、沈氏、孙希励墓志四方，大大明确了安定郡王的封赠和世系情况，可补正宋史和方志记载的疏误。但有关王府的建筑情况，还是空无一言。
<br>
尽管如此，安定郡王作为乌镇历史上最有地位的居民，其王府可能是乌镇历史上最为豪华气派的住宅建筑。今天，我们只能从有关他的短短的文字记载中遥想他当年的荣耀和他王府建筑的宏大气势。','img/jj/23.jpg'),
(NULL, '范成大 (1126—1193)','南宋诗人。字致能，号石湖居士，吴郡（今乌镇北）人。
<br>
范成大与尤袤、杨万里、陆游齐名，号称“中兴四大诗人”。继承了白居易、王建、张籍等诗人新乐府的现实主义精神，终于自成一家。其诗题材广泛，风格平易浅显、清新妩媚。访游乌镇时，吟有《乌戍密印寺》一诗。晚年所作《四时田园杂兴》六十首，描绘了江南农村景物、风俗人情和农民生活，风格清新明快，优美流畅，富有韵味，有民歌之特色，是古代田园诗的集大成者。','img/jj/24.jpg'),
(NULL, '陈与义 (1090—1139)','字去非，号简斋，洛阳人。官至参知政事。出任湖州知府，卜居青墩镇，寓居在寿圣院后芙蓉浦上，称其居所曰“南轩”，过着“纸帐不知晓，鸦鸣吾当兴”、“解襟凭小阁，日暮归云多”的闲散孤寂生活。
<br>
陈与义是宋朝著名诗人，是江西诗派的“三宗”(黄庭坚、陈师道、陈与义)之一，诗尊杜甫。陈与义原先也重形式，但他生当北宋、南宋交替之际，饱尝战争、流离之苦，这一经历与杜甫诗中的精神正相吻合，所以他后来的诗沉郁悲愤，寓意深刻，迥然有别于江西诗派的其他诗人。著名诗人刘克庄曾有精辟的评论：“元祐后诗人叠起……要之不出苏、黄二体而已。及简斋出，始以老杜为师……造次不忘忧爱，以简洁扫繁缛，以雄浑化尖巧。第其品格，故当在诸家之上。”
<br>
卜居青墩期间，陈与义与当地僧侣、名士交往甚密，日以吟诗为乐。许多诗描写的就是他与叶天经、僧人洪智三人泛舟苕溪、流连佛禅的经历，如《怀天经智老因访之》、《与智老、天经夜坐》等。
<br>
陈与义诗尊杜甫，多学其诗的句法、用典等形式技巧。宋后，陈与义的简斋读书处曾是乌镇的一个胜景，与昭明书馆相互辉映。著有《简斋集》三十卷、《无住词》一卷传世。','img/jj/25.jpg'),
(NULL, '裴休 (791—846)','字公美，唐代河内人，进士出身，后官至宰相。
<br>
裴休曾在乌镇筑府寓居，裴府为乌镇历史上第一座私家园林建筑，建筑宏大，园内设亭台楼阁、假山流水、佳树名花，极尽精巧雅致之能事，因“长廊蔽日”，故乌镇民间有“有天无日”之说，可见其规模之盛。
<br>
裴休对佛教信仰相当虔诚，与禅宗更有深厚因缘。在禅宗史上，裴休与当代的庞蕴、白乐天、李翱、陆亘大夫等居士有同等重要的地位。裴休善文章，工书，以欧、柳为宗，其书法貌似柳体，但书风较柳更遒媚劲健，结构严谨精密，用笔真率紧劲。《杰峰禅师碑》是标准的中唐书风，此碑由裴休撰并书柳公权篆额。裴休书法传世拓本还有《定慧禅师碑》，全称《唐故圭峰定慧师传法碑》，亦称《圭峰碑》。唐大中九年（八五五）十月立，裴休撰并书，柳公权篆额。碑现存陕西户县草堂寺，正书，三十六行，行六十五字，额篆书九字。存世最早拓本为明拓本。米芾《海岳名言》评：“裴休率意写碑，乃有真趣，不陷丑怪。”','img/jj/26.jpg'),
(NULL, '李绅 (772—846)','唐润州无锡人，祖籍安徽亳州。字公垂，中唐时期第一位“新乐府”诗人。因其人短小精悍，时号短李。27岁考中进士，补国子助教，曾历任江州刺史、滁州刺史、寿州刺史、与元稹、白居易交游甚密，游学乌镇，与乌镇普静寺住持唐抱玉为莫逆之交。李绅一生最闪光的部分在于诗歌，作有《乐府新题》20首，已佚。流传至今的有《追昔游诗》三卷、《杂诗》一卷,收录于《全唐诗》。另有《莺莺歌》保存在《西厢记诸宫调》中。其《悯农》诗脍灸人口，妇孺皆知，千古传诵。李绅因此被誉为悯农诗人。','img/jj/27.jpg'),
(NULL, '萧统 (501—531)','萧统即南朝梁昭明太子，字德施，小字维摩，南兰陵人，梁武帝萧衍的长子。《昭明文选》主编。天监元年（502）即他只有二岁的时候就被立为太子，死后谥昭明。萧统自幼聪敏，读书勤勉，有博古通今之学，七步成诗之才。萧统后来没有做皇帝，但在后人看来，他的名气绝对不比他当皇帝的父亲小。成人后，萧统编辑整理了我国第一本集诗歌、散文于一体的文集《文选》，世称《昭明文选》。选录从先秦到公元520年漫长的800年间的130多位作家文质兼备的文章754篇30卷，加上（唐）李善注及嘉庆十四年二月胡克家《考异》十卷20万字，共180多万字（今本60卷），是我国现存编选最早的诗文总集。
<br>
在很长一段时期，《文选》和后来的《古文观止》、《唐宋八大家文抄》等是古代读书人手头必备的文学读本，影响深远。据清乾隆《乌青镇志》记载，梁天监二年（503年），萧统曾随老师沈约来乌镇读书，并建有书馆一座。后来，书馆塌毁，遗迹残存。明万历年间，乌镇同知全廷训出于对萧统才学的敬仰，便在书馆旧址前建起一座石坊，里人沈士茂题书“六朝遗胜”、“梁昭明太子同沈尚书读书处”匾额，至今尚存西栅昭明书院内。','img/jj/28.jpg'),
(NULL, '沈约 (441—513)','字休文，浙江德清武康人，齐梁文坛领袖。和谢眺等开创了“永明体”，讲求声韵格律，促成了诗歌由古体向近体的发展。撰《宋书》等，明人辑有《沈隐侯集》。
<br>
沈约曾在南朝的宋、齐、梁三朝中为官，梁武帝时官至尚书令、太子少傅。其先父的墓地则在乌镇河西十景塘西边，旁有普静寺。每年清明，沈约总要从建康回到故乡扫墓，并守墓数月。梁武帝担心儿子萧统因此荒废学业，但又不能阻止沈约的孝行，于是，只好让萧统随沈约到乌镇跟读。太子来读书，自然得有座像样的房子。于是，不数月，一座书馆在乌镇青墩翼然而立。太子和沈约就在这个书馆里生活、学习，直到回建康。第二年来又周而复始。这个书馆，后来人们就叫它昭明读书处或昭明书院。这样称呼它，当然因为太子的地位和那一段师生共读的佳话，更是为了纪念好学的精神，敬重向学的心灵。','img/jj/29.jpg');

/**新闻信息**/
CREATE TABLE wz_news(
  cid INT PRIMARY KEY AUTO_INCREMENT,
  ctitle VARCHAR(32),
  cpic  VARCHAR(64),	#图片路径
  cjj VARCHAR(128),     #新闻简介
  ctime VARCHAR(32),       #新闻时间
  cbq  VARCHAR(32)   #新闻标签
);

INSERT INTO wz_news VALUES
(NULL,'美的女人都去美美的地方~ | 乌镇·玩耍','img/news/1.jpg','竹外桃花三两枝，春江水暖鸭先知。
蒌蒿满地芦芽短，正是河豚欲上时。','2019.03.09','乌镇景区|女神节|乌镇春季美食')
,
(NULL,'春暖花开的日子，来乌镇赴一场春日的约会吧。 | 一周天气','img/news/2.jpg','二月二龙抬头相遇“女神节”，春暖花开的日子，宜游乌镇。当小船儿慢慢晃悠在河上，木桨划开一片细碎的粼光，和煦的淡淡日光洒于白墙黛瓦，入目轻暖，让人的心也跟着舒畅起来。','2019.03.08','乌镇景区|一周天气'),

(NULL,'乌镇旅游发展二十年纪念系列活动”之《北京法源寺》即将上演','img/news/3.jpg','3月15、16日，由乌镇旅游股份有限公司主办，中国国家话剧院导演田沁鑫所执导的《北京法源寺》将在乌镇大剧院演出。','2019.03.07','乌镇大剧院|北京法源寺|乌镇旅游二十年'),
(NULL,'听说，这里有一个当“女王”的机会？ | 乌镇 · 好礼','img/news/4.jpg','步入早春三月，小镇的迷蒙烟雨终于散去，在淡淡的日光中，春草漫漫生长，碧木抽出新芽，端然是一派生机勃勃的模样。','2019.03.06','乌镇景区|女神节'),
(NULL,'黄鹂鸣，万物生，乌镇花开，可缓缓来矣 | 乌镇 · 惊蛰','img/news/5.jpg','3月6日，节气惊蛰正式到来，暖风和煦，打破冬日仅剩的寒肃之气。树木冒出花骨朵，在春风的吹拂下，淌成一腔温柔的春意。惊蛰到，一起迎接春天吧。','2019.03.06','乌镇景区|惊蛰|春天'),
(NULL,'市场消费下滑怎么办？ 乌镇景区：一线岗位全员大幅提薪，多措并举提升服务品质。','img/news/6.jpg','据了解，此次提薪涉及乌镇旅游80%的员工，多达3600余人，平均薪酬总额提升10%-25%，最高提薪28%。','2019.03.06','乌镇景区|提薪'),
(NULL,'大美乌镇：CCTV《航拍中国》飞到乌镇，空中体验乌镇戏剧节','img/news/7.jpg','3月3日，cctv9《航拍中国》第二季经过两年的拍摄制作终于开播了。第二季延续第一季“东西南北中”的全方位布局，开启高空视角，带你发现前所未见中国。','2019.03.05','乌镇景区|航拍中国'),
(NULL,'台湾著名画家杨治玮带领学员来乌镇寻找心目中的“诗和远方”','img/news/8.jpg','春回乌镇，雨后初晴，薄雾似纱，2月27日，台湾著名画家杨治玮先生带领他的学员们来到乌镇西栅景区水彩画写生。','2019.03.04','乌镇景区|台湾画家'),
(NULL,'刘若英乌镇开唱 | 雪夜重温“似水年华”，约定乌镇户外剧场再见面','img/news/9.jpg','当天，乌镇难得地下起了这个冬天最大的雪，为晚上的演唱会提前上演英小姐和雪都在的“奇迹”。','2018.12.31','刘若英乌镇演唱会|下雪|乌镇大剧院'),
(NULL,'员工自发组织除雪 保障游客安全游览','img/news/10.jpg','为保障游客安全游览，避免因积雪路面较滑导致游客受伤等安全事件的发生，公司员工第一时间自发地进行了积雪清理。','2018.12.31','积雪|乌旅人|扫雪'),
(NULL,'舌尖上的家乡味 ——第十届乌镇旅业民宿房东菜肴技能大比拼','img/news/11.jpg','12月29日下午，西栅茶艺街一片喜庆热闹景象，第十届乌镇旅业民宿房东菜肴技能大比拼就在这里火热举行。','2018.12.30','民宿|厨艺比拼'),
(NULL,'当跨年遇上演唱会，刘若英“带”你逛乌镇','img/news/12.jpg','又是一年岁末，回忆和憧憬在生活里轮番交替，元旦假期，寻一个向内行走的地方，在歌声中，在风景里，在告别与迎接中学会成长，学会如何去爱。','2018.12.29','乌镇景区|刘若英演唱会|跨年'),
(NULL,'香港大学生乌村尝鲜干农活 期待10月再游乌镇','img/news/13.jpg','12月27日，2018“未来之星·从香港出发——冬聚浙江”文化交流活动带领70余名来自香港十余所大专院校的青年学生走进乌镇和乌村。','2018.12.28','香港大学生|乌村|木心美术馆'),
(NULL,'《中国旅游报》关注乌镇、古北水镇案例，国内外专家热议旅游发展需从重流量向重品质转变','img/news/14.jpg','该报以古北水镇、乌镇景区作为典型案例，邀请众多国内外专家在2018年年末共同展望行业的健康发展之道。','2018.12.26','《中国旅游报》|乌镇景区|古北水镇'),
(NULL,'刚刚，乌镇发布了过冬秘诀 | 乌镇 · 冬至','img/news/15.jpg','拿过冬秘诀来说
北方靠暖气，南方靠……一身正气！','2018.12.22','乌镇景区|冬至'),
(NULL,'江南缠绵的冬雨，像你指尖的温柔。| 一周天气','img/news/16.jpg','冬天的乌镇，被湿润的气候中和，减弱了入冬带来的清寒。明日就是冬至，小镇也即将进入微雨缠绵至转雪的一周，雨丝映衬在小镇的长街与巷陌里，带来一丝温情。','2018.12.21','一周天气|乌镇景区'),
(NULL,'香港大学生游乌镇乌村 体验江南水乡农事','img/news/17.jpg','12月30日，2017“从香港出发——冬聚浙江”创业创新交流活动近80位香港大学生来到乌镇乌村，一望无际的田野、长势喜人的蔬菜、古朴的民居，让久居城市的香港大学生无不震撼，连连发出赞叹声。','2017.12.31','乌镇|乌村农事|香港大学生'),
(NULL,'乌镇景区参展2017年浙江（上海）旅游交易会','img/news/18.jpg','12月29日，由浙江省旅游局主办的2017浙江(上海)旅游交易会暨“美景、美食、美宿、美购”特卖会在上海开幕。乌镇景区作为浙江省旅游的模范单位特前往参加。','2017.12.30','乌镇景区|浙江旅游交易会'),
(NULL,'央视文化十分乌镇戏剧节：一个小镇的文化启示录','img/news/19.jpg','12月19-12月20日，中央电视台综艺频道《文化十分》栏目连续两日对第五届乌镇戏剧节进行了深度报道。','2017.12.23','乌镇戏剧节|古镇嘉年华|小镇文化'),
(NULL,'“乌镇旅游现代学徒班”正式开班','img/news/20.jpg','12月22日，“乌镇旅游现代学徒班”签约暨开班典礼在乌镇乌村大礼堂举行。乌镇旅游股份有限公司副总裁倪阿毛、浙江旅游职业学院院长金炳雄等领导及相关部门负责人出席典礼。','2017.12.23','乌镇旅游|学徒班'),
(NULL,'年度技能比赛——船工师傅唱响乌镇','img/news/21.jpg','2017年12月20日下午,乌镇景区通安9号会议室沉浸在一片歌声的海洋,一场以“工作标准化，用心亲情化”为主旨的乌镇旅业船工年度歌唱比武决赛在此举行。','2017.12.21','年度技能比赛|船工师傅'),
(NULL,'媒体记者“走转改”主题教育活动走进乌镇','img/news/22.jpg','12月20日下午，由中国记协、全国三教办组织的中央和行业媒体记者“走转改”主题教育活动走进乌镇。','2017.12.21','走转改|教育活动'),
(NULL,'小镇开大会——首届青年创业大会在乌镇举办','img/news/23.jpg','12月17日，首届新青年创业大会在浙江乌镇举行。大会由浙江省经济和信息化委员会、浙江省科学技术厅、共青团浙江省委、致公党浙江省委员会、嘉兴市人民政府主办。','2017.12.18','青年创业大会|乌镇景区'),
(NULL,'陈向宏总裁在乌镇植材小学校庆115周年暨校友会30周年庆祝活动上即席讲话','img/news/24.jpg','尊敬的各位植材小学校友、各位老师、各位领导、各位来宾，上午好，很激动今天能够参加植材小学115周年的校庆日。','2017.12.17','植材小学校庆'),
(NULL,'乌镇第九届民宿房东技能比武大赛圆满结束','img/news/25.jpg','12月30日下午，在西栅茶艺街美食广场，一场热闹非凡的民宿房东菜肴技能比武大赛正进行着，这也是乌镇第九届民宿房东技能比武大赛的决赛现场。','2016.12.31','民宿房东技能比武大赛|乌镇景区'),
(NULL,'嘉兴文化产业协会来乌镇参观考察','img/news/26.jpg','12月28日下午，嘉兴文化产业协会在乌镇西栅景区通安客栈先后举行了一届五次常务理事会议和《文化产业未来及发展》培训会。','2016.12.29','嘉兴文化产业协会|乌镇景区|乌镇互联网国际会展中心'),
(NULL,'超值的乌镇跨年之旅在这儿','img/news/27.jpg','距离元旦小长假开始还有 3 天......告别2016，来乌镇吧！送给崭新的2017一个难忘的跨年之旅。','2016.12.28','跨年|乌镇景区'),
(NULL,'大师护航，直济未来视界-乌镇国际未来视觉概念设计大赛报名正式启动','img/news/28.jpg','首届乌镇国际未来视觉艺术计划于12月13日在乌镇北栅丝厂拉开帷幕。','2016.12.27','乌镇国际未来视觉艺术计划'),
(NULL,'杭州电视台《小记者嬉游记》圣诞乐游乌村','img/news/29.jpg','12月25日，杭州电视台《小记者嬉游记》栏目组来到乌村拍摄节目。上午10点， 五六岁的小朋友和他们的家长们共计70多名准时到达乌村，浓浓的圣诞氛围，让他们十分惊喜。','2016.12.26','圣诞|乌镇乌村|杭州电视台'),
(NULL,'乌镇 | 如何度过一个称心如意的年假，这是个技术活儿','img/news/30.jpg','“寒假，古镇的雪，庙文的戏，在母亲的身边，过年多快乐。”——木心。','2016.12.25','中国年|乌镇景区|乌镇旅游'),
(NULL,'12月25日 | 跟随圣诞老人约会甘道夫','img/news/31.jpg','今年的圣诞老爷将带我们去到乌镇，除了赏水乡美景、吃圣诞大餐，制作圣诞小礼物……甘道夫、史矛革、咕噜这些经典电影形象还将陪你度过不一样的“圣诞”节。','2016.12.19','圣诞|乌镇乌村'),
(NULL,'纪念木心先生逝世五周年-《木心音乐首演》','img/news/32.jpg','木心与他的音乐故事','2016.12.18','木心|木心美术馆'),
(NULL,'乌托邦·异托邦——乌镇国际当代艺术邀请展 新闻发布会','img/news/33.jpg','由文化乌镇股份有限公司主办，陈向宏发起并担任展览主席，冯博一主策划的“乌托邦·异托邦——乌镇国际当代艺术邀请展”将于2016年3月27日在中国乌镇开幕。','2015.12.29','乌镇|乌托邦|艺术展'),
(NULL,'第六届中国乌镇湖羊文化旅游美食节开幕','img/news/34.jpg',' 2015中国湖羊文化旅游美食节于12月26日在乌镇正式拉开帷幕，美食节持续狂欢37天，将于2016年1月31日闭幕。','2015.12.26','乌镇|湖羊|美食节'),
(NULL,'预订团圆年夜饭 免费畅游乌镇西栅','img/news/35.jpg',' 曾经的一部《似水年华》将乌镇美景演绎的淋漓尽致，许多人来到这里不仅寻觅秀美雅致的江南风景，更是会在不经意间遇上那个对的人。','2015.11.30','团圆|年夜饭|乌镇|西栅'),
(NULL,'乌镇景区保障大会用电开展供电切换演练','img/news/36.jpg','近日，为保障第二届世界互联网大会·乌镇峰会的顺利召开，确保会议期间乌镇西栅景区正常供电及应对突发状况，景区配套保障部与市供电局对西栅景区双回路供电进行切换演练，并制定应急预案，实现切换演练短时停电期间景区秩序井然。','2015.11.30','乌镇景区|供电演练'),
(NULL,'技能比武，誓师乌镇峰会','img/news/37.jpg','昨天上午，乌镇景区酒店管理中心15年度员工技能比武大赛暨乌镇峰会接待动员大会在通安酒店多功能厅召开。会上就酒店中心年度员工技能比武大赛内容作了介绍，并对第二届世界互联网大会·乌镇峰会的接待工作进行动员。','2015.11.30','乌镇峰会|技能比武'),
(NULL,'乌镇景区酒店中心高标准严要求 消防安全不放松','img/news/38.jpg','11月11日下午，通安客栈进行了秋季消防演练。每位参与演练的员工都以严肃的态度参加，根据不断完善的消防演练方案，认真投入到每一个环节。','2015.11.30','乌镇景区|消防安全'),
(NULL,'乌镇峰会一线面客员工接受外事礼仪培训','img/news/39.jpg','11月27日，浙江省外事侨务办副主任陆国灏在乌镇西栅景区内，为第二届世界互联网大会·乌镇峰会的所有一线面客员工培训“外事礼仪”。','2015.11.30','乌镇峰会|外事礼仪'),
(NULL,'首届中国古村大会在乌镇西栅景区召开','img/news/40.jpg','11月19-21日首届中国古村大会在乌镇西栅景区举行。来自全国25个省（市）的近700名专家学者、古村落代表等相关人员齐聚一堂，针对目前中国传统村落的保护与发展问题，通过特邀报告、主旨演讲、互动论坛等形式展开讨论和研究，形成了一个超部门、多学科、跨行业的开放性传统村落保护与活化的对话机制、交流平台和展示空间。','2015.11.20','乌镇西栅|古村大会'),
(NULL,'乌镇景区酒店争创金鼎级特色文化主题饭店','img/news/41.jpg','2014年12月22日，浙江省旅游局的吴健芬处长，以及省饭店协会的张含贞和章艺两位专家莅临乌镇景区，对乌镇景区旗下七家酒店进行参观考察，并开展验收总结会议，这也标志着乌镇景区酒店在争创金鼎级特色文化主题饭店的道路上迈出了坚实的一步。','2014.12.31','乌镇景区|景区酒店'),
(NULL,'古北水镇：冬季嘉年华拉开序幕','img/news/42.jpg','古北水镇新增冬季娱乐项目，邀您到长城脚下体验欢乐冰雪假期。','2014.12.30','古北水镇|冬季嘉年华|乌镇景区'),
(NULL,'湖羊美食大汇聚 亮点频闪众同乐 ——第五届中国·乌镇湖羊文化旅游美食节温暖开幕','img/news/43.jpg','2014年12月27日，第五届中国·乌镇湖羊文化旅游美食节在乌镇景区的茶艺街美食广场温暖登场，活动现场热闹沸腾，各地游客、各路媒体和美食达人一同参见证了“揭锅仪式”，品尝了羊肉美食。','2014.12.27','湖羊美食|冬日美食|乌镇景区'),
(NULL,'乌镇萌动','img/news/44.jpg','一个月前，举世瞩目的首届互联网大会在乌镇举行，将这座千年江南水乡古镇推至世界目光的焦点。而今，乌镇满月了。','2014.12.25','首届世界互联网大会|互联网小镇'),
(NULL,'不一样的乌镇 不一样的圣诞梦','img/news/45.jpg','昨天是圣诞的序曲，平安夜。乌镇景区为游客们准备了一系列的圣诞狂欢活动，满满的圣诞行程让大家沉浸在欢乐之中。','2014.12.25','乌镇|圣诞'),
(NULL,'争创全国巾帼文明岗 展乌旅人巾帼风采','img/news/46.jpg','近日，乌镇景区游客服务中心迎来了国家级巾帼文明岗验收小组验收创建工作。','2014.12.19','巾帼文明岗|乌镇旅游'),
(NULL,'洋气跃羊年 乌镇圆你一个圣诞梦','img/news/47.jpg','叮叮当、叮叮当、铃儿响叮当……冬季是个浪漫的季节，在这个温情浪漫的季节，趁着圣诞来时，携亲朋好友，恋人来乌镇感受水乡的平安夜，或许能为惊喜增添几许梦幻。
','2014.12.17','圣诞|乌镇'),
(NULL,'炉灶之间显身手 ——记第五届乌镇民宿房东私房菜大赛','img/news/48.jpg','12月15日下午一点整，第五届乌镇民宿房东私房菜大赛在西栅景区茶艺街广场热热闹闹得拉开了帷幕。','2014.12.16','乌镇民宿|乌镇民宿房东私房菜大赛');
/**新闻详情**/
CREATE TABLE wz_news_pic(
  cid INT, #新闻ID
  pic  VARCHAR(64)	#图片路径
);

CREATE TABLE wz_news_content(
  cid INT, #新闻ID
  pic  VARCHAR(64)	#新闻内容
);
CREATE TABLE wz_traver(
  did INT PRIMARY KEY AUTO_INCREMENT, #攻略ID
  dtitle VARCHAR(64), #攻略标题
  dpic  VARCHAR(64),	#图片路径
  djj VARCHAR(128),     #攻略简介
  dtime VARCHAR(32),       #攻略时间
  dbq  VARCHAR(32)   #攻略标签
);
INSERT INTO wz_traver VALUES
(null,'乌村攻略 | 这个村子有何魔力？刘若英觉得至少能待5天，马伊琍带孩子来度假','/img/traver/content/1.jpg','我觉得在这边，这种宁静感，是你不用去到很远的地方就能够有的。——刘若英','2018.12.15','乌村，亲子游'),
(null,'【乌镇乌村】 回归自然，走进古韵，寻找喧嚣中的那片宁静','/img/traver/content/2.jpg','乌镇的乌村是近两年新开的度假地，返璞归真的农家生活吸引了很多呆腻了大城市的都市人，于是我们开启了三天两晚的乌镇度假模式。','2018.07.27','朋友出行，水乡风貌'),
(null,'端午节出游完全指南，三天玩转一个村还有一个镇','/img/traver/content/3.jpg','五一小长假一别，转眼就要到端午了。五月初五端午节，赛龙舟，吃粽子，纪念屈原。在乌镇，端午节又会是什么样子的呢？','2018.06.08','朋友出行，历史文化，水乡风貌'),
(null,'乌村 | 过腻了城市的喧嚣，我来这里归于宁静','/img/traver/content/4.jpg','迷失自己，然后找到自己，出走，归来，才真正明白幸福的意义是什么。','2017.12.23','个人游，休闲周末'),
(null,'随手收藏，史上最全，教你如何玩透乌镇。','/img/traver/content/5.jpg','五一小长假即将来临，旅行再一次成为热议的话题。于是，去哪儿，哪儿好玩，怎么玩，住哪里，怎么做攻略成为大家搜索网络的关键词。','2017.04.26','深度游，朋友出行'),
(null,'乌村两日亲子游记：周末遛娃去哪？田园乌村等你来','/img/traver/content/6.jpg','周末带娃去哪，是我一直绞尽脑汁思考的问题，也许新手爸妈都有如我一般的顾虑，总想在能力范围之内，给予孩子更多，让他/她感受多元与多彩的世界，最大的满足是看到孩子的笑容，你快乐所以我快乐，父母真是天底下最大的傻瓜啊。','2017.09.14','家庭游，休闲周末'),
(null,'乌镇 | 来一场毕业旅行，再给青春一个留影的机会','/img/traver/content/7.jpg','这两天，高考成绩已经陆陆续续的出来了，不少拿到成绩的小伙伴，已经准备报考完来一场说走就走的旅行！','2017.06.24','团体游，水乡风貌，历史文化'),
(null,'戏剧节攻略 | 如何在乌镇度过完美两天一夜的戏剧狂欢~','/img/traver/content/8.jpg','十月将近，戏剧节都在眼前了。','2017.09.09','朋友出行，二日游'),
(null,'攻略 | 暑假带孩子出游是怎样一种体验','/img/traver/content/9.jpg','现如今，越来越多的家长行程单里，多了一项暑期带孩子出游的计划，趁着长长的假期，全家一起出游，既是增加亲子陪伴的时间，也是放松的一个好方式。','2017.08.09','乌村，二日游'),
(null,'一人行 | 一场秋雨一场寒，年年单身愁断肠','/img/traver/content/10.jpg','努力把生活过得有模有样，不写诗不去远方，不逃离也不慌张。','2017.11.11','水乡风貌，一日游'),
(null,'一贴包治乌镇吃住行 | 国庆中秋小长假','/img/traver/content/11.jpg','十一小长假已经在眼前了，本年度最长的一个假期，小乌已经收到了许许多多的提问。根据提问的内容着重做了这一份攻略。','2017.09.27','团体游，历史文化'),
(null,'如果最后是你，那我等 | 乌镇·婚礼','/img/traver/content/12.jpg','黑瓦白墙，石桥流水，运河旁站立了千年的小镇，一直就是个适合结婚的地方。每个女孩儿在少女时代大概都想过同一个问题——将来的我，又会穿上嫁衣，携谁人手？','2018.03.14','水乡婚礼，西式婚礼，中式婚礼'),
(null,'关于乌镇婚礼的N种可能 | 乌镇·婚礼','/img/traver/content/13.jpg','用一场绝美的婚礼来开启余生的甜腻啊~','2017.09.11','乌镇婚礼，水乡婚礼')