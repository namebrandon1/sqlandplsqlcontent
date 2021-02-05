select hiredate,ename,deptno from emp where job='CLERK';

select ename,sal from emp where sal>2000;

select ename from emp where ename like '%a%';

select ename from emp where length(ename)=5;

select ename,hiredate from emp where hiredate like '%81' or hiredate like '%82';

select ename "Name",hiredate "Start_Date" from emp;

select ename,hiredate from emp order by hiredate;

select ename,sal from emp order by sal desc;

select ename,deptno,comm from emp order by comm desc;

select deptno from emp where job='CLERK';
