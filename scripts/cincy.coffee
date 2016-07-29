###
#
# Sends dancing man gif every time somebody says Cincinatti or a reasonably spelled alternative.
# 
# Avery McIntyre
# July, 2016
#
###

module.exports = (robot) ->
	robot.hear /(cin+cin+at+i+)/i, (res) ->
	  res.send "DID YOU SAY CINCINATTI!?"
	  res.send "#http://giphy.com/gifs/TLqkzhMIZxAQg/html5"

