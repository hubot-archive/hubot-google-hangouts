# Hubot Google Hangouts

```
[alindeman] hubot: hangout me
[hubot] I've started a hangout titled 'Hangout':
        https://plus.google.com/hangouts/_/calendar/abc.123
        (you may need to add ?authuser=1 if you're signed into multiple accounts)
```

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
