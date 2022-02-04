create table if not exists singer (
	id serial primary key,
	name_alias varchar(50) not null,
	genre integer
);

create table if not exists albums (
	id serial primary key,
	genre integer,
	release_year integer,
	artist_id integer,
	track_title varchar (50) not null,
	track_id integer,
	singer_id integer references singer(id)
);

create table if not exists tracks (
	id serial primary key,
	song_length text not null,
	song_title varchar (40) not null,
	albums_id integer references albums(id)
);

create table if not exists genre (
	id serial primary key,
	singers integer,
	title text not null,
	genre_id integer references singer(id)
);