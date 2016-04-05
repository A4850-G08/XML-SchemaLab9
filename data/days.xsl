<?xml version="1.0" encoding="UTF-8"?>

<!--
	Document   : days.xsl
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
				<h2>Days-centric data</h2>
				<table border="1">
					<xsl:call-template name="headings"/>
					<xsl:apply-templates select="/timetable/days/day"/>
				</table>
			</body>
		</html>
	</xsl:template>
	
	<xsl:template name="headings">
			<tr>
				<th>Days</th>
				<th>08:30</th>
				<th>09:30</th>
				<th>10:30</th>
				<th>11:30</th>
				<th>12:30</th>
				<th>13:30</th>
				<th>14:30</th>
				<th>15:30</th>
				<th>16:30</th>
			</tr>
	</xsl:template>
	
	<!-- handle a day of the week -->
	<xsl:template match="day">
		<tr>
			<td>
				<xsl:value-of select="./@weekday"/>
			</td>
			<td>
			<xsl:for-each select="booking">
				<xsl:if test="timeslot/@start='08:30'">
						<xsl:value-of select="./courseCode"/><br/>
						<xsl:value-of select="./courseType"/><br/>
						<xsl:value-of select="./room"/><br/>
						<xsl:value-of select="./instructor"/><br/>
				</xsl:if>
			</xsl:for-each>
			</td>
			<td>
			<xsl:for-each select="booking">
				<xsl:if test="timeslot/@start='09:30'">
					<xsl:value-of select="./courseCode"/><br/>
					<xsl:value-of select="./courseType"/><br/>
					<xsl:value-of select="./room"/><br/>
					<xsl:value-of select="./instructor"/><br/>
				</xsl:if>
			</xsl:for-each>
			</td>
			<td>
			<xsl:for-each select="booking">
				<xsl:if test="timeslot/@start='10:30'">
					<xsl:value-of select="./courseCode"/><br/>
					<xsl:value-of select="./courseType"/><br/>
					<xsl:value-of select="./room"/><br/>
					<xsl:value-of select="./instructor"/><br/>
				</xsl:if>
			</xsl:for-each>
			</td>
			<td>
			<xsl:for-each select="booking">
				<xsl:if test="timeslot/@start='11:30'">
					<xsl:value-of select="./courseCode"/><br/>
					<xsl:value-of select="./courseType"/><br/>
					<xsl:value-of select="./room"/><br/>
					<xsl:value-of select="./instructor"/><br/>
				</xsl:if>
			</xsl:for-each>
			</td>
			<td>
			<xsl:for-each select="booking">
				<xsl:if test="timeslot/@start='12:30'">
					<xsl:value-of select="./courseCode"/><br/>
					<xsl:value-of select="./courseType"/><br/>
					<xsl:value-of select="./room"/><br/>
					<xsl:value-of select="./instructor"/><br/>
				</xsl:if>
			</xsl:for-each>
			</td>
			<td>
			<xsl:for-each select="booking">
				<xsl:if test="timeslot/@start='13:30'">
					<xsl:value-of select="./courseCode"/><br/>
					<xsl:value-of select="./courseType"/><br/>
					<xsl:value-of select="./room"/><br/>
					<xsl:value-of select="./instructor"/><br/>
				</xsl:if>
			</xsl:for-each>
			</td>
			<td>
			<xsl:for-each select="booking">
				<xsl:if test="timeslot/@start='14:30'">
					<xsl:value-of select="./courseCode"/><br/>
					<xsl:value-of select="./courseType"/><br/>
					<xsl:value-of select="./room"/><br/>
					<xsl:value-of select="./instructor"/><br/>
				</xsl:if>
			</xsl:for-each>
			</td>
			<td>
			<xsl:for-each select="booking">
				<xsl:if test="timeslot/@start='15:30'">
					<xsl:value-of select="./courseCode"/><br/>
					<xsl:value-of select="./courseType"/><br/>
					<xsl:value-of select="./room"/><br/>
					<xsl:value-of select="./instructor"/><br/>
				</xsl:if>
			</xsl:for-each>
			</td>
			<td>
			<xsl:for-each select="booking">
				<xsl:if test="timeslot/@start='16:30'">
					<xsl:value-of select="./courseCode"/><br/>
					<xsl:value-of select="./courseType"/><br/>
					<xsl:value-of select="./room"/><br/>
					<xsl:value-of select="./instructor"/><br/>
				</xsl:if>
			</xsl:for-each>
			</td>
		</tr>
	</xsl:template>
</xsl:stylesheet>