<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8"/>
    <title>Test des expressions EL</title>
</head>
<body>
<p>
    <!-- Initialisation d'un bean de type Person avec une action standard, pour l'exemple : -->
    <jsp:useBean id="person" class="fr.kelerm.bean.Person"/>
    <!-- Initialisation de sa propriété 'prénom' : -->
    <jsp:setProperty name="person" property="prenom" value="Kelerm"/>
    <!-- Et affichage de sa valeur : -->
    <%--<jsp:getProperty name="person" property="prenom" />--%>
    ${ person.prenom }
</p>

<p>
    <!-- Comparaison d'égalité entre la propriété prenom et la chaîne "Krom" -->
    ${ person.prenom == "Krom" }

    <!-- Vérification si la propriété prenom est vide ou nulle -->
    ${ empty person.prenom }

    <!-- Condition ternaire qui affiche la propriété prénom si elle n'est ni vide ni nulle, et la chaîne "Veuillez préciser un prénom" sinon -->
    ${ !empty person.prenom ? person.prenom : "Veuillez préciser un prénom" }
</p>

<p>
    <!-- La scriptlet suivante affiche "null" si la propriété "prenom" n'a pas été initialisée,
et provoque une erreur à la compilation si l'objet "person" n'a pas été initialisé : -->
    <%= person.getPrenom() %>

    <!-- L'action suivante affiche "null" si la propriété "prenom" n'a pas été initialisée,
    et provoque une erreur à l'exécution si l'objet "person" n'a pas été initialisé : -->
    <jsp:getProperty name="person" property="prenom"/>

    <!-- L'expression EL suivante n'affiche rien si la propriété "prenom" n'a pas été initialisée,
    et n'affiche rien si l'objet "person" n'a pas été initialisé : -->
    ${ person.prenom }
</p>
</body>
</html>