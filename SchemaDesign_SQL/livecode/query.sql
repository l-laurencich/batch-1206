-- List all artists (only names)
SELECT artists.name
FROM artists


-- Count the number of tracks that are shorter than 2 minutes
SELECT COUNT(tracks.id)
FROM tracks
WHERE tracks.milliseconds < 2 * 60000


-- List the first ten albums of the Jukebox DB, sorted alphabetically
SELECT albums.title
FROM albums
ORDER BY albums.title ASC
LIMIT 10

-- List the track and album information for the tracks which names are containing a given keyword (case insensitive)
SELECT tracks.name, albums.title
FROM tracks
JOIN albums ON tracks.album_id = albums.id
WHERE UPPER(tracks.name) LIKE "%music%"

--List the top 5 Rock artists with the most tracks
SELECT artists.name, COUNT(*) AS track_count
FROM artists
JOIN albums ON albums.artist_id = artists.id
JOIN tracks ON tracks.album_id = albums.id
JOIN genres ON tracks.genre_id = genres.id
WHERE genres.name = "Rock"
GROUP BY artists.name
ORDER BY track_count DESC
LIMIT 5
