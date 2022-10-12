# 2022 CALENDÁRIO

```python
# IMPORTAR MÓDULO

import calendar
```

# CALENDÁRIO MÊS

```python
# PRINT CALENDÁRIO MÊS

txt = calendar.month(2022, 6)
print(txt)
```

<pre>     June 2022
Mo Tu We Th Fr Sa Su
       1  2  3  4  5
 6  7  8  9 10 11 12
13 14 15 16 17 18 19
20 21 22 23 24 25 26
27 28 29 30

</pre>

```python
# PRINT CALENDÁRIO MÊS

c = calendar.TextCalendar(calendar.MONDAY)
txt = c.formatmonth(2022, 12)

print(txt)
```

<pre>   December 2022
Mo Tu We Th Fr Sa Su
          1  2  3  4
 5  6  7  8  9 10 11
12 13 14 15 16 17 18
19 20 21 22 23 24 25
26 27 28 29 30 31

</pre>

# CALENDÁRIO ANO

```python
# PRINT CALENDÁRIO ANO

c = calendar.TextCalendar(calendar.SUNDAY).formatyear(2022)
print(c)
```

<pre>                                  2022

      January                   February                   March
Su Mo Tu We Th Fr Sa      Su Mo Tu We Th Fr Sa      Su Mo Tu We Th Fr Sa
                   1             1  2  3  4  5             1  2  3  4  5
 2  3  4  5  6  7  8       6  7  8  9 10 11 12       6  7  8  9 10 11 12
 9 10 11 12 13 14 15      13 14 15 16 17 18 19      13 14 15 16 17 18 19
16 17 18 19 20 21 22      20 21 22 23 24 25 26      20 21 22 23 24 25 26
23 24 25 26 27 28 29      27 28                     27 28 29 30 31
30 31

       April                      May                       June
Su Mo Tu We Th Fr Sa      Su Mo Tu We Th Fr Sa      Su Mo Tu We Th Fr Sa
                1  2       1  2  3  4  5  6  7                1  2  3  4
 3  4  5  6  7  8  9       8  9 10 11 12 13 14       5  6  7  8  9 10 11
10 11 12 13 14 15 16      15 16 17 18 19 20 21      12 13 14 15 16 17 18
17 18 19 20 21 22 23      22 23 24 25 26 27 28      19 20 21 22 23 24 25
24 25 26 27 28 29 30      29 30 31                  26 27 28 29 30

        July                     August                  September
Su Mo Tu We Th Fr Sa      Su Mo Tu We Th Fr Sa      Su Mo Tu We Th Fr Sa
                1  2          1  2  3  4  5  6                   1  2  3
 3  4  5  6  7  8  9       7  8  9 10 11 12 13       4  5  6  7  8  9 10
10 11 12 13 14 15 16      14 15 16 17 18 19 20      11 12 13 14 15 16 17
17 18 19 20 21 22 23      21 22 23 24 25 26 27      18 19 20 21 22 23 24
24 25 26 27 28 29 30      28 29 30 31               25 26 27 28 29 30
31

      October                   November                  December
Su Mo Tu We Th Fr Sa      Su Mo Tu We Th Fr Sa      Su Mo Tu We Th Fr Sa
                   1             1  2  3  4  5                   1  2  3
 2  3  4  5  6  7  8       6  7  8  9 10 11 12       4  5  6  7  8  9 10
 9 10 11 12 13 14 15      13 14 15 16 17 18 19      11 12 13 14 15 16 17
16 17 18 19 20 21 22      20 21 22 23 24 25 26      18 19 20 21 22 23 24
23 24 25 26 27 28 29      27 28 29 30               25 26 27 28 29 30 31
30 31

</pre>

# LOOP NAS PROPRIEDADES

```python
# PRINT MESES

for name in calendar.month_name:
    print(name)
```

<pre>
January
February
March
April
May
June
July
August
September
October
November
December
</pre>

```python
# PRINT DIAS DA SEMANA

for day in calendar.day_name:
    print(day)
```

<pre>Monday
Tuesday
Wednesday
Thursday
Friday
Saturday
Sunday
</pre>

```python
# PRINT DIA DO MÊS

c = calendar.TextCalendar(calendar.THURSDAY)

for i in c.itermonthdays(2022, 2):
    print(i)
```

<pre>0
0
0
0
0
1
2
3
4
5
6
7
8
9
10
11
12
13
14
15
16
17
18
19
20
21
22
23
24
25
26
27
28
0
0
</pre>

# CALENDÁRIO TO HTML

```python
# GERAR CALENDÁRIO EM HTML 

hc = calendar.HTMLCalendar(calendar.SUNDAY)
txt = hc.formatmonth(2022, 12)
print(txt)
```

<pre><table border="0" cellpadding="0" cellspacing="0" class="month">
<tr><th colspan="7" class="month">December 2022</th></tr>
<tr><th class="sun">Sun</th><th class="mon">Mon</th><th class="tue">Tue</th><th class="wed">Wed</th><th class="thu">Thu</th><th class="fri">Fri</th><th class="sat">Sat</th></tr>
<tr><td class="noday">&nbsp;</td><td class="noday">&nbsp;</td><td class="noday">&nbsp;</td><td class="noday">&nbsp;</td><td class="thu">1</td><td class="fri">2</td><td class="sat">3</td></tr>
<tr><td class="sun">4</td><td class="mon">5</td><td class="tue">6</td><td class="wed">7</td><td class="thu">8</td><td class="fri">9</td><td class="sat">10</td></tr>
<tr><td class="sun">11</td><td class="mon">12</td><td class="tue">13</td><td class="wed">14</td><td class="thu">15</td><td class="fri">16</td><td class="sat">17</td></tr>
<tr><td class="sun">18</td><td class="mon">19</td><td class="tue">20</td><td class="wed">21</td><td class="thu">22</td><td class="fri">23</td><td class="sat">24</td></tr>
<tr><td class="sun">25</td><td class="mon">26</td><td class="tue">27</td><td class="wed">28</td><td class="thu">29</td><td class="fri">30</td><td class="sat">31</td></tr>
</table>

</pre>

