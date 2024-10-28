-- В какие города летал Bruce Willis
-- Поля в результирующей таблице:
-- town_to

SELECT  town_to FROM Trip
JOIN Pass_in_trip ON Trip.id=Pass_in_trip.trip
JOIN Passenger on Pass_in_trip.passenger=Passenger.id
WHERE Passenger.name='Bruce Willis'