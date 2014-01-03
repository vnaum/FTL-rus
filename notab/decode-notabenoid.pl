#!/usr/bin/perl -pn
# vim: fileencoding=koi8-r
s/%%/ё/g;
tr/\x01\x08\x07\x11\x02\x05\x03\x0b\x0c`\x24\x1c\x1e\x1d\x1b\x16\x7b\x7e\x5c\x18\x23\x1a\x1f\x19\x17\x40\x7d\x5e\x5c\x2a\x7c6/БПЛЫГИДФЦытйлкивьяшднзмжгчющэцэб/;
tr/ypoanCceTBxOHMKPAEX/уроапСсеТВхОНМКРАЕХ/;
tr/\x09<&/У\-ф/;
s//Э/g;
s//Ч/g;
s//Я/g;
s/_/ъ/g;
s/>/"/g;
s//"/g;
s//Ж/g;
s//Ш/g;
s//Щ/g;
s//Ь/g;

# fix this back:
s/FТL/FTL/g;
