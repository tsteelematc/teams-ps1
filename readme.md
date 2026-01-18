Script used to add students that are already part of the MS Teams
"team" to a private channel...
> This allows private channels to be used when making the videos
>
> But then don't have to recreate, rather add everyone to the private
> channel when vids are done/ready, i-o-g...

Example of running...

```
.\add-to-teams-channel.ps1 -TeamName "2026 Spring JS Frameworks" -ChannelName "Week 01 Sharing" -CsvPath ".\2026-spring-js-frameworks-students.csv" -EmailColumnName "Email"
```

Also, note I have a PowerAutomate script to add email csv to the MS Team "team"
> Should probably convert it to PS1 at some point