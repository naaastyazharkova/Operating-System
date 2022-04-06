# Лабораторная работа №5

## Задание

 + На серверах web1, web2 установить Nginx.
 + На серверах haproxy1, haproxy2 установить и настроить отказоустойчивую связку HAProxy+Keepalived. Настроить VIP с помощью Keepalived в соответствии со схемой
 + На серверах web1, web2 Nginx должен работать по порту 8080 и отдавать кастомную страницу, зайдя на которую можно понять на каком сервере вы находитесь.
 + На серверах с HAProxy ПО должно обеспечить балансировку нагрузки серверов web1 и web2 в режиме round-robin. Сделать таймауты ожидания ответа web1 и web2 как можно меньше. Скажем, 1-2 секунды
 + Установка и настройка всего ПО должна быть обеспечена Ansible-сценарием.
 + Все файлы по этому заданию выложить в Github и написать ReadMe со скринами работоспособности и инструкцию по запуску вашего Ansible-сценария.

## Как запустить playbook

Сначала уничтожить все то, что было сделано:

````
vagrant destroy --force
````

Далее поднять vagrant:
````
vagrant up
````

Запустить playbook:

````
ansible-playbook nginx.yml 
````

## Проверка балансировщика
### Всё прекрасно
![всё прекрасно](https://github.com/naaastyazharkova/Operating-System/blob/lab-05/lab5_os/pictures/ha1%2B2.png)


## Проверка отказоустойчивости
### Отключен haproxy1
![отключен haproxy1](https://github.com/naaastyazharkova/Operating-System/blob/lab-05/lab5_os/pictures/ha2.png)

### Отключен haproxy2
![отключен haproxy2](https://github.com/naaastyazharkova/Operating-System/blob/lab-05/lab5_os/pictures/ha1.png)