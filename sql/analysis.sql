-- 1. Wyświetla nazwę produktu, cenę, całkowitą wartość sprzedaży i miasto klienta.

SELECT Product_Name, Price_USD, Total_Sales_USD, Customer_City
FROM product_sales_dataset
WHERE Product_Name = 'Lipstick'
AND Customer_City = 'Karachi';

-- 2. Wyświetla produkty posortowane według ceny od najwyższej do najniższej.

SELECT Product_Name, Price_USD, Customer_City
FROM product_sales_dataset
ORDER BY Price_USD DESC;

-- 3. Pobiera 10 najpopularniejszych transakcji sprzedaży o łącznej wartości od 2000 do 3000 USD.

SELECT Category, Total_Sales_USD, Customer_City
FROM product_sales_dataset
WHERE Total_Sales_USD BETWEEN 2000 AND 3000
ORDER BY Total_Sales_USD DESC
LIMIT 10;

-- 4. Analizuje produkty sportowe generujące sprzedaż powyżej 1000 USD.

SELECT Product_Name, Category, Total_Sales_USD, Order_Date
FROM product_sales_dataset
WHERE Category = 'Sports'
AND Total_Sales_USD > 1000;

-- 5. Liczy liczbę rekordów w każdej kategorii produktów.

SELECT Category, COUNT(*) AS number_of_products
FROM product_sales_dataset
GROUP BY Category;

-- 6. Oblicza całkowity przychód wygenerowany przez każdą kategorię.

SELECT Category, SUM(Total_Sales_USD) AS total_sales
FROM product_sales_dataset
GROUP BY Category
ORDER BY total_sales DESC;

-- 7. Oblicza średnią wartość sprzedaży dla każdego produktu.

SELECT Product_Name, AVG(Total_Sales_USD) AS avg_sales
FROM product_sales_dataset
GROUP BY Product_Name
ORDER BY avg_sales DESC;
