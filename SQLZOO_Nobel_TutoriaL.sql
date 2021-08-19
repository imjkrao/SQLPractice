https://sqlzoo.net/wiki/SELECT_from_Nobel_Tutorial#nobel_Nobel_Laureates


We continue practicing simple SQL queries on a single table.

This tutorial is concerned with a table of Nobel prize winners:

nobel(yr, subject, winner)

1
the query to display Nobel prizes for 1950
SELECT yr, subject, winner
  FROM nobel
 WHERE yr = 1950

 yr	subject	winner
1950	Chemistry	Kurt Alder
1950	Chemistry	Otto Diels
1950	Literature	Bertrand Russell
1950	Medicine	Edward C. Kendall
1950	Medicine	Philip S. Hench
1950	Medicine	Tadeus Reichstein
1950	Peace	Ralph Bunche
1950	Physics	Cecil Powell


2.

Show who won the 1962 prize for Literature. 
SELECT winner
  FROM nobel
 WHERE yr = 1962
   AND subject = 'Literature'


Correct answer
winner
John Steinbeck

3.

Show the year and subject that won 'Albert Einstein' his prize. 

SELECT yr, subject from nobel
where winner= 'Albert Einstein'

Correct answer
yr	subject
1921	Physics

4.

Give the name of the 'Peace' winners since the year 2000, including 2000. 

select winner from nobel
where subject='Peace'  and yr>=2000


5.

Show all details (yr, subject, winner) of the Literature prize winners for 1980 to 1989 inclusive. 

select * from nobel
where subject='Literature' and yr between 1980 and 1989

