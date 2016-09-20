###
#
# A tanning development tool for one man and his forearms.
#  
# Avery McIntyre
# July, 2016
#
###

module.exports = (robot) ->
	robot.hear /(connor-forearm-status)/i, (res) ->
	  current_status = "pale"
	  res.send "the forearms are currently *#{current_status}*"
	  res.send "please refer any updates to 510-828-8940"

