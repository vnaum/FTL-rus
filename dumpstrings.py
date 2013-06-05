#!/usr/bin/env python

from BeautifulSoup import BeautifulSoup
soup = BeautifulSoup(open('events-raw.xml').read())

printed = {}
for t in soup.findAll('text'):
    tx = t.text
    if len(tx)==0: continue
    if printed.has_key(tx): continue
    print tx.encode('utf-8')
    printed[tx] = 1
