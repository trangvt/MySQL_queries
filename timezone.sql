https://stackoverflow.com/questions/2934258/how-do-i-get-the-current-time-zone-of-mysql



1/ Set timezone

SET time_zone = '+00:00';

2/ Check timezone

SELECT @@global.time_zone, @@session.time_zone;
SELECT now();