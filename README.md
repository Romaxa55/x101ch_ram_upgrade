# ASUS X101CH UPGRADE & OVER CLOCKING
=============

## Описание
_Цель проекта - прокачка старенького нетбука, а имено:_
1. Увеличить RAM с 1Gb до 2Gb 
2. Разогнать RAM с 800mhz до ~1600
3. Разблокировать 64 бит, для установки windows x64

_Чтобы ноутбук увидел 2 Gb памяти, нужно изменить SPD прошивку, где указана конфигурация и информация о памяти. На материнской плате нет spd eeprom и все зашито в прошивку BIOS одним файлом размером в 2Mb. Подробнее как устроен SDP, есть документация в файле *SPD_DDR3_spec.pdf*_

_Сделал сборку всех необходимых инструментов для редактирования SDP DDR3 и ИЗВKЕЧЕНИЯ SDP из BIOS на примере ноутбука Asus x101ch._  

Для гарантированной работы всех скриптов и утилит, будем использовать виртуальную машину [VirtialBox](https://www.virtualbox.org/wiki/Downloads) и [Vagrantfile](https://www.vagrantup.com/downloads).

_Установка Vagrant сама по себе очень проста, Вам необходимо [скачать клиент](https://www.vagrantup.com/downloads) с официального сайта для операционной системы, которую вы планируете использовать и запустить процесс установки. Для работы Vagrant также необходимо [скачать VirtualBox](https://www.virtualbox.org/wiki/Downloads) с официального сайта_

### Пример использования
После установки виртуальной машины, сохраняем к себе на компьютер [Vagrantfile](https://raw.githubusercontent.com/Romaxa55/x101ch_ram_upgrade/main/VagrantFile) или можно скачать командой ниже
 
#### Скачать шаблон deploy Vagrantfile через Curl

```bash
curl -o Vagrantfile -k https://raw.githubusercontent.com/Romaxa55/x101ch_ram_upgrade/main/VagrantFile
```

#### Запускаем сборку виртульно машины
```bash
vagrant up
```

#### Заходим на виртуальную машину
```bash
vagrant ssh
```

