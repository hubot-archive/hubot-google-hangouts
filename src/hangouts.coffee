# Description:
#   Create hangouts with Hubot.
#
# Commands:
#   hubot hangout me <title> - Creates a Hangout with the given title and returns the URL.
#
# Configuration:
#   HUBOT_GOOGLE_HANGOUTS_DOMAIN: Google Apps domain used as a scope for
#   generating hangout URLs.

hangoutsDomain = process.env.HUBOT_GOOGLE_HANGOUTS_DOMAIN

module.exports = (robot) ->
  robot.respond /hangouts?( me)?\s*"?(.*?)"?$/i, (msg) ->
    return if missingEnvironment(msg)

    console.log msg.match
    console.log msg.message.user
    title = "#{msg.match[2] || msg.message.user.name}-#{+new Date()}"
    slug  = title.replace(/[^0-9a-z-]+/gi, '-')
    msg.send "I've started a Hangout! Join here: https://plus.google.com/hangouts/_/#{hangoutsDomain}/#{slug}"

  missingEnvironment = (msg) ->
    missingAnything = false
    unless hangoutsDomain?
      msg.send "Hangouts domain is missing: Ensure that HUBOT_GOOGLE_HANGOUTS_DOMAIN is set."
      missingAnything = true

    missingAnything
