<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
  
        <h1>Edit Content</h1>  
       <form:form method="POST" action="../editok" modelAttribute="u">    
        <table >    
	        <tr>  
	        <td></td>    
	         <td><form:hidden path="seq" /></td>  
	         </tr>   
	         <tr>    
	          <td>Category : </td>   
	          <td><form:input path="category"  /></td>  
	         </tr>    
	         <tr>    
	          <td>Title :</td>    
	          <td><form:input path="title" /></td>  
	         </tr>   
	         <tr>    
	          <td>Writer :</td>    
	          <td><form:input path="writer" /></td>  
	         </tr>  
	         <tr>    
	          <td>Content :</td>    
	          <td><form:input path="content" /></td>  
	         </tr>  
	           
	         <tr>    
	          <td> </td>    
	          <td><input type="submit" value="Edit Save" /></td>    
	         </tr>    
        </table>    
       </form:form>    