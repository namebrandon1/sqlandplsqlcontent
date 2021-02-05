select e.ename,d.dname from emp e join dept d on e.deptno=d.deptno;	

select d.dname,e.ename from emp e join dept d on d.deptno=e.deptno order by d.dname;

select d.dname "Department Name",e.ename "Manager"  from emp e join dept d on d.deptno=e.deptno where job='MANAGER';

select e.ename,m.ename from emp e left join emp m on e.mgr=m.empno where m.ename is not null;

select e.ename,m.ename from emp e left join emp m on e.mgr=m.empno;

select b.empno,b.ename,count(e.ename) as noofempunder from emp e, emp b where e.mgr = b.empno group by b.ename,b.empno ;

select b.empno,b.ename,count(e.ename) as noofempunder from emp e, emp b where e.mgr = b.empno group by b.ename,b.empno order by count(e.ename) desc;