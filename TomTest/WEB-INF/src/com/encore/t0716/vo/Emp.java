package com.encore.t0716.vo;


public class Emp {
//	select e.empno, e.ename, d.dname, s.grade
//    from emp e, dept d, salgrade s
//    where e.deptno=d.deptno and e.sal > s.losal and e.sal < s.hisal
	
	private int empno;
	private String ename;
	private String dname;
	private String grade;
	
	public Emp() {
	}

	public Emp(int empno, String ename, String dname, String grade) {
		super();
		this.empno = empno;
		this.ename = ename;
		this.dname = dname;
		this.grade = grade;
	}

	public int getEmpno() {
		return empno;
	}

	public void setEmpno(int empno) {
		this.empno = empno;
	}

	public String getEname() {
		return ename;
	}

	public void setEname(String ename) {
		this.ename = ename;
	}

	public String getDname() {
		return dname;
	}

	public void setDname(String dname) {
		this.dname = dname;
	}

	public String getGrade() {
		return grade;
	}

	public void setGrade(String grade) {
		this.grade = grade;
	}

	@Override
	public String toString() {
		return "Emp [empno=" + empno + ", ename=" + ename + ", dname=" + dname + ", grade=" + grade + "]";
	}

	
}
