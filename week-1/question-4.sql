-- question 4 
-- ANS: date=2021-01-20; amount=1140.44
select  date(ytd.tpep_pickup_datetime) as start_date, ytd.tip_amount
from 
	yellow_taxi_data ytd
order by ytd.tip_amount desc;