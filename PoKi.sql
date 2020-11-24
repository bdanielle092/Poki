--1.What grades are stored in the database?
--SELECT Name FROM Grade;

--2.What emotions may be associated with a poem?
--SELECT Emotion.Name 
--FROM Poem
--LEFT JOIN PoemEmotion on PoemEmotion.PoemId = Poem.Id
--LEFT JOIN Emotion on PoemEmotion.EmotionId = Emotion.Id;

--3.How many poems are in the database?
--select count (Id) as numberofpoem from poem;

--4.Sort authors alphabetically by name. What are the names of the top 76 authors?
--SELECT TOP 76 Name
--FROM Author
--ORDER BY Name ASC

--5.Starting with the above query, add the grade of each of the authors.
--SELECT TOP 76 Author.Name, Grade.Name
--FROM Author
--LEFT JOIN Grade on Author.GradeId = Grade.Id
--ORDER BY Author.Name ASC;

--6.Starting with the above query, add the recorded gender of each of the authors.
--SELECT TOP 76 Author.Name AS Author, Grade.Name AS Grade, Gender.Name AS Gender
--FROM Author
--LEFT JOIN Grade on Author.GradeId = Grade.Id
--LEFT JOIN Gender on Author.GenderId = Gender.Id
--ORDER BY Author.Name ASC;

--7.What is the total number of words in all poems in the database?
--SELECT Sum(WordCount) 
--FROM Poem;

--8.Which poem has the fewest characters?
--SELECT CharCount, Text
--FROM Poem
--WHERE CharCount = (SELECT Min(CharCount) from Poem);

--9.How many authors are in the third grade?
--SELECT COUNT (Grade.Name)
--From Author
--LEFT JOIN Grade on Author.GradeId = Grade.Id
--WHERE Grade.Name = '3rd Grade';

--10.How many authors are in the first, second or third grades?
--SELECT COUNT (Grade.Name)
--From Author
--LEFT JOIN Grade on Author.GradeId = Grade.Id
--WHERE Grade.Name = '1st Grade' OR Grade.Name = '2nd Grade' OR Grade.Name = '3rd Grade';

--11.What is the total number of poems written by fourth graders?
--SELECT COUNT (Poem.Title) AS Title, Grade.Name
--FROM Author
--LEFT JOIN Poem on Poem.AuthorId = Author.Id
--LEFT JOIN Grade on Author.GenderId = Grade.Id
--WHERE Grade.Name = '4th Grade'
--GROUP BY Grade.Name;

--12.How many poems are there per grade?
--select count (Poem.Title) as title, grade.Name
--from Poem
--left join Author on poem.authorid = author.id
--left join grade on author.GradeId = grade.id
--group by grade.Name
--order by grade.Name asc;

--13.How many authors are in each grade? (Order your results by grade starting with 1st Grade)
--SELECT COUNT (Author.Name) AS TotalNumber, Grade.Name AS Grade
--FROM Author
--LEFT JOIN Grade on Author.GradeId = Grade.Id
--Group BY  Grade.Name
--Order BY Grade.Name

--14.What is the title of the poem that has the most words?
--SELECT WordCount, Title
--FROM Poem
--WHERE WordCount = (SELECT MAX (WordCount) from Poem);

--15.Which author(s) have the most poems? (Remember authors can have the same name.)
--SELECT TOP 1 COUNT (Poem.Id) AS NumOfPoem, Author.Name, Author.Id
--FROM Author
--LEFT JOIN Poem ON Poem.AuthorId = Author.Id
--GROUP BY Author.Name, Author.Id
--ORDER BY NumOfPoem DESC

--16. How many poems have an emotion of sadness?
--SELECT COUNT (Emotion.Name) AS NumOfPoemWithSadness
--FROM Poem
--LEFT JOIN PoemEmotion on PoemEmotion.PoemId = Poem.Id 
--LEFT JOIN Emotion on PoemEmotion.EmotionId = Emotion.Id
--WHERE Emotion.Name = 'Sadness';

--17.How many poems are not associated with any emotion?
--SELECT COUNT (Poem.Title) AS NumOfPoemWithoutEmotion
--FROM Poem
--LEFT JOIN PoemEmotion on PoemEmotion.PoemId = Poem.Id
--WHERE PoemEmotion.PoemId IS NULL;

--18.Which emotion is associated with the least number of poems?
--SELECT TOP 1 COUNT (Emotion.Name), Emotion.Name
--FROM Poem
--JOIN PoemEmotion on PoemEmotion.PoemId = Poem.Id
--JOIN Emotion on PoemEmotion.EmotionId = Emotion.Id
--GROUP BY Emotion.Name
--ORDER BY COUNT (Emotion.Name);

--19.Which grade has the largest number of poems with an emotion of joy?
--PoemEmotion Table
--4 joins



--20.Which gender has the least number of poems with an emotion of fear?










