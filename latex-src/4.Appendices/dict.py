#!/usr/bin/python
# -*- coding: utf-8 -*-

import icu
fh = open('dictionary.txt')
text = fh.read()
spl_text = text.split('\n\n')
fo = open('out.tex', 'wt')

beginning = r"""\newcommand\englishgloss[2]{#2\dotfill\lr{#1}\\}					%		 دستوری برای تعریف واژه‌نامه فارسی به انگلیسی
\chapter*{واژه‌نامه فارسی به انگلیسی}\markboth{واژه‌نامه فارسی به انگلیسی}{واژه‌نامه فارسی به انگلیسی}
\addcontentsline{toc}{chapter}{واژه‌نامه فارسی به انگلیسی}
\thispagestyle{empty}"""

word_template = r"\englishgloss{{{0}}}{{{1}}}"
caption_title = r"\textbf{{{0}}}\\"

fa_keys = []
enfa_dict = {}
for x in spl_text:
    fa, en = x.strip().split('\n')
    fa_keys.append(fa)
    enfa_dict[fa] = en
    #print "FA:", fa
    #print "EN:", en
    #print "*" * 10

collator = icu.Collator.createInstance(icu.Locale('fa_IR.UTF-8'))
fa_keys.sort(cmp=collator.compare)

fo.write(beginning + '\n')

caption = None
for k in fa_keys:
    title = k[:2]
    if title == 'ا':
        title = 'آ'
    if title == caption:
        #print word_template.format(enfa_dict[k], k)
        fo.write(word_template.format(enfa_dict[k], k) + '\n')
    else:
        caption = title
        print caption_title.format(k[:2])
        fo.write(caption_title.format(k[:2])+'\n')
        print word_template.format(enfa_dict[k], k)
        fo.write(word_template.format(enfa_dict[k], k)+'\n')