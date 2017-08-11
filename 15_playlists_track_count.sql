/*Provide a query that shows the total number of tracks in each playlist. 
The Playlist name should be include on the resultant table.*/
select 
	p.[name] as PlaylistName,
	count (*) as TrackCount
from [Playlist] as p
join [PlaylistTrack] as plt on plt.[PlaylistId] = p.[PlaylistId]
join [Track] as t on t.[TrackId] = plt.[TrackId]
group by p.Name


