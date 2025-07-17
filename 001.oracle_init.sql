
alter session set "_ORACLE_SCRIPT"=true;

create user jdeveloper identified by jdeveloper;

grant connect,resource , unlimited  tablespace to jdeveloper;



