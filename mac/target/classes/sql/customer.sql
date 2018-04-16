select * from address;
select * from customer;
select * from test00;

INSERT INTO customer
VALUES('jyw','5252','donggle','jyw4891@naver','0114449999','1111',now());

select * from customerGrade;
select * from comment;
show tables;
select * from member;
select * from tab;
select * from test6;

create table address(
	custom_id varchar(20) primary key, 	
	addr varchar(20),
	detail_addr varchar(100),
	zip_code INT
);
<!-- auto_increment -->

create table customer(
	custom_id varchar(20) primary key,  
	custom_pass varchar(20), 
	name varchar(20),
	email varchar(20),
	phone_num varchar(20),
	profile varchar(20),            
	join_date DATETIME
);
 
alter table customer MODIFY custom_seq INT NOT NULL AUTO_INCREMEMNT; 
ALTER TABLE CUSTOMER ADD COLUMN custom_seq INT(9) NOT NULL AUTO_INCREMENT;

create table customerGrade(
	grade_code varchar(20) primary key,
	grade_name varchar(20),
	accum_money INT,
	custom_id varchar(20),
	foreign key(custom_id) references customer(custom_id)
	on update cascade
);


create table comment(
	comment_seq varchar(20) primary key,
	title varchar(100),
	contents varchar(1500),
	helpful INT,
	write_date DATETIME,
	branch varchar(20),
	custom_id varchar(20),
	foreign key(custom_id) references customer(custom_id),
	item_seq varchar(20),
	foreign key(item_seq) references item(item_seq) 
);
 
create sequence customSeq start with 1; 
create sequence commentSeq start with 1; 
create sequence itemSeq start with 1; 

select addrSeq.nextval from dual;   
select customSeq.nextval from dual;
select commentSeq.nextval from dual;
select itemSeq.nextval from dual;

drop table address;
drop table customer;
drop table customerGrade;
drop table comment;
select * from test6;

insert into address
values('111','서울시','신촌로123','21382');



insert into customer(custom_id, custom_seq, custom_pass, name, email, phone_num, profile, join_date, addr_seq) 
values('jyw','1','5252','김영철','jyw4891@naver.com','01088367371'
, http://delivery.burgerking.co.kr/resources/images/common/callCenter.png , sysdate, '111');


insert into board values(bbsSeq.nextval, 'n', 'n', sysdate, '2', '2', 'jyw');
insert into member values('kim','1','김',sysdate);
