<?xml version="1.0" encoding="iso-8859-15"?>

<!-- Transformaci�n XSL y Definici�n del espacio de nombres -->
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

<!-- Define los elementos cuyos espacios en blanco deben ser preservados -->
<xsl:preserve-space elements="*"/>

<!-- Tipo de Formato decimal europeo -->
<xsl:decimal-format name="european" decimal-separator=',' grouping-separator='.'/>
<xsl:template match="/">

<html>
<head>
	<title> 
		<xsl:value-of select="equipo/nombre"/> 
	</title>
</head>
<body>
	<h2> <xsl:value-of select="equipo/nombre"/> </h2>
	

	<p><u> Jugadores </u>:</p>
	
	<xsl:for-each select="equipo/jugador">
        
        <xsl:if test="puesto!=&quot;portero&quot;">
            <xsl:if test="puesto!=&quot;delantero&quot;">
                <ul>
                <li>
                    <xsl:value-of select="nombre"/>
                    <xsl:text> </xsl:text>
                    <xsl:value-of select="apellidos"/>	
                    <xsl:text> </xsl:text>
                    <xsl:value-of select="dorsal"/>
                </li>
                </ul>
            </xsl:if>
        </xsl:if>
    </xsl:for-each>
	

</body>
</html>
</xsl:template>
</xsl:stylesheet>
