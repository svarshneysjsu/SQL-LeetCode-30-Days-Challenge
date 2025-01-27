select name from SalesPerson where not exists
(
    select 1
    from Company c left join Orders o on c.com_id = o.com_id 
    where c.name = 'RED' AND o.sales_id = SalesPerson.sales_id
)


