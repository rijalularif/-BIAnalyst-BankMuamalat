SELECT
    Date AS order_date,
    CategoryName AS category_name,
    ProdName AS product_name,
    Price AS product_price,
    Quantity AS order_qty,
    (Price * Quantity)AS total_sales,
    CustomerEmail AS cust_email,
    CustomerCity AS cust_city
FROM `penjualan.orders` o
LEFT JOIN `penjualan.customers` c
    ON o.CustomerID = c.CustomerID
LEFT JOIN `penjualan.products` p
    ON o.ProdNumber = p.ProdNumber
LEFT JOIN `penjualan.productcategory` pc
    ON p.Category = pc.CategoryID
ORDER BY Date