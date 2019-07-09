

--counter.sql

-- 카운트 값 저장
create table cnt
(
   cnt number
);

insert into cnt values (0);

select * from cnt;
select * from addr;

create sequence cnt_seq;

-- 접속 ip 저장
create table addr
(
   addr varchar2(20)
);





