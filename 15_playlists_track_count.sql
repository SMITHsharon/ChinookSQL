/*Provide a query that shows the total number of tracks in each playlist. 
The Playlist name should be include on the resultant table.*/
select p.[name],
	count (*) as TrackCount
from [Playlist] as p
JOIN [PlaylistTrack] as plt on p.[PlaylistId] = plt.[PlaylistId]
JOIN [Track] as t on t.[TrackId] = plt.[TrackId]
Group By t.Name