# IP Sender

To run the code manually, first, enter your email address into the EMAIL_ADDRESS variable and enter your Google created app password into APP_PASSWORD.

```bash
./IP_Sender.sh
```

If you would like this to be a scheduled task, run the command:

```bash
crontab -e
```

Then, below the commented out code, write out the scheduling you would like the script to have. This site explains the format for scheduling better than I can https://crontab.guru/. Followed by the command you would like to run.

For example:

```bash
0 */12 * * * /home/chris/IP_Sender/IP_Sender.sh >> /tmp/email_log.txt 2>&1
```

Will run the code once every 12 hours, starting at midnight. It will also log the output of the script into a text file.
