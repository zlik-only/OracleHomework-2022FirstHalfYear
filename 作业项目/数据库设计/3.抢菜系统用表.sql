 --抢菜表
CREATE TABLE vegetable(
vegetable_id number primary key,--id
vegetable_kinds varchar(255),--蔬菜种类
vegetable_number number, --剩余量
vegetable_place varchar(255) --放置地点
);