create table member_tbl(
	u_id varchar2(20),
	name varchar2(30) not null,
	birth number(10,0) not null,
	phone varchar2(30) not null,
	email varchar2(20) not null,
	id varchar2(20) not null unique,
	pw varchar2(20) not null,
	nickName varchar2(20) not null unique
)

select dbms_random.String('X',10) u_id from dual; -- 임시테이블에 랜덤 번호 생성 (u_id)

insert into member_tbl(name, birth, phone, email, id, pw, nickName) values ('테스트', '990101', '010-1234-1234', 'mbc@naver.com', 'test123', 'test123', 'tester');
insert into member_tbl(name, birth, phone, email, id, pw, nickName) values ('테스트1', '990102', '010-1234-5678', 'mbctest@naver.com', 'test222', 'test222', 'tester2');

select dbms_random.String('X',10)u_id from dual; 
insert into member_tbl(u_id, name, birth, phone, email, id, pw, nickName) values ('u_id','테스트3', '990103', '010-1234-9876', 'mbc3@naver.com', 'test333', 'test333', 'tester3');

select * from MEMBER_TBL;