# ASUS x101ch ram upgrade
=============

### Описание

_Сделал сборку всех необходимых инструментов для редактирования SDP DDR3 и извдечения SDP из BIOS на примере ноутбука Asus x101ch._  

Для гарантированной работы всех скоптов и утилит, будем использовать виртуальную машину VirtialBox и Vagrantfile.

_Установка Vagrant сама по себе очень проста, Вам необходимо [скачать клиент](https://www.vagrantup.com/downloads) с официального сайта для операционной системы, которую вы планируете юзать и запустить процесс установки. Для работы Vagrant также необходимо [скачать VirtualBox](https://www.virtualbox.org/wiki/Downloads) с официального сайта_

### Пример использования
После установки виртуальной машины, сохраняем к себе на компьютер Vagrantfile, запускаем сценари командой
```sh
$ vagrant up
```


####  Установка из репозитория
```sh
git clone https://github.com/Romaxa55/avito.git
cd avito
docker build -t avito .
```

**Запусти команду**
```sh
# Запуск контейнера
docker run -it --rm --name Avito_Parser -v -v local-db:/usr/src/app/ \
-e TELEGRAM_CHAT_ID=test \
-e TELEGRAM_TOKEN=12345 \
-e AVITO_PARSE_URL="https://www.avito.ru/sankt-peterburg/noutbuki?f=ASgCAQECAUDwvA0UiNI0AUXGmgwWeyJmcm9tIjo1MDAsInRvIjo1MDAwfQ&user=1" \
avito
```


####  Установка из докера

```sh
docker pull romaxa55/avito
```

**Запусти команду**
```sh
docker run -it --rm --name Avito_Parser -v local-db:/usr/src/app/ \
-e TELEGRAM_CHAT_ID=test \
-e TELEGRAM_TOKEN=12345 \
-e AVITO_PARSE_URL="https://www.avito.ru/sankt-peterburg/noutbuki?f=ASgCAQECAUDwvA0UiNI0AUXGmgwWeyJmcm9tIjo1MDAsInRvIjo1MDAwfQ&user=1" \
romaxa55/avito
```

java -jar SPDEditorGUI.jar
