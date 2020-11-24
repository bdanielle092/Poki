--1.What grades are stored in the database?
--SELECT Name FROM Grade;
--2.What emotions may be associated with a poem?
SELECT Emotion.Name 
FROM Poem
LEFT JOIN PoemEmotion on poem.PoemId = Poem.Id
LEFT JOIN Emotion on PoemEmotion.EmotionId = Emotion.Id;
--3.How many poems are in the database?
--SELECT COUNT (Id) AS NumberOfPoem from Poem;