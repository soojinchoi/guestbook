<%@page import="com.bit2015.guestbook.vo.GuestbookVo"%>
<%@page import="com.bit2015.guestbook.dao.GuestbookDao"%>
<%
   request.setCharacterEncoding("UTF-8");
   String number = request.getParameter("no");
   String password = request.getParameter("password");

   GuestbookDao dao = new GuestbookDao();
   
   dao.delete(number, password);

   response.sendRedirect("/guestbook/index.jsp");
%>