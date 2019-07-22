
create sequence guest_seq;

drop sequence guest_seq;
drop table guest;
create table guest(
	no number primary key
	, writer varchar2(20) not null
	, email varchar2(30)
	, tel varchar2(15)
	, pass varchar2(20) not null
	, contents varchar2(300) not null
	, wdate date
);

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

insert into guest
select guest_seq.nextval,writer,email,tel,pass,contents,sysdate from guest;


      select no, writer, tel, wdate, contents
      from (select no, writer, tel, wdate, contents
            from guest
            order by no desc)
      where rownum between 1 and 10;






insert into guest values(guest_seq.nextval, 'siri1', 'jinsiri@naver.com','010-1234-1234','1111','안녕, 반가워~!',sysdate);
insert into guest values(guest_seq.nextval, 'siri2', 'jinsiri@naver.com','010-1234-1234','1111','안녕, 반가워~!',sysdate);
insert into guest values(guest_seq.nextval, 'siri3', 'jinsiri@naver.com','010-1234-1234','1111','안녕, 반가워~!',sysdate);
insert into guest values(guest_seq.nextval, 'siri4', 'jinsiri@naver.com','010-1234-1234','1111','안녕, 반가워~!',sysdate);
insert into guest values(guest_seq.nextval, 'siri5', 'jinsiri@naver.com','010-1234-1234','1111','안녕, 반가워~!',sysdate);
insert into guest values(guest_seq.nextval, 'siri6', 'jinsiri@naver.com','010-1234-1234','1111','안녕, 반가워~!',sysdate);
insert into guest values(guest_seq.nextval, 'siri7', 'jinsiri@naver.com','010-1234-1234','1111','안녕, 반가워~!',sysdate);
insert into guest values(guest_seq.nextval, 'siri8', 'jinsiri@naver.com','010-1234-1234','1111','안녕, 반가워~!',sysdate);
insert into guest values(guest_seq.nextval, 'siri9', 'jinsiri@naver.com','010-1234-1234','1111','안녕, 반가워~!',sysdate);
insert into guest values(guest_seq.nextval, 'siri10', 'jinsiri@naver.com','010-1234-1234','1111','안녕, 반가워~!',sysdate);
insert into guest values(guest_seq.nextval, 'siri11', 'jinsiri@naver.com','010-1234-1234','1111','안녕, 반가워~!',sysdate);
insert into guest values(guest_seq.nextval, 'siri12', 'jinsiri@naver.com','010-1234-1234','1111','안녕, 반가워~!',sysdate);
insert into guest values(guest_seq.nextval, 'siri13', 'jinsiri@naver.com','010-1234-1234','1111','안녕, 반가워~!',sysdate);
insert into guest values(guest_seq.nextval, 'siri14', 'jinsiri@naver.com','010-1234-1234','1111','안녕, 반가워~!',sysdate);
insert into guest values(guest_seq.nextval, 'siri15', 'jinsiri@naver.com','010-1234-1234','1111','안녕, 반가워~!',sysdate);
insert into guest values(guest_seq.nextval, 'siri16', 'jinsiri@naver.com','010-1234-1234','1111','안녕, 반가워~!',sysdate);
insert into guest values(guest_seq.nextval, 'siri17', 'jinsiri@naver.com','010-1234-1234','1111','안녕, 반가워~!',sysdate);
insert into guest values(guest_seq.nextval, 'siri18', 'jinsiri@naver.com','010-1234-1234','1111','안녕, 반가워~!',sysdate);
insert into guest values(guest_seq.nextval, 'siri19', 'jinsiri@naver.com','010-1234-1234','1111','안녕, 반가워~!',sysdate);
insert into guest values(guest_seq.nextval, 'siri20', 'jinsiri@naver.com','010-1234-1234','1111','안녕, 반가워~!',sysdate);
insert into guest values(guest_seq.nextval, 'siri21', 'jinsiri@naver.com','010-1234-1234','1111','안녕, 반가워~!',sysdate);
insert into guest values(guest_seq.nextval, 'siri22', 'jinsiri@naver.com','010-1234-1234','1111','안녕, 반가워~!',sysdate);
insert into guest values(guest_seq.nextval, 'siri23', 'jinsiri@naver.com','010-1234-1234','1111','안녕, 반가워~!',sysdate);
insert into guest values(guest_seq.nextval, 'siri24', 'jinsiri@naver.com','010-1234-1234','1111','안녕, 반가워~!',sysdate);
insert into guest values(guest_seq.nextval, 'siri25', 'jinsiri@naver.com','010-1234-1234','1111','안녕, 반가워~!',sysdate);


