use project1_sql;

-- Weekday vs Weekend Payment 
-- KPI 1
select 
case when dayofweek(str_to_date(o.order_purchase_timestamp,'%Y-%m-%d'))
IN (1,7) then 'weekend' else 'weekday' 
end as DayType,
count(Distinct o.order_id) as Totalorders,
round(sum(p.payment_value)) as TotalPayments,
round(avg(p.payment_value)) as AveragePayment
from olist_orders_dataset o
join olist_order_payments_dataset p ON o.order_id = p.order_id
group by DayType;


-- Average Price and Payment values from customers of sao paulo city
-- KPI 2
select count(distinct c.customer_id) as Total_Customers,(AVG(i.price)) as average_price,
round(avg(p.payment_value)) as average_payment
from
olist_customers_dataset c
join olist_orders_dataset o on c.customer_id=o.customer_id
join olist_order_items_dataset i on o.order_id=i.order_id
join olist_order_payments_dataset p on o.order_id=p.order_id
where c.customer_city="Sao Paulo";


-- Order Status and Price with no of orders
-- KPI 3
select order_status,count(distinct o.order_id) as Total_Orders,round(sum(price)) as Price 
from olist_orders_dataset o
join olist_order_items_dataset i on o.order_id=i.order_id group by order_status;

-- seller state and top 10 freight value
-- KPI 4
select distinct seller_state,round(sum(freight_value)) as Freight_Value
from olist_sellers_dataset s
join olist_order_items_dataset o on s.seller_id=o.seller_id
group by seller_state order by freight_value desc limit 10;

-- Payment type wise avg payment by no of customers
-- KPI 5
select p.payment_type,count(distinct(o.customer_id)) as "Total Customers",
avg(p.payment_value) as "Avg_payment"
from olist_order_payments_dataset p  
join olist_orders_dataset o on p.order_id=o.order_id
group by p.payment_type;


-- Cities having at least 500 customers
-- KPI 6
 -- with city1 as(
select customer_city, count(customer_unique_id) as no_of_Customers
from olist_customers_dataset group by customer_city
having count(customer_unique_id) >500
order by no_of_Customers desc;
-- )select count(*) from city1;

-- count the no of sellers,cities,states
-- KPI 7
select count(distinct seller_id) as Total_sellers,
count(distinct seller_city) as Total_Cities,
count(distinct seller_state) as Total_States
from olist_sellers_dataset;

-- Top 10 product category count
-- KPI 8
select c.product_category_name_english,count(p.product_id) as Total_products
from product_category_name_translation c
join olist_products_dataset p on c.ï»¿product_category_name=p.product_category_name
group by product_category_name_english
order by Total_products desc limit 10;


-- Average approval time
-- KPI 9
select avg(order_purchase_timestamp-order_approved_at) as "Avg_approval_time"
from olist_orders_dataset;

-- Max price on order items
-- KPI 10
select order_item_id, max(price) from olist_order_items_dataset
group by order_item_id;



