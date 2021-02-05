
select lower(ename),sal from emp;

update emp set ename=lower(ename);

select ename from emp where length(ename)=5;

select SUBSTR('hello',2,4) FROM DUAL;

SELECT SUBSTR('hello welcome',-5,4) FROM DUAL;