#! /bin/sh


# User credentials
#user=admin
#email=admin@example.com
#password=pass

file=db/db.sqlite3
if [ -z "$file" ]; #if this file is not created
  then
    python3 manage.py migrate # make migration
    #create superuser
    #echo "from django.contrib.auth.models import User; User.objects.create_superuser('$user', '$email', '$password')" | python3 manage.py shell
  else

    #else file is created make migrations
    python3 manage.py migrate
    #create superuser
    echo "from django.contrib.auth.models import User; User.objects.create_superuser('$user', '$email', '$password')" | python3 manage.py shell


fi

