# Hubot Google Hangouts

```
[alindeman] hubot: hangout me
[hubot] I've started a hangout titled 'Hangout':
        Primary account: https://plus.google.com/hangouts/_/calendar/abc.123
        Secondary account: https://plus.google.com/hangouts/_/calendar/abc.123?authuser=1
```

## Installation

1. Add `"hubot-google-hangouts"` to your hubot's `package.json`. The
   latest version is available through [npm](https://npmjs.org/package/hubot-google-hangouts)
2. `npm install`
3. Add `"hubot-google-hangouts"` to your hubot's `external-scripts.json`
4. Set the [required configuration options](https://github.com/alindeman/hubot-google-hangouts/blob/master/src/hangouts.coffee)

## Setup

The setup required is unfortunately non-trivial because the only reliable way
to generate a hangout URL (possibly scoped to a Google Apps organization, if
you're using Google Apps) is through Google Calendar.

All the gory details are in the [comment at the top of
hangouts.coffee](https://github.com/alindeman/hubot-google-hangouts/blob/master/src/hangouts.coffee).

## Improvements

Improvements welcomed. Please file an
[issue](https://github.com/alindeman/hubot-google-hangouts/issues) or pull
request.
