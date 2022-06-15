create table festival_list(
	m_no number(5) primary key,
	codename varchar2 (500 char) not null,
	guname varchar2 (500 char) not null,
	title varchar2 (500 char) not null,
	fdate varchar2 (500 char) not null,
	place varchar2 (500 char) not null,
	program varchar2 (600 char),
	orglink varchar2 (500 char),
	mainimg varchar2 (500 char) not null,
	usetarget varchar2 (500 char) not null,
	usefee varchar2 (500 char)
	
);

create sequence festival_list_seq;

drop sequence festival_list_seq;

select * from festival_list;

drop table festival_list CASCADE CONSTRAINT PURGE;