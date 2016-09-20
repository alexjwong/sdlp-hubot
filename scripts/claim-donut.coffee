###
#
# A nice tool for facilitating donut claims on the greatest
# day of the week......Donut Friday.
# 
# Kate Wasynczuk, Avery McIntyre
# September, 2016
#
###

module.exports = (robot) ->
	robot.hear /gimmie a donut/i, (res) ->
		res.send "#{res.message.user.name}"
