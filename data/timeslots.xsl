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
				<table>
					<xsl:call-template name="headings"/>
					<xsl:apply-templates select="timetable/timeslots/timeslot"/>
				</table>
			</body>
		</html>
	</xsl:template> 
	
	<xsl:template name="headings">
		<thead>
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
				<xsl:if test="booking/day/@weekday='Monday'">
					<xsl:value-of select="booking/courseCode"/> 
					<br/>
					<xsl:value-of select="booking/courseType"/> 
					<br/>
					<xsl:value-of select="booking/room"/> 
					<br/>
					<xsl:value-of select="booking/instructor"/>
				</xsl:if>
			</td>
			<td>
				<xsl:if test="booking/day/@weekday='Tuesday'">
					<xsl:value-of select="booking/courseCode"/> 
					<br/>
					<xsl:value-of select="booking/courseType"/> 
					<br/>
					<xsl:value-of select="booking/room"/> 
					<br/>
					<xsl:value-of select="booking/instructor"/>
				</xsl:if>
			</td>
			<td>
				<xsl:if test="booking/day/@weekday='Wednesday'">
					<xsl:value-of select="booking/courseCode"/> 
					<br/>
					<xsl:value-of select="booking/courseType"/> 
					<br/>
					<xsl:value-of select="booking/room"/> 
					<br/>
					<xsl:value-of select="booking/instructor"/>
				</xsl:if>
			</td>
			<td>
				<xsl:if test="booking/day/@weekday='Thursday'">
					<xsl:value-of select="booking/courseCode"/> 
					<br/>
					<xsl:value-of select="booking/courseType"/> 
					<br/>
					<xsl:value-of select="booking/room"/> 
					<br/>
					<xsl:value-of select="booking/instructor"/>
				</xsl:if>
			</td>
			<td>
				<xsl:if test="booking/day/@weekday='Friday'">
					<xsl:value-of select="booking/courseCode"/> 
					<br/>
					<xsl:value-of select="booking/courseType"/> 
					<br/>
					<xsl:value-of select="booking/room"/> 
					<br/>
					<xsl:value-of select="booking/instructor"/>
				</xsl:if>
			</td>
		</tr>
	</xsl:template>
	
</xsl:stylesheet>