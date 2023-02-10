<html>

<head>
</head>

<body>
    <h1>
        Listado de libros
    </h1>
    <table border="1">
        <tr>
                <th>TITULO</th>
                <th>EDITORIAL</th>
                <th>PRECIO</th>
        </tr>
        {
        for $v in doc("actividad27.xml")/bib/libro
        return <tr>
            <td text-align="left">{data($v/titulo)}</td>
            <td text-align="left">{data($v/editorial)}</td>
            <td text-align="right">{data($v/precio)}</td>
        </tr>
        }
    </table>
</body>

</html>