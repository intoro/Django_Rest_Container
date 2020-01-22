# Django REST Container

Containerized Django rest API application 

Have docker installed

Clone the repository
cd into the django-rest-container folder
run:
```
docker build .
```
You will see: 
```
Successfully built <Image Number>
```
copy the Image number that is created
then run:
```
docker run -p 8000:8000 --detach <Image Number>

open http://127.0.0.1:8000/events/ in your browser