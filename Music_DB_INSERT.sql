-- Запрос для таблицы музыккальных жанров
INSERT INTO music_genre(music_genre_name)
VALUES
	('Rock'),
	('Rap and hip-hop'),
	('Classical'),
	('Electronic music'),
	('Pop');

-- Запрос для таблицы музыкальных исполнителей
INSERT INTO singer(nickname)
VALUES
	('Linkin Park'),
	('The Beatles'),
	('Kanye West'),
	('Eminem'),
	('The Prodigy'),
	('Justin Bieber');

-- Запрос для таблицы альбомы
INSERT INTO album(album_name, year)
VALUES
	('Meteora', 2003),
	('The Day Is My Enemy', 2015),
	('The Eminem Show', 2002),
	('My World 2.0', 2010),
	('Changes', 2021);

-- Запрос для таблицы с треками
INSERT INTO track(track_name, duration, albim_id)
VALUES
	('Numb', '00:03:08', 1),
	('From the Inside', '00:02:56', 1),
	('Nasty', '00:04:03', 2),
	('Wild Frontier', '00:04:28', 2),
	('Without Me', '00:04:51', 3),
	('White America', '00:05:25', 3),
	('That Should Be Me', '00:03:53', 4),
	('Come Around Me', '00:03:21', 5)
	('A Place for My Head', '00:03:05', 1);

-- Запрос для таблицы с коллекциями
INSERT INTO collection(name, year)
VALUES
	('00s Rock Anthems', 2020),
	('Live 8', 2019),
	('Best Of The Best', 2010),
	('White America', 2020);

-- Запрос на заполнение таблицы треков - коллекций
INSERT INTO tracks_collections(collection_id, track_id)
VALUES
	(1, 1),
	(2, 2),
	(2, 3),
	(3, 7),
	(3, 8),
	(4, 5),
	(4, 4),
	(4, 6);

-- Запрос на заполнение таблицы альбомы - исполнители
INSERT INTO albums_singers(album_id, singer_id)
VALUES
	(1, 2),
	(2, 6),
	(3, 5),
	(4, 7),
	(5, 7);

-- Запрос для таблицы жанр - исполнители
INSERT INTO genres_singers(genre_id, singer_id)
VALUES
	(1, 2),
	(1, 3),
	(2, 4),
	(2, 5),
	(4, 6),
	(5, 7);
