

-- userinfo.sql

drop table userinfo;

create table userinfo(
  id      varchar2(20) constraint userinfo_pk primary key,
  pass    varchar2(20) not null,
  name    varchar2(30) not null,
  jumin   varchar2(14) not null, --'960302-1012345'
  birth   varchar2(10), --'1996-03-02'
  zip     number(5)    not null,
  addr    varchar2(300),
  email   varchar2(50)  not null,
  job     varchar2(30)  not null
);

select * from USERINFO;





