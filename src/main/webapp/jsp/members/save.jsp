<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="hello.servlet.domain.member.Member" %>
<%@ page import="hello.servlet.domain.member.MemberRepository" %>
    <%
        // request, response는 그냥 쓸 수 있음
        MemberRepository memberRepository = MemberRepository.getInstance();
        Member member = new Member();
        member.setUsername(request.getParameter("username"));
        member.setAge(Integer.parseInt(request.getParameter("age")));
        memberRepository.save(member);
    %>
<html>
<head>
    <title>Title</title>
</head>
<body>
성공
<ul>
    <li>id=<%=member.getId()%></li>
    <li>username=<%=member.getUsername()%></li>
    <li>age=<%=member.getAge()%></li>
</ul>
<a href="/index.html">메인</a>
</body>
</html>
