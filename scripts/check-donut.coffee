###
#
# A nice tool for finding out who gets donuts on Donut Friday.
# 
# Kate Wasynczuk, Avery McIntyre
# September, 2016
#
###

module.exports = (robot) ->
	robot.hear /donutsquad/i, (res) ->

		today = new Date
		dd = today.getDate()
		mm = today.getMonth()
		yyyy = today.getFullYear()
		dateString = "#{mm}_#{dd}_#{yyyy}"
		
		# grab the donutsReserved: int, and todaysWinners: arr[string] for today
		donutsReserved = robot.brain.get("donutsReserved_#{dateString}")
		todaysWinners = robot.brain.get("todaysWinners_#{dateString}")

		if donutsReserved is null
			donutsReserved = 0
			robot.brain.set("donutsReserved_#{dateString}",donutsReserved)

		if todaysWinners is null
			todaysWinners = []
			robot.brain.set("todaysWinners_#{dateString}",todaysWinners)
		
		res.send "Currently at #{donutsReserved}"
		res.send "#{todaysWinners}"
			

