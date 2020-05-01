/* tracks_no_id.sql: Provide a query that shows all the Tracks, but displays no IDs.
The result should include the Album name, Media type and Genre. */

SELECT Track.Name AS SongName, Album.Title AS AlbumName, Genre.Name AS Genre, MediaType.Name AS MediaType 
FROM Track
JOIN MediaType ON MediaType.MediaTypeId = Track.MediaTypeId
JOIN Genre ON Genre.GenreId = Track.GenreId
JOIN Album ON Album.AlbumId = Track.AlbumId
JOIN Artist ON Artist.ArtistId = Album.ArtistId;