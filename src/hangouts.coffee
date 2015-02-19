# Description:
#   Create hangouts with Hubot.
#
# Commands:
#   hubot hangout me <title> - Creates a Hangout with the given title and returns the URL.
#
# Configuration:
#   HUBOT_GOOGLE_HANGOUTS_DOMAIN: Google Apps domain used as a scope for
#   generating hangout URLs. Leave blank to use the vanilla Google Hangout.

hangoutsDomain = if process.env.HUBOT_GOOGLE_HANGOUTS_DOMAIN then '/' + process.env.HUBOT_GOOGLE_HANGOUTS_DOMAIN else ''

module.exports = (robot) ->
  robot.respond /hangouts?( me)?\s*"?(.*?)"?$/i, (msg) ->
    console.log msg.match
    console.log msg.message.user
    title = "#{msg.match[2] || msg.message.user.name}-#{+new Date()}"
    slug  = title.replace(/[^0-9a-z-]+/gi, '-')
    msg.send "I've started a Hangout! Join here: https://plus.google.com/hangouts/_#{hangoutsDomain}/#{slug}"
