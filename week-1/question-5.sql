-- question 5 
-- ANS: 236 -> Upper East Side North
select ytd."DOLocationID" as destination, count(*) quantity
from 
	yellow_taxi_data ytd
where
	ytd."PULocationID" = 43
group by ytd."DOLocationID" 
order by quantity desc;