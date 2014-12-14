# Description
#   A hubot script that experiment multiline echo
#
# Configuration:
#   None
#
# Commands:
#   hubot mlecho <multiline text> - echo <multiline text> with additional info
#
# Author:
#   knjcode <knjcode@gmail.com>

module.exports = (robot) ->
  robot.respond /mlecho ((.*\s*)+)/, (msg) ->
    strs = msg.match[1].split("\n")
    [first, subsequent...] = strs

    msg.reply "lines:" + strs.length
    for str, index in strs
      msg.reply "line" + (index + 1) + ":" + str

    msg.reply "first:" + first
    msg.reply "subsequent:" + subsequent
    msg.reply "joined subseq:" + subsequent.join('\n')

    msg.reply msg.match[1]
