CREATE TABLE IF NOT EXISTS Music_Genre (
	genre_id SERIAL PRIMARY KEY,
	music_genre_name VARCHAR(50) NOT NULL
);

CREATE TABLE IF NOT EXISTS Singer (
	singer_id SERIAL PRIMARY KEY,
	nickname VARCHAR(100) NOT NULL
);

CREATE TABLE IF NOT EXISTS Genres_Singers (
	genre_id INTEGER REFERENCES Music_Genre(genre_id),
	singer_id INTEGER REFERENCES Singer(singer_id),
	CONSTRAINT PK_GenresSingers PRIMARY KEY (genre_id, singer_id)
);

CREATE TABLE IF NOT EXISTS Album (
	album_id SERIAL PRIMARY KEY,
	album_name VARCHAR(100) NOT NULL,
	year INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS Albums_Singers (
	album_id INTEGER REFERENCES Album(album_id),
	singer_id INTEGER REFERENCES Singer(singer_id),
	CONSTRAINT PK_AlbumsSingers PRIMARY KEY (album_id, singer_id)
);

CREATE TABLE IF NOT EXISTS Track (
	track_id SERIAL PRIMARY KEY,
	track_name VARCHAR(100) NOT NULL,
	duration TIME NOT NULL,
	albim_id INTEGER REFERENCES Album(album_id)
);

CREATE TABLE IF NOT EXISTS Collection (
	collection_id SERIAL PRIMARY KEY,
	name VARCHAR(100) NOT NULL,
	year INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS Tracks_Collections (
	collection_id INTEGER REFERENCES Collection(collection_id),
	track_id INTEGER REFERENCES Track(track_id),
	CONSTRAINT PK_TracksCollections PRIMARY KEY (track_id, collection_id)
);
