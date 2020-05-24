# Project 19 - Postmortem
Incident Report : The Pizza website


Issue Summary
Customers have been reporting that they can’t access the pizza site and it is returning a 500 Internal error between 01:17 p.m and 02:26 p.m. All customers complained about not getting their pizza for their break time. The root cause of the problem is a typo in the file wp-settings.php on the line 137, an additional “p” was found. Removing it by creating a puppet file to do the job resolved it.
Timeline
02:31 p.m : Multiple customers complaints received

02:37 p.m : THe devOps team is asked to look into the problem

02:40 p.m : An error is found using the strace utility

02:42 p.m : The typo found is removed

02:45 p.m : The pizza site is back to service

Root cause and resolution
The 500 Internal server occured because of typo made in the file /var/www/html/wp-settings.php on the line 137. It was written “class-wp-locale.phpp” instead of “class-wp-locale.php”

The server came back into service after removing that additional “p” on that line by creating a puppet file that does the job.
Corrective and preventative measures
To prevent those problems we have to check that the server is functional every now and then by sending a curl request.
