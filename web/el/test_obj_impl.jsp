<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8"/>
    <title>Test des objets implicites EL</title>
</head>
<body>
<p>
    <%
        String paramLangue = request.getParameter("langue");
        out.println("Langue : " + paramLangue);
    %>
    <br/>
    <%
        String paramArticle = request.getParameter("article");
        out.println("Article : " + paramArticle);
    %>
</p>
<br/>
<p>
    Langue : ${ paramValues.langue[1] }
    <br/>
    Article : ${ param.article }
</p>
</body>
</html>