<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/html">
    <head lang="en">
        <meta charset="UTF-8">
        <title><%=pageTitle || pageName%></title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="x-ua-compatible" content="IE=10">
        <% if(pageMetaInfo && pageMetaInfo.length > 0){ _.forEach(pageMetaInfo, function(item, index) { %>
        <meta <%_.forOwn(item, function(value, prop){%> <%=prop%>="<%=value%>" <%});%>/>
        <% });} %>
        <link rel="stylesheet" href="styles.css"/>
        <script src="https://code.jquery.com/jquery-2.1.4.min.js"></script>
    </head>
    <body>
        <% if(bodyScript){ %><%=bodyScript%><% } %>
        <div id="content">
        <%=htmlContent%>
        </div>
        <script src="commons.js"></script>
        <script src="<%=pageName%>.bundle.js"></script>
    </body>
</html>