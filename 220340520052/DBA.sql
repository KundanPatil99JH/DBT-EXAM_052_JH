DROP TABLE DEPT;
/*Q1 1*/
create table dept(deptno int(2) ,dname varchar(15),loc varchar(10));
select * from dept;

insert into dept values(10,'ACCOUNTNG','NEW YORK'),
						(20,'RESEARCH','DALLAS'),
                        (30,'SALES','CHICAGO'),
                        (40,'OPERATIONS','BOSTON');
select * fom dept;
/*2*/
create table emp(empno int(4),
                ename varchar(10),
                job varchar(9),
				hiredate date,
                sal float(7,2),
                comm float(7,2),
                deptno int(2));
select * from emp;
insert into emp values(7839,'KING','MANAGER','1991-11-17','5000',NULL,10),
					(7698,'BLACK','CLERK','1981-05-01','2850',NULL,30),
                    (7782,'CLARK','MANAGER','1981-06-09','2450',NULL,10),
                    (7566,'JONES','CLERK','1981-04-02','2975',NULL,20),
                    (7654,'MARTIN','SALEMAN','1981-09-28','1250','1400',30),
                    (7499,'ALLEN','SALEMAN','1981-02-20','1600','300',30);
SELECT * FROM EMP;
/*3*/
select * from emp where sal between 2500 and 500;
/*4*/
select * from emp order by ename desc;
/*5*/
select lower(job) from emp;
/*6*/
select ename,LENGTH(ename) from emp;
/*7*/
select deptno,count(*) from emp group by deptno order by deptno;
/*8*/
select dname,ename from emp,dept where dept.deptno=emp.deptno;
/*9*/
select ename,instr(ename,'AR') from emp;
/*10*/
select ename,sal*0.20 as 'HRA' from emp;

/*section 2*/
/*Q1*/
delimiter $$
create procedure PROC1(stringa varchar(10),stringb varchar(10))
begin
	declare x int default 0;
    set x=instr(stringb,stringa);
    if  x!=0 then
		insert into tempp values(x,'stringa exists inside stringb');
	else
		insert into tempp values(x,'stringa does not inside stringb');
	end if;
end;$$
delimiter ;
call PROC1('DAC','CDAC');
select * from tempp;
drop table tempp;
create table tempp(fir varchar(10),sec varchar(10));
/*Q2*/
delimiter $$
create function FUC1(side1 int,side2 int side3)
return varchar(20) charreset utf8
begin
	declare result varchar(20);
    if(side1+side2>side3)&&(side2+side3>side1)&&(side3+side1>side2) then
    set result="A tringle";
    else
		set result="not A tringle";
	end if;
return(result);
end;$$
delimiter ;




                    

	