
with hotles as (
SELECT* FROM dbo.[2018]
union
SELECT* FROM dbo.[2019]
union
SELECT* FROM dbo.[2020])
select (stays_in_week_nights+stays_in_weekend_nights)*adr from hotles as Revenue 



--ii our revenue growing by year , so we do SQL analysis

with hotles as(
SELECT* FROM dbo.[2018]
union
SELECT* FROM dbo.[2019]
union
SELECT* FROM dbo.[2020])
select*from hotles


select arrival_date_year,
 sum((stays_in_week_nights+stays_in_weekend_nights)*adr) as Revenue from hotles 
 group by arrival_date_year 

-- we can do by hotel type as well
with hotles as(
SELECT* FROM dbo.[2018]
union
SELECT* FROM dbo.[2019]
union
SELECT* FROM dbo.[2020])
select* from hotles


select arrival_date_year,hotles,
round(sum((stays_in_week_nights+stays_in_weekend_nights)*adr),0) as Revenue from hotles 
 
 group by arrival_date_year ,hotles



with hotles as (
select*from dbo.[2018]
union
select*from dbo.[2019]
union
select*from dbo.[2020])

select*from hotles 
left join market_segment
on hotles.market_segment=market_segment.market_segment
left join dbo.meal_cost
on meal_cost.meal=hotles.meal

---- we can do by Market segment 


select h.lead_time ,h.stays_in_week_nights, h.hotel,t.lead_time ,t.stays_in_week_nights
FROM early_year as h
left join one_year  as t
on h.hotel=t.hotel;
