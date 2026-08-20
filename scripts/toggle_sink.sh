#!/bin/bash

# Проверяем, выбрано ли сейчас устройство 52 по умолчанию
# wpctl status отмечает текущее устройство звездочкой (*)
if wpctl status | grep -q "\*.*52"; then
    wpctl set-default 54
else
    wpctl set-default 52
fi
