-- create sequence

drop sequence seq_emaillist;

create sequence seq_emaillist
start with 1
increment by 1
maxvalue 9999999999;

-- insert
insert into emaillist
values( seq_emaillist.nextval, '안', '대혁', 'kickscar@gmail.com');

insert into emaillist
values( seq_emaillist.nextval, '둘', '리', 'dooly@gmail.com');

commit;

-- list
select no, first_name, last_name, email
  from emaillist;
  
