-- View the menu_items table and write a query to find the number of items on the menu

select *
from menu_items ;

-- What are the least and most expensive items on the menu?

Select  menu_item_id , price
from menu_items
order by price;


Select  menu_item_id , price
from menu_items
order by price desc;


-- How many Italian dishes are on the menu? What are the least and most expensive Italian dishes on the menu?

select Category , Min(Price) , max(price)
from menu_items
where category='Italian'
group by category;


-- How many dishes are in each category? What is the average dish price within each category?

select Category , count(menu_item_id) , avg(price)
from menu_items
group by category;

-- View the order_details table. What is the date range of the table?

select *
from order_details;

-- How many orders were made within this date range? How many items were ordered within this date range?

select Count(order_details_id)
from order_details;

select order_date ,count(order_details_id)
from order_details
group by order_date;

-- Which orders had the most number of items?

select order_id , count(item_id)
from order_details
group by order_id
order by Count(item_id) desc;

-- How many orders had more than 12 items?
select Count(*)
from(select order_id , count(item_id)
from order_details
group by order_id
having Count(item_id) > 12) as Order_items;

-- Combine the menu_items and order_details tables into a single table

select *
from menu_items , order_details
where menu_item_id=item_id ;

-- What were the least and most ordered items? What categories were they in?

select item_id , count(order_details_id) , category
from menu_items,order_details
where menu_item_id=item_id
group by item_id ;

-- What were the top 5 orders that spent the most money?

select order_id , Count(item_id) , sum(price)
from menu_items,order_details
where menu_item_id=item_id
group by order_id 
order by sum(price) desc
limit 5;

-- View the details of the highest spend order. Which specific items were purchased?

select order_id , Count(item_id) , sum(price)
from menu_items,order_details
where menu_item_id=item_id
group by order_id 
order by sum(price) desc
limit 1;
