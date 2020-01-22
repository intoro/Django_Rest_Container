FROM ubuntu
RUN apt-get update \
    && apt-get install -y software-properties-common \
    && add-apt-repository ppa:deadsnakes/ppa \
    && apt-get install -y python3.6 \
    && apt install -y python3-pip \
    && pip3 install django djangorestframework \
    && django-admin startproject eventviewer 

 RUN ls


WORKDIR eventviewer
RUN python3 manage.py migrate
RUN django-admin startapp the_events
RUN ls


WORKDIR eventviewer
RUN ls
COPY settings.py settings.py
COPY urls.py urls.py



WORKDIR ../the_events
RUN ls
COPY serializers.py serializers.py
COPY theevents_urls.py urls.py
COPY theevents_views.py views.py


WORKDIR ../
RUN ls
HEALTHCHECK CMD ls 

# # RUN python3 manage.py runserver &
# # RUN pkill -f runserver

CMD python3 manage.py runserver 0.0.0.0:8000 