set names utf8;
set foreign_key_checks=0;

drop database if exists sampleweb;
create database if not exists sampleweb;

use sampleweb;

create table user_info(
id int primary key not null auto_increment comment "ID",
user_id varchar(16) unique not null comment "ユーザーID",
password varchar(16) not null comment "パスワード",
family_name varchar(32) not null comment "姓",
first_name varchar(32) not null comment "名",
family_name_kana varchar(32) not null comment "姓かな",
first_name_kana varchar(32) not null comment "名かな",
sex tinyint not null default 0 comment "姓別",
email varchar(32) not null comment "メールアドレス",
status tinyint not null default 0 comment "ステータス",
logined tinyint not null default 0 comment "ログインフラグ",
regist_date datetime not null comment "登録日",
update_date datetime not null comment "更新日"
)
default charset=utf8
comment="会員情報テーブル"
;
insert into user_info values
(1,"guest","guest","インターノウス","ゲストユーザー","いんたーのうす","げすとゆーざー",0,"guest@gmail.com",0,0,now(),now());

create table product_info(
id int primary key not null auto_increment comment "ID",
product_id int unique not null comment "商品ID",
product_name varchar(100) unique not null comment "商品名",
product_name_kana varchar(100) not null comment "商品名かな",
product_description varchar(255) not null comment "商品詳細",
category_id int not null not null comment "カテゴリID",
price int comment "価格",
image_file_path varchar(100) comment "画像ファイルパス",
image_file_name varchar(50) comment "画像ファイル名",
release_date datetime not null comment "発売年月",
release_company varchar(50) comment "発売会社",
status tinyint not null default 0 comment "ステータス",
regist_date datetime not null comment "登録日",
update_date datetime comment "更新日",
foreign key(category_id) references m_category(category_id)
)
default charset=utf8
comment="商品情報テーブル"
;
insert into product_info values
( 1, 1,"本１","ほん１","本１の商品詳細",2,100,"./images","sample.jpg",now(),"発売会社",0,now(),now()),
( 2, 2,"本２","ほん２","本２の商品詳細",2,200,"./images","sample.jpg",now(),"発売会社",0,now(),now()),
( 3, 3,"本３","ほん３","本３の商品詳細",2,300,"./images","sample.jpg",now(),"発売会社",0,now(),now()),
( 4, 4,"本４","ほん４","本４の商品詳細",2,100,"./images","sample.jpg",now(),"発売会社",0,now(),now()),
( 5, 5,"本５","ほん５","本５の商品詳細",2,200,"./images","sample.jpg",now(),"発売会社",0,now(),now()),
( 6, 6,"本６","ほん６","本６の商品詳細",2,300,"./images","sample.jpg",now(),"発売会社",0,now(),now()),
( 7, 7,"本７","ほん７","本７の商品詳細",2,100,"./images","sample.jpg",now(),"発売会社",0,now(),now()),
( 8, 8,"本８","ほん８","本８の商品詳細",2,200,"./images","sample.jpg",now(),"発売会社",0,now(),now()),
( 9, 9,"本９","ほん９","本９の商品詳細",2,300,"./images","sample.jpg",now(),"発売会社",0,now(),now()),
(10,10,"家電・パソコン１","かでん・ぱそこん１","家電・パソコン１の商品詳細",3,100,"./images","sample.jpg",now(),"発売会社",0,now(),now()),
(11,11,"家電・パソコン２","かでん・ぱそこん２","家電・パソコン２の商品詳細",3,200,"./images","sample.jpg",now(),"発売会社",0,now(),now()),
(12,12,"家電・パソコン３","かでん・ぱそこん３","家電・パソコン３の商品詳細",3,300,"./images","sample.jpg",now(),"発売会社",0,now(),now()),
(13,13,"家電・パソコン４","かでん・ぱそこん４","家電・パソコン４の商品詳細",3,100,"./images","sample.jpg",now(),"発売会社",0,now(),now()),
(14,14,"家電・パソコン５","かでん・ぱそこん５","家電・パソコン５の商品詳細",3,200,"./images","sample.jpg",now(),"発売会社",0,now(),now()),
(15,15,"家電・パソコン６","かでん・ぱそこん６","家電・パソコン６の商品詳細",3,300,"./images","sample.jpg",now(),"発売会社",0,now(),now()),
(16,16,"家電・パソコン７","かでん・ぱそこん７","家電・パソコン７の商品詳細",3,100,"./images","sample.jpg",now(),"発売会社",0,now(),now()),
(17,17,"家電・パソコン８","かでん・ぱそこん８","家電・パソコン８の商品詳細",3,200,"./images","sample.jpg",now(),"発売会社",0,now(),now()),
(18,18,"家電・パソコン９","かでん・ぱそこん９","家電・パソコン９の商品詳細",3,300,"./images","sample.jpg",now(),"発売会社",0,now(),now()),
(19,19,"おもちゃ・ゲーム１","おもちゃ・げーむ１","おもちゃ・ゲーム１の商品詳細",4,100,"./images","sample.jpg",now(),"発売会社",0,now(),now()),
(20,20,"おもちゃ・ゲーム２","おもちゃ・げーむ２","おもちゃ・ゲーム２の商品詳細",4,200,"./images","sample.jpg",now(),"発売会社",0,now(),now()),
(21,21,"おもちゃ・ゲーム３","おもちゃ・げーむ３","おもちゃ・ゲーム３の商品詳細",4,300,"./images","sample.jpg",now(),"発売会社",0,now(),now()),
(22,22,"おもちゃ・ゲーム４","おもちゃ・げーむ４","おもちゃ・ゲーム４の商品詳細",4,100,"./images","sample.jpg",now(),"発売会社",0,now(),now()),
(23,23,"おもちゃ・ゲーム５","おもちゃ・げーむ５","おもちゃ・ゲーム５の商品詳細",4,200,"./images","sample.jpg",now(),"発売会社",0,now(),now()),
(24,24,"おもちゃ・ゲーム６","おもちゃ・げーむ６","おもちゃ・ゲーム６の商品詳細",4,300,"./images","sample.jpg",now(),"発売会社",0,now(),now()),
(25,25,"おもちゃ・ゲーム７","おもちゃ・げーむ７","おもちゃ・ゲーム７の商品詳細",4,100,"./images","sample.jpg",now(),"発売会社",0,now(),now()),
(26,26,"おもちゃ・ゲーム８","おもちゃ・げーむ８","おもちゃ・ゲーム８の商品詳細",4,200,"./images","sample.jpg",now(),"発売会社",0,now(),now()),
(27,27,"おもちゃ・ゲーム９","おもちゃ・げーむ９","おもちゃ・ゲーム９の商品詳細",4,300,"./images","sample.jpg",now(),"発売会社",0,now(),now());

create table cart_info(
id int primary key not null auto_increment comment "ID",
user_id varchar(16) not null comment "ユーザーID",
temp_user_id varchar(16) comment "仮ユーザーID",
product_id int not null comment "商品ID",
product_count int not null comment "個数",
price int not null comment "金額",
regist_date datetime not null comment "登録日",
update_date datetime comment "更新日"
)
default charset=utf8
comment="カート情報テーブル"
;

create table purchase_history_info(
id int primary key not null auto_increment comment "ID",
user_id varchar(16) not null comment "ユーザーID",
product_id int not null comment "商品ID",
product_count int not null comment "個数",
price int not null comment "金額",
destination_id int not null comment "宛先情報ID",
regist_date datetime not null comment "登録日",
update_date datetime not null comment "更新日",
foreign key(user_id) references user_info(user_id),
foreign key(product_id) references product_info(product_id)
)
default charset=utf8
comment="購入履歴情報テーブル"
;

create table destination_info(
id int primary key not null auto_increment comment "ID",
user_id varchar(16) not null comment "ユーザーID",
family_name varchar(32) not null comment "姓",
first_name varchar(32) not null comment "名",
family_name_kana varchar(32) not null comment "姓かな",
first_name_kana varchar(32) not null comment "名かな",
email varchar(32) not null comment "メールアドレス",
tel_number varchar(13) not null comment "電話番号",
user_address varchar(50) not null comment "住所",
regist_date datetime not null comment "登録日",
update_date datetime not null comment "更新日"
)
default charset=utf8
comment="宛先情報テーブル"
;
insert into destination_info values
(1,"guest","インターノウス","テストユーざー","いんたーのうす","てすとゆーざー","guest@internous.co.jp","080-1234-5678","東京都千代田区三番町１ー１　ＫＹ三番町ビル１Ｆ",now(),"0000-00-00 00:00:00");

create table m_category(
id int primary key not null comment "ID",
category_id int not null unique comment "カテゴリID",
category_name varchar(20) not null unique comment "カテゴリ名",
category_description varchar(100) comment "カテゴリ詳細",
insert_date datetime not null comment "登録日",
update_date datetime comment "更新日"
)
default charset=utf8
comment="カテゴリマスタテーブル"
;
insert into m_category values
(1,1,"全てのカテゴリー","本、家電・パソコン、おもちゃ・ゲーム全てのカテゴリーが対象となります",now(), null),
(2,2,"本","本に関するカテゴリーが対象となります",now(),null),
(3,3,"家電・パソコン","家電・パソコンに関するカテゴリーが対象となります",now(),null),
(4,4,"おもちゃ・ゲーム","おもちゃ・ゲームに関するカテゴリーが対象となります",now(),null);