
###
#
# Right?! right.
# 
# Kate Wasynczuk
# August, 2016
#
###

module.exports = (robot) ->
    robot.hear /(right)/i, (res) ->
        res.reply "Right? Right. \n
            :right:"
