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

    # establish the current date, build date string
    today = new Date
    dd = today.getDate()
    mm = today.getMonth()
    yyyy = today.getFullYear()
    dateString = "#{mm}_#{dd}_#{yyyy}"

    # grab the donutsReserved: int for today
    donutsReserved = robot.brain.get("donutsReserved_#{dateString}")

    # reserve a donut for the requester if less than 6 are reserved
    # and they have not already reserved one today
    if donutsReserved is null
      donutsReserved = 0
      todaysWinners = []
      robot.brain.set("todaysWinners_#{dateString}", todaysWinners)
    if donutsReserved < 6
      todaysWinners = robot.brain.get("todaysWinners_#{dateString}")
      # check to see if the current requester is already a winner
      requester = "#{res.message.user.name}"
      for name in todaysWinners
        if name == requester
          res.send "Did you seriously try to get two donuts?"
          res.send "#https://giphy.com/gifs/C6SvGqBYCWaHu/html5"
          return
      # give requester a donut
      todaysWinners[ donutsReserved ] = requester
      donutsReserved = donutsReserved + 1
      # update persistent variables
      robot.brain.set("donutsReserved_#{dateString}", donutsReserved)
      robot.brain.set("todaysWinners_#{dateString}", todaysWinners)
      res.send("OHH I GOTCHU #{res.message.user.name}")
      res.send("#https://giphy.com/gifs/w6MqZsuQurdYY/html5")
    else
      res.send "Sorry 4 u. None left."
      res.send "#https://giphy.com/gifs/1BXa2alBjrCXC/html5"
