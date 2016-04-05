<?xml version="1.0" encoding="UTF-8"?>

<!--
	Document   : timeslots.xsl
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
				<h2>Timeslots Centric Data</h2>
				<table border="1">
					<xsl:call-template name="headings"/>
					<xsl:apply-templates select="timetable/timeslots/timeslot"/>
				</table>
			</body>
		</html>
	</xsl:template> 
	
	<xsl:template name="headings">
		<thead style="background:blue; color:white;">
			<tr>
				<th>Start Time</th>
				<th>Monday</th>
				<th>Tuesday</th>
				<th>Wednesday</th>
				<th>Thursday</th>
				<th>Friday</th>
			</tr>
		</thead>
	</xsl:template>
	
	<xsl:template match="timeslot">
		<tr>
			<td>
				<xsl:value-of select="./@start"/>
			</td>
			<td>
				<xsl:for-each select="booking">
					<xsl:if test="day/@weekday='Monday'">
						<xsl:value-of select="./courseCode"/> 
						<br/>
						<xsl:value-of select="./courseType"/> 
						<br/>
						<xsl:value-of select="./room"/> 
						<br/>
						<xsl:value-of select="./instructor"/>
						<br/>
					</xsl:if>
				</xsl:for-each>
			</td>
			<td>
				<xsl:for-each select="booking">
					<xsl:if test="day/@weekday='Tuesday'">
						<xsl:value-of select="./courseCode"/> 
						<br/>
						<xsl:value-of select="./courseType"/> 
						<br/>
						<xsl:value-of select="./room"/> 
						<br/>
						<xsl:value-of select="./instructor"/>
						<br/>
					</xsl:if>
				</xsl:for-each>
			</td>
			<td>
				<xsl:for-each select="booking">
					<xsl:if test="day/@weekday='Wednesday'">
						<xsl:value-of select="./courseCode"/> 
						<br/>
						<xsl:value-of select="./courseType"/> 
						<br/>
						<xsl:value-of select="./room"/> 
						<br/>
						<xsl:value-of select="./instructor"/>
						<br/>
					</xsl:if>
				</xsl:for-each>
			</td>
			<td>
				<xsl:for-each select="booking">
					<xsl:if test="day/@weekday='Thursday'">
						<xsl:value-of select="./courseCode"/> 
						<br/>
						<xsl:value-of select="./courseType"/> 
						<br/>
						<xsl:value-of select="./room"/> 
						<br/>
						<xsl:value-of select="./instructor"/>
						<br/>
					</xsl:if>
				</xsl:for-each>
			</td>
			<td>
				<xsl:for-each select="booking">
					<xsl:if test="day/@weekday='Friday'">
						<xsl:value-of select="./courseCode"/> 
						<br/>
						<xsl:value-of select="./courseType"/> 
						<br/>
						<xsl:value-of select="./room"/> 
						<br/>
						<xsl:value-of select="./instructor"/>
						<br/>
					</xsl:if>
				</xsl:for-each>
			</td>
		</tr>
	</xsl:template>
</xsl:stylesheet>