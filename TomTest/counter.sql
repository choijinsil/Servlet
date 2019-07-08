-- 카운트값
create table cnt
(
	cnt number
);

insert into cnt values(0);

select * from cnt;

create sequence cnt_seq;


select cnt_seq from sequence;

-- 접속  ip저장
create table addr
(
	addr varchar2(20)
);

select * from addr

drop table cnt;
drop sequence cnt_seq;
drop table addr;