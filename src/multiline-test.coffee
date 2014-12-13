# Description
#   A hubot script that does the things
#
# Configuration:
#   None
#
# Commands:
#   hubot echo [string]
#
# Author:
#   knjcode <knjcode@gmail.com>

module.exports = (robot) ->
  robot.respond /echo ((.*\s*)+)/, (msg) ->
    msg.reply msg.match[1]
