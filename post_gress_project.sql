 select
    c.cust_name,
    o1.ord_date,
    p.p_name,
	p.price,
    o.quantity, 
     (o.quantity*p.price) as total_price 
 from order_items o
   JOIN products p on o.p_id=p.p_id
   join orders o1 on o1.ord_id = o.ord_id
   join customers c on o1.cust_id = c.cust_id