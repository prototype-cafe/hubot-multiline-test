# Description
#   A hubot script that does the things
#
# Configuration:
#   None
#
# Commands:
#   hubot mlecho [string]
#
# Author:
#   knjcode <knjcode@gmail.com>

module.exports = (robot) ->
  robot.respond /mlecho ((.*\s*)+)/, (msg) ->
    strs = msg.match[1].split("\n")
    msg.reply "linenum:" + strs.length
    for str, index in strs
      msg.reply "line" + (index + 1) + ":" + str

    msg.reply msg.match[1]
