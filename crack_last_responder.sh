sqlite3 -line Responder/Responder.db "select * from responder ORDER BY 1 DESC LIMIT 1"  | grep fullhash | cut -d" " -f4 > /tmp/last.hash
/home/pi/P4wnP1/john/john --wordlist=/home/pi/P4wnP1/john/wordlist/top1000.txt --rules=Jumbo /tmp/last.hash && /home/pi/P4wnP1/john/john --show /tmp/last.hash
