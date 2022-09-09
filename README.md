# Лабораторная работа №3

## Задание

Создайте свой кастомный образ nginx на базе alpine. После запуска nginx
должен отдавать кастомную страницу (достаточно изменить дефолтную
страницу nginx)
Собранный образ необходимо запушить в docker hub и дать ссылку на ваш
репозиторий.

* Сборка контейнера 
```
docker build -t anastasia19/docker-nginx . 
```
* Push на Docker Hub
```
docker push anastasia19/docker-nginx
```
* Запуск контейнера
```
docker run -dp 8080:80 anastasia19/docker-nginx
```

* [Ссылка на dockerhub](https://hub.docker.com/u/anastasia19)

* Кастомная страница Nginx
![pic](https://github.com/naaastyazharkova/Operating-System/blob/3s-lab-03/picture/Screenshot%20from%202022-09-09%2015-01-01.png)
