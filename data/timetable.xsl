<?xml version="1.0" encoding="UTF-8"?>

<!--
	Document   : timetable.xsl
	Created on : March 31, 2016, 1:49 PM
	Author     : group 8
	Description:
		Purpose of transformation follows.
-->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
	<xsl:output method="html"/>
	<xsl:template match="/">
		<html>
			<head>
				<title>Timetable XSL</title>
			</head>
			<body>
				<xsl:call-template name="days"/>
				<xsl:call-template name="timeslots"/>
			</body>
		</html>
	</xsl:template>
	
	<xsl:template name="days">
		
	</xsl:template>
	
	<xsl:template name="timeslots">
		
	</xsl:template>

</xsl:stylesheet>
