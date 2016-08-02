###
#
# Celebrate the great and wonderful Chris Egeberg
# 
# Kate
# August, 2016
#
###

module.exports = (robot) ->
	robot.hear /((C|c)hris|(E|e)geberg)/i, (res) ->
	  res.send "Chris Egeberg (praise be unto him)"
