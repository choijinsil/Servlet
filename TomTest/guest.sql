
create sequence guest_seq;

drop sequence guest_seq;

create table guest(
	no number primary key
	, writer varchar2(20) not null
	, email varchar2(30)
	, tel varchar2(15)
	, pass varchar2(20) not null
	, contents varchar2(300) not null
	, wdate date
);

 --Date default sysdate
 
drop table guest;

insert into guest values(
	guest_seq.nextval
	,'siri'
	, 'jinsil@nate.com'
	, '010-8787-5536'
	, 'siri'
	, '안녕하세요. 저는 siri입니다.'
	, sysdate
);

select * from guest;




