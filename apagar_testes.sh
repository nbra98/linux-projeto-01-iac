#!/bin/bash

rm -rf ../../publico ../../adm ../../ven ../../sec

groupdel GRP_ADM
groupdel GRP_VEN
groupdel GRP_SEC
groupdel amanda
groupdel carlos
groupdel debora
groupdel flavio
groupdel joao
groupdel lucas
groupdel maria
groupdel roberto
groupdel rogerio

userdel -f amanda
userdel -f carlos
userdel -f debora
userdel -f flavio
userdel -f joao
userdel -f lucas
userdel -f maria
userdel -f roberto
userdel -f rogerio
