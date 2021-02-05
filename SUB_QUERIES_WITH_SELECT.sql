select ename,job from emp where job=(select job from emp where ename='jones');

select e.ename,d.dname from emp e join dept d on e.deptno=d.deptno where d.loc=all(select d1.loc from dept d1 join emp e1 on e1.deptno=d1.deptno where d1.deptno=all(select deptno from emp where ename='jones'));

select ename from emp where sal=(select min(sal) from emp);

select ename from emp where sal<>(select min(sal) from emp);

select ename from emp where job=any(select job from emp where deptno=(select deptno from dept where dname='SALES'));

select ename from emp where deptno = (select deptno from dept where deptno = any(select deptno from emp where job = 'ANALYST'));

(select ename, job, sal, (sal * 1.10) as rise_sal FROM emp where job = 'CLERK') UNION (select ename, job, sal, (sal * 1.07) as rise_sal from emp WHERE job!='CLERK');

select ename,sal, nvl(comm,0) from emp;

select ename,sal+nvl(comm,0) "total_income" from emp;
