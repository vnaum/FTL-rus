#!/usr/bin/env python

# this extracts strings from XML files

import sys
from bs4 import BeautifulSoup

soup = BeautifulSoup(open(sys.argv[1]).read(), "html.parser")

printed = {}
for t in soup.findAll('text'):
    tx = t.text
    if len(tx)==0: continue
    print tx

# in events-zoltan fails this:
# soup.findAll('text')[32].text
