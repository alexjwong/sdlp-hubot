###
#
# Sends dancing man gif every time somebody says Cincinatti or a reasonably spelled alternative.
# 
# Avery McIntyre
# July, 2016
#
###

module.exports = (robot) ->
	robot.hear /(cin+cin+at+i+|ohio)/i, (res) ->
	  caught_text = res.match[1]
	  caught_text = caught_text.toUpperCase()
	  res.send "DID YOU SAY #{caught_text}!?"
	  res.send "#http://giphy.com/gifs/TLqkzhMIZxAQg/html5"

