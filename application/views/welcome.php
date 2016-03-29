<?php
defined('BASEPATH') OR exit('No direct script access allowed');
?><!DOCTYPE html>
<html>
	<head>
		<meta HTTP-EQUIV="Content-Type" CONTENT="text/html; charset=UTF-8"/>
		<title>{title}</title>
	</head>
	<body>
		<div id="content">
			<div class="container">
				<div class="bookingsearch">
					<h1>Search for courses!</h1>
					<form name="search" action='welcome/search' id="dropdownsearch">
						<select name="dropdownDays">
							{chooseDay}
							<option value="{key}">{value}</option>
							{/chooseDay}
						</select>
						<select name="dropdownTimeslots">
							{chooseTimeslot}
							<option value="{key}">{value}</option>
							{/chooseTimeslot}
						</select>
						<input type='submit' value='Submit'>
					</form>
					<div id="indexedList">
						<h1>Bookings by Day</h1>
						<table>
							<thead>
								<tr>
									<th>Course</th>
									<th>Day</th>
									<th>Time (start to end)</th>
									<th>Instructor</th>
									<th>Room</th>
								</tr>
							</thead>
							{days}
						</table>
						<h1>Bookings by Timeslot</h1>
						<table>
							<thead>
								<tr>
									<th>Course</th>
									<th>Day</th>
									<th>Time (start to end)</th>
									<th>Instructor</th>
									<th>Room</th>
								</tr>
							</thead>
							{timeslots}
						</table>
						<h1>Bookings by Course</h1>
						<table>
							<thead>
								<tr>
									<th>Course</th>
									<th>Day</th>
									<th>Time (start to end)</th>
									<th>Instructor</th>
									<th>Room</th>
								</tr>
							</thead>
							{courses}
						</table>
					</div>
					<div id="bookingResult">
						<h1>Results:</h1>
						{searchResult}
					</div>
				</div>
			</div>
		</div>
	</body>
</html>