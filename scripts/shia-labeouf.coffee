#
# Paul Burgwardt
#

shiaDreams = "https://media.giphy.com/media/LBiUXRDr899bq/giphy.gif"
shiaDoIt = "https://media.giphy.com/media/Z0dvuZszc3r3i/giphy.gif"

module.exports = (robot) ->
	robot.hear /(^|\W)dreams?(\W|$)/i, (msg) ->
		msg.send shiaDreams
	robot.hear /(^|\W)do it(\W|$)/i, (msg) ->
		msg.send shiaDoIt