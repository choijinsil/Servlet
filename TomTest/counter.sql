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

select emp.empno, emp.ename, emp.hiredate, emp.sal, dept.dname from emp inner join dept on emp.deptno=dept.deptno;
select * from emp;


create sequence guest_seq;
create table guest(
	
	writer varchar2(10)
	, email varchar2(20)
	, tel
	, pass
	, contents
	, wdate
);




