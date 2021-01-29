<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자유게시판</title>

<style>
#list {
  font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 100%;
}
#list td, #list th {
  border: 1px solid #ddd;
  padding: 8px;
  text-align:center;
}
#list tr:nth-child(even){background-color: #f2f2f2;}
#list tr:hover {background-color: #ddd;}
#list th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: center;
  background-color: #006bb3;
  color: white;
}
</style>

</head>
<body>
	
	<h1>자유게시판 </h1>
	
	<img src='../img/santa.png' height="50">관리자님 안녕하세요~!<a href = "../login/logout">logout</a>	
	<table id="list" width="90%">
	<tr>
		<th>ID</th>
		<th>Category</th>
		<th>Title</th>
		<th>Writer</th>
		<th>Content</th>
		<th>Regdate</th>
		<th>Edit</th>
		<th>Delete</th>
	</tr>
	
	<c:forEach items="${list}" var="u">
		<tr>
			<td>${u.seq}</td>
			<td>${u.category}</td>
			<td>${u.title}</td>
			<td>${u.writer}</td>
			<td>${u.content}</td>
			<td>${u.regdate}</td>
			<td><a href="editform/${u.seq}">Edit</a></td>
			<td><a href="deleteok/${u.seq}">Delete</a></td>
		</tr>
	</c:forEach>
	</table>
	
	<br/> <a href="add"> Add New Post</a>

</body>
</html>