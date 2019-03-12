Django API, Udemy
3/11, Monday


docker-compose exec database psql -U postgres -h database
#steps
1. python manage.py migrate
2. python manage.py runserver
3. python manage.py startapp blogi
4. docker-compose exec web python manage.py makemigrations blogi 
5. docker-compose exec web python manage.py sqlmigrate blogi 0001
6. docker-compose exec web python manage.py migrate
7. docker-compose exec web python manage.py createsuperuser 
8. docker-compose exec web python manage.py shell 
9. docker-compose exec database psql -U postgres -h database
10. exec(open('script.py').read())
11. docker-compose stop web
    docker-compose up --build -d web