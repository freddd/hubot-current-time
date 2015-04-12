# hubot-current-time

A hubot script that interacts with the TimeZoneDB API, perfect to use when you're figuring out if your co-workers in another timezone are working.

See [`src/current-time.coffee`](src/current-time.coffee) for full documentation.

Published at [`npmjs`](https://www.npmjs.com/package/hubot-current-time)

## Installation

In hubot project repo, run:

`npm install hubot-current-time --save`

Then add **hubot-current-time** to your `external-scripts.json`:

```json
[
  "hubot-current-time"
]
```
Setup the HUBOT_CURRENT_TIME_KEY environmental variable
```
export HUBOT_CURRENT_TIME_KEY=<YOUR API KEY>
```

## Sample Interaction
Using ```hubot current time in <timezone>``` will give you the current date & time in the timezone specified

```
Hubot> hubot current time in America/Toronto
Hubot> Current time in America/Toronto is: Sat Apr 04 2015 12:07:49 GMT+0200 (CEST)
Hubot> hubot current time in America/Sao_Paulo
Hubot> Current time in America/Sao_Paulo is: Sat Apr 04 2015 13:08:47 GMT+0200 (CEST)
```
