<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8"/>
    <title>Test des expressions EL</title>
</head>
<body>
<p>
    <%
        /* Création d'une liste de légumes et insertion de quatre éléments */
        java.util.List<String> legumes = new java.util.ArrayList<String>();
        legumes.add("poireau");
        legumes.add("haricot");
        legumes.add("carotte");
        legumes.add("pomme de terre");
        request.setAttribute("legumes", legumes);
    %>

    <!-- Les quatre syntaxes suivantes retournent le deuxième élément de la liste de légumes  -->
    ${ legumes.get(0) }<br/>
    ${ legumes[1] }<br/>
    ${ legumes['2'] }<br/>
    ${ legumes["3"] }<br/>
</p>
<br/>
<p>
    <%
        /* Création d'un tableau */
        String[] animaux = {"chien", "chat", "souris", "cheval"};
        request.setAttribute("animaux", animaux);
    %>

    <!-- Les trois syntaxes suivantes retournent le troisième élément du tableau  -->
    ${ animaux[0] }<br/>
    ${ animaux['2'] }<br/>
    ${ animaux["3"] }<br/>
</p>
<br/>
<p>
    <%
        /* Création d'une Map */
        java.util.Map<String, Integer> desserts = new java.util.HashMap<String, Integer>();
        desserts.put("cookies", 8);
        desserts.put("glaces", 3);
        desserts.put("muffins", 6);
        desserts.put("tartes aux pommes", 2);

        request.setAttribute("desserts", desserts);
    %>

    <!-- Les quatre syntaxes suivantes retournent la valeur associée à la clé "cookies" de la Map de desserts  -->
    ${ desserts.glaces }<br/>
    ${ desserts.get("cookies") }<br/>
    ${ desserts['muffins'] }<br/>
    ${ desserts["tartes aux pommes"] }<br/>
    <br/>
    <%
        /* Création d'une chaîne nommée "element" et contenant le mot "cookies" */
        String element = "cookies";
        request.setAttribute("element", element);
    %>
    <!-- Il est également possible d'utiliser un objet au lieu d'initialiser la clé souhaitée directement dans l'expression -->
    ${ desserts[element] }<br/>
</p>
</body>
</html>