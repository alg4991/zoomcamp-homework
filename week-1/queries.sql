-- question 3
-- ANS: trip_number=53024
select 
	count(*) as trip_number 
from 
	yellow_taxi_data 
where date(tpep_pickup_datetime) = '2021-01-15';

-- question 4 
-- ANS: date=2021-01-20; amount=1140.44
select  date(ytd.tpep_pickup_datetime) as start_date, ytd.tip_amount
from 
	yellow_taxi_data ytd
order by ytd.tip_amount desc;

-- question 5 
-- ANS: 236 -> Upper East Side North
select ytd."DOLocationID" as destination, count(*) quantity
from 
	yellow_taxi_data ytd
where
	ytd."PULocationID" = 43
group by ytd."DOLocationID" 
order by quantity desc;

-- question 6
-- ANS: origin=4 -> Alphabet City ; destination=265 -> Unkown; avg_total_amount=2292.4
select ytd."PULocationID" as origin, ytd."DOLocationID" as destination, AVG(ytd.total_amount) as avg_total_amount
from 
	yellow_taxi_data ytd
group by 
	origin, destination
order by 
	avg_total_amount desc;
