-- Data Cleaning - Checking for duplicates

SELECT track_name, count(track_name)
FROM spotify_data.`spotify 2023`
GROUP BY track_name
ORDER BY 2 DESC;
-- ( There are 7 tracks that have duplicates)


-- Checking the duplicates 

SELECT *
FROM spotify_data.`spotify 2023`
WHERE track_name IN ('Die for You', 'SNAP', 'Miss You', 'SPIT IN MY FACE!', 'About Damn Time', 'Let It Snow! Let It Snow! Let It Snow!', 'Take My Breath');
-- (After conducting a duplicate check, it was discovered that there were 7 tracks with identical titles. However, upon closer examination, it was determined that the data for these tracks with the same title varied)


-- Checking for Null values for most streamed artist  

SELECT *
FROM Spotify_data.`spotify 2023`
WHERE track_name IS NULL OR NULL OR streams IS NULL OR artist IS NULL;
-- (No null value found)

-- Finding top 10 most streamed artist in 2023

SELECT artist, SUM(Streams) AS Streams, track_name
FROM Spotify_data.`spotify 2023`
GROUP BY streams, artist, track_name
ORDER BY 2 DESC
LIMIT 10;



