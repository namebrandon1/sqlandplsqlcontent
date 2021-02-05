select max(sal),min(sal),avg(sal),sum(comm) from emp;

select deptno,sum(sal),sum(comm) from emp group by deptno;

select deptno,sum(sal),sum(comm) from emp group by deptno having count(comm)>1;

select deptno,count(deptno) from emp group by deptno;

select deptno,sum(sal) "sum_sal" from emp group by deptno having count(deptno)>=4;

select m.mgr,count(m.mgr) as noOfEmp,e.ename from emp e join emp m on e.empno=m.mgr group by m.mgr,e.ename;
