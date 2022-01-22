-- question 6
-- ANS: origin=4 -> Alphabet City ; destination=265 -> Unkown; avg_total_amount=2292.4
select ytd."PULocationID" as origin, ytd."DOLocationID" as destination, AVG(ytd.total_amount) as avg_total_amount
from 
	yellow_taxi_data ytd
group by 
	origin, destination
order by 
	avg_total_amount desc;
