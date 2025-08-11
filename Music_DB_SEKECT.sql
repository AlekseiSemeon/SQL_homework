-- Задание 2

-- 1. Название и продолжительность самого длительного трека
SELECT track_name, duration
FROM track
ORDER BY duration DESC
LIMIT 1;

-- 2. Название треков, продолжительность которых не менее 3,5 минут
SELECT track_name
FROM track
WHERE duration > '00:03:30';

-- 3. Названия сборников, вышедших в период с 2018 по 2020 год включительно
SELECT name
FROM collection
WHERE year BETWEEN 2018 AND 2020;

-- 4. Исполнители, чьё имя состоит из одного слова
SELECT nickname
FROM singer
WHERE nickname NOT LIKE '% %';

-- 5. Название треков, которые содержат слово «мой» или «my»
SELECT track_name
FROM track
WHERE (track_name LIKE '%Мой%') OR (track_name LIKE '%My%');

-- Задание 3

-- 1. Количество исполнителей в каждом жанре
SELECT music_genre_name, COUNT(singer_id) FROM music_genre AS mg
JOIN genres_singers AS gs ON mg.genre_id = gs.genre_id 
GROUP BY mg.music_genre_name

-- 2. Количество треков, вошедших в альбомы 2019–2020 годов.
SELECT COUNT(track_name) FROM track t
JOIN album a ON t.albim_id = a.album_id
WHERE a."year" BETWEEN 2019 AND 2020

-- 3. Средняя продолжительность треков по каждому альбому
SELECT album_name, AVG(duration) FROM track t
JOIN album a  ON t.albim_id = a.album_id
GROUP BY a.album_name;

-- 4. Все исполнители, которые не выпустили альбомы в 2020 году
SELECT nickname FROM singer s 
JOIN albums_singers as2 ON s.singer_id = as2.singer_id 
JOIN album a ON as2.album_id = a.album_id 
WHERE a."year" != 2020
GROUP BY nickname 

-- 5. Названия сборников, в которых присутствует конкретный исполнитель
SELECT name FROM collection c 
JOIN tracks_collections tc ON c.collection_id = tc.collection_id 
JOIN track t ON tc.track_id = t.track_id 
JOIN album a ON t.albim_id  = a.album_id 
JOIN albums_singers as2 ON a.album_id = as2.album_id 
JOIN singer s ON as2.singer_id = s.singer_id 
WHERE nickname = 'Linkin Park'


