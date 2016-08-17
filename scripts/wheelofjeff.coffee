###
#
# Wheel of Jeff
#  
# Connor Justice
# August, 2016
#
###
jeff_img_list = [
"http://imgur.com/rCWGkQt",
"http://imgur.com/adj5Zxr",
"http://imgur.com/DdsPUsP",
"http://imgur.com/7fMSNIR",
"http://imgur.com/tDBbhtc",
"http://imgur.com/jbiWw5V",
"http://imgur.com/qnCAOhk",
"http://imgur.com/UamwEqT"
]

module.exports = (robot) ->
	robot.hear /(jeff)/i, (res) ->
	  res.send "WELCOME TO THE WHEEL OF JEFF!"
	  res.send res.random jeff_img_list