# Description:
# Giving the querying user the current time in the timezone specified
# The normal usage is just to write "hubot current time in <timezone>". The timezone needs to be in the following format: # http://timezonedb.com/time-zones
#
# Dependencies:
#   None
#
# Configuration:
#   HUBOT_CURRENT_TIME_KEY
#
# Commands:
#   hubot current time in <timezone>
#
# Author:
#   Fredrik Jönsson

module.exports = (robot) ->
  robot.respond /current time( in)? (.*)/i, (msg) ->
    url = 'http://api.timezonedb.com/'
    query = msg.match[2]
    unless process.env.HUBOT_CURRENT_TIME_KEY
      msg.send 'Please, set HUBOT_CURRENT_TIME_KEY environment variable'
      return

    msg.http(url)
    .query(format: 'json', zone: query, key: process.env.HUBOT_CURRENT_TIME_KEY)
    .get() (err, res, body) ->
        if err
            msg.send "Something's definitely not ok: #{err}"
            return
        else if res.statusCode / 100 == 2
            json = JSON.parse(body)
            date = new Date(json.timestamp * 1000)
            msg.send "Current time in #{query} is: #{date}"
            return
        else
            msg.send "Unknown error, call for backup"
            return
    
    
