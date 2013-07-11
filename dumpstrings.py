#!/usr/bin/env python

# this extracts strings from XML files

import sys
from BeautifulSoup import BeautifulSoup

soup = BeautifulSoup(open(sys.argv[1]).read())

printed = {}
for t in soup.findAll('text'):
    tx = t.text
    if len(tx)==0: continue
    if printed.has_key(tx): continue
    print 'msgid "%s"' % tx.encode('utf-8').replace('"', '\\"')
    print 'msgstr ""'
    printed[tx] = 1
