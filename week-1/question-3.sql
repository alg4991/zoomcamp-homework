-- question 3
-- ANS: trip_number=53024
select 
	count(*) as trip_number 
from 
	yellow_taxi_data 
where date(tpep_pickup_datetime) = '2021-01-15';