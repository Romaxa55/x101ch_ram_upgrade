# ASUS x101ch ram upgrade
=============

## Описание
_Цель проекта - прокачка старенького нетбука, а имено:_
1. Увеличить RAM с 1Gb до 2Gb 
2. Разогнать RAM с 800mhz до ~1600
3. Разблокировать 64 бит, для установки windows x64

_Сделал сборку всех необходимых инструментов для редактирования SDP DDR3 и ИЗВKЕЧЕНИЯ SDP из BIOS на примере ноутбука Asus x101ch._  

Для гарантированной работы всех скоптов и утилит, будем использовать виртуальную машину VirtialBox и Vagrantfile.

_Установка Vagrant сама по себе очень проста, Вам необходимо [скачать клиент](https://www.vagrantup.com/downloads) с официального сайта для операционной системы, которую вы планируете юзать и запустить процесс установки. Для работы Vagrant также необходимо [скачать VirtualBox](https://www.virtualbox.org/wiki/Downloads) с официального сайта_

### Пример использования
После установки виртуальной машины, сохраняем к себе на компьютер [Vagrantfile](https://raw.githubusercontent.com/Romaxa55/x101ch_ram_upgrade/main/VagrantFile) или можно скачать командой ниже
 
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

