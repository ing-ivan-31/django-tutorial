# recipe-app
python django rest framework

**Instruction for Build image**

docker-compose build

**Start Project to app folder**

 docker-compose run web sh -c "django-admin.py startproject djangonautic ."
 
**Add modules to project**

docker-compose run web sh -c "django-admin.py startapp djangonautic ."

**or**

Previously you need create the folder _articles_  inside api

docker-compose run web sh -c "django-admin.py startapp articles ./articles"


**Applying Migrations**
 
 docker-compose run  web sh -c "python manage.py migrate"
 
**Add Super User Password: secret1234**
 
  docker-compose run  web sh -c "python manage.py createsuperuser --email admin@example.com --username admin"

**Up docker container**

docker-compose up web

**Run tests**
 
 docker-compose run web sh -c "python manage.py test"

**Run tests And Linting**
 
 docker-compose run web sh -c "python manage.py test  && flake8"

