// 1, 2,2,4
select sku, date, sum(qty), rank() OVER (PARTITION by sku ORDER BY sum(qty) desc) AS rank

// 1, 2,2,3
select sku, date, sum(qty), dense_rank() OVER (PARTITION by sku ORDER BY sum(qty) desc) AS rank
