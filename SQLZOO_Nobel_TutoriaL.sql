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

6.

Show all details of the presidential winners:

    Theodore Roosevelt
    Woodrow Wilson
    Jimmy Carter
    Barack Obama

select * from nobel
where winner IN ('Theodore Roosevelt','Woodrow Wilson','Jimmy Carter','Barack Obama')


7.

Show the winner with first name John 

SELECT winner FROM nobel
where winner like 'John %'

8.

Show the year, subject, and name of Physics winners for 1980 together with the Chemistry winners for 1984.

select * from nobel
where (subject='Physics' and yr=1980) or (subject='Chemistry' and yr=1984)


9.

Show the year, subject, and name of winners for 1980 excluding Chemistry and Medicine

select * from nobel
WHERE yr=1980 and subject not in ('Chemistry','Medicine')

10.

Show year, subject, and name of people who won a 'Medicine' prize in an early year (before 1910, not including 1910) together with winners of a 'Literature' prize in a later year (after 2004, including 2004) 

select * from nobel
where (subject='Medicine' and yr<1910) or (subject='Literature' and yr>=2004)

11.

Find all details of the prize won by PETER GRÜNBERG 
select * from nobel
where winner like 'PETER GR%NBERG'


12.

Find all details of the prize won by EUGENE O'NEILL 
note:You can't put a single quote in a quote string directly. You can use two single quotes within a quoted string.
SELECT * from nobel
where winner='EUGENE O''NEILL'

13.

Knights in order

List the winners, year and subject where the winner starts with Sir. Show the the most recent first, then by name order.

select winner,yr, subject from nobel
where winner like 'Sir%'
order by yr desc,winner


14.

The expression subject IN ('Chemistry','Physics') can be used as a value - it will be 0 or 1.

Show the 1984 winners and subject ordered by subject and winner name; but list Chemistry and Physics last.

select winner, subject
from nobel
where yr = '1984'
order by ( case
           when subject in ('Chemistry','Physics') then 1
           else 0
           end) , subject, winner
