#!/usr/bin/env python

from BeautifulSoup import BeautifulSoup
soup = BeautifulSoup(open('events-raw.xml').read())

for t in soup.findAll('text'):
    print t.text
