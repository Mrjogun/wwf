<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR" %>
<%@ page import = "java.sql.*" %>

<%

	Connection conn = null;			// null�� �ʱ�ȭ �Ѵ�.
	request.setCharacterEncoding("utf-8");

	try{
		String url = "jdbc:mysql://localhost:3306/mydb?characterEncoding=utf8";			// ����Ϸ��� �����ͺ��̽����� ������ URL ���
		String id = "root";			// ����� ����
		String pw = "1q2w3e4r!";			// ����� ������ �н�����

		Class.forName("com.mysql.jdbc.Driver");			// �����ͺ��̽��� �����ϱ� ���� DriverManager�� ����Ѵ�.
		conn=DriverManager.getConnection(url,id,pw);			// DriverManager ��ü�κ��� Connection ��ü�� ���´�.
		out.println("����� ����Ǿ����ϴ�.");			// Ŀ�ؼ��� ����� ����Ǹ� ����ȴ�.

	}catch(Exception e){			// ���ܰ� �߻��ϸ� ���� ��Ȳ�� ó���Ѵ�.
		e.printStackTrace();
	}
%>