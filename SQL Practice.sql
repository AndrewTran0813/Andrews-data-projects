SELECT *
FROM divy01
UPDATE divy01
SET rideable_type = UPPER(rideable_type)
DELETE FROM divy01
WHERE start_station_name IS NULL
ALTER TABLE divy01
ADD Derp Nvarchar
SET ANSI_WARNINGS OFF
UPDATE divy01
SET Derp= CONCAT(rideable_type, member_casual)
WHERE Derp IS NULL
SET ANSI_WARNINGS ON
SELECT CONCAT(member_casual, rideable_type), Ride_length
FROM divy01
WHERE Ride_length IS NOT NULL
AND member_casual IS NOT NULL
AND rideable_type IS NOT NULL
ORDER BY Ride_length
ALTER TABLE divy01
DROP COLUMN Derp
SELECT *
FROM divy01
WHERE ride_id IS NULL
OR rideable_type IS NULL
OR started_at IS NULL
OR ended_at IS NULL
OR start_station_name IS NULL
OR start_station_id IS NULL
OR end_station_name IS NULL
OR end_station_id IS NULL
OR start_lat IS NULL
OR start_lng IS NULL
OR end_lat IS NULL
OR end_lng IS NULL
OR member_casual IS NULL
OR Ride_length IS NULL
OR day_of_week IS NULL
DELETE FROM divy01
WHERE ride_id IS NULL
OR rideable_type IS NULL
OR started_at IS NULL
OR ended_at IS NULL
OR start_station_name IS NULL
OR start_station_id IS NULL
OR end_station_name IS NULL
OR end_station_id IS NULL
OR start_lat IS NULL
OR start_lng IS NULL
OR end_lat IS NULL
OR end_lng IS NULL
OR member_casual IS NULL
OR Ride_length IS NULL
OR day_of_week IS NULL
SELECT *
FROM divy02
ALTER TABLE divy02
DROP COLUMN avg_ride_length, most_common_day, max_ride_length
SELECT *
FROM divy02
WHERE ride_id IS NULL
OR rideable_type IS NULL
OR started_at IS NULL
OR ended_at IS NULL
OR start_station_name IS NULL
OR start_station_id IS NULL
OR end_station_name IS NULL
OR end_station_id IS NULL
OR start_lat IS NULL
OR start_lng IS NULL
OR end_lat IS NULL
OR end_lng IS NULL
OR member_casual IS NULL
OR Ride_length IS NULL
OR day_of_week IS NULL
DELETE FROM divy02
WHERE ride_id IS NULL
OR rideable_type IS NULL
OR started_at IS NULL
OR ended_at IS NULL
OR start_station_name IS NULL
OR start_station_id IS NULL
OR end_station_name IS NULL
OR end_station_id IS NULL
OR start_lat IS NULL
OR start_lng IS NULL
OR end_lat IS NULL
OR end_lng IS NULL
OR member_casual IS NULL
OR Ride_length IS NULL
OR day_of_week IS NULL
SELECT *
FROM divy01
UNION
SELECT *
FROM divy02
SELECT *
FROM divy01
INNER JOIN divy02 ON divy01.member_casual = divy02.member_casual
INSERT INTO  divy01
SELECT *
FROM divy02
