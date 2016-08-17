#
# Paul Burgwardt
#

alot = "http://4.bp.blogspot.com/_D_Z-D2tzi14/S8TRIo4br3I/AAAAAAAACv4/Zh7_GcMlRKo/s1600/ALOT.png"

module.exports = (robot) ->
	robot.hear /(^|\W)alot(\W|$)/i, (msg) ->
		msg.send alot