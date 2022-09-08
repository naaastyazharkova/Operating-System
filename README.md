# Лабораторная работа №1
## Задание 1
![картинка1](https://github.com/naaastyazharkova/Operating-System/blob/3s-lab-01/pictures/1.png)
### Решение
![картинка1](https://github.com/naaastyazharkova/Operating-System/blob/3s-lab-01/pictures/1.1.png)
<details> 
<summary>Код</summary>
  
  ```
#!/bin/bash

echo "Arguments are: \$1=$1, \$2=$2"
  ```
  
</details>

## Задание 2
![картинка1](https://github.com/naaastyazharkova/Operating-System/blob/3s-lab-01/pictures/2.png)
### Решение
![картинка1](https://github.com/naaastyazharkova/Operating-System/blob/3s-lab-01/pictures/2.2.png)
<details> 
<summary>Код</summary>
  
  ```
#!/bin/bash

echo 'Enter a number'; read number

if [ $number -ge 0 ] 
then

case $number in
    0) echo "No students" ;;
    1) echo "1 student" ;;
    2 | 3 | 4) echo "$number students" ;;
    *) echo "A lot of students";;
esac

else
    echo "Error"
fi
  ```
  
</details>

## Задание 3
![картинка1](https://github.com/naaastyazharkova/Operating-System/blob/3s-lab-01/pictures/3.png)
### Решение
![картинка1](https://github.com/naaastyazharkova/Operating-System/blob/3s-lab-01/pictures/3.3.png)
<details> 
<summary>Код</summary>
  
  ```
#!/bin/bash

echo 'Enter your name: '; read name
echo 'Enter your age: '; read age

if [[ $age -le 16 ]]
then
    echo "$name, your group is child"
elif [ $age -ge 17 ] && [ $age -le 25 ]
then
    echo "$name, your group is youth"
else
    echo "$name, your group is adult"
fi
  ```
  
</details>

## Задание 4
![картинка1](https://github.com/naaastyazharkova/Operating-System/blob/3s-lab-01/pictures/4.png)
### Решение
![картинка1](https://github.com/naaastyazharkova/Operating-System/blob/3s-lab-01/pictures/4.4.png)
<details> 
<summary>Код</summary>
  
  ```
#!/bin/bash

function gcd {
    if [[ $1 -eq $2 ]]
    then echo "GCD is $1"
    else 
        if [[ $1 -gt $2 ]]
        then gcd $(($1 - $2)) $2
        else gcd $(($2 - $1)) $1
        fi
    fi
}

echo "Введите два числа через пробел: "
read num1 num2
gcd $num1 $num2
  ```
  
</details>
