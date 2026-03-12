🍕 Pizza Sales Analysis Dashboard
📊 Project Overview

This project analyzes pizza sales performance using SQL and Power BI to identify key revenue drivers, product demand, and customer ordering patterns.
The dashboard provides insights into sales trends, top-performing products, and category contribution.

🛠 Tools Used
SQL – Data exploration and KPI calculation
Power BI – Interactive dashboard and visualization
DAX – Business metric calculations
Excel – Dataset storage

📈 Key KPIs
Total Revenue: 817.86K
Total Orders: 21,350
Total Pizzas Sold: 49,574
Average Pizzas per Order: 2.32
Average Order Value: 38.31

📊 Dashboard Insights
Friday recorded the highest order volume.
July and January showed peak monthly demand.
Classic category generated the highest sales.
Large pizzas contributed the largest share of revenue.
Some products such as Brie Carre pizza showed consistently low performance across revenue, orders, and quantity.

📷 Dashboard Preview
Sales Overview
Best & Worst Sellers

📐 Sample DAX Measures
Total Revenue = SUM(pizza_sales[total_price])
Total orders = DISTINCTCOUNT(pizza_sales[order_id])
Total pizza sold = SUM(pizza_sales[quantity])
Average pizza per order = [Total pizza sold] / [Total orders]
Avg order value = [Total Revenue] / [Total orders]

🗄 Example SQL Query
SELECT SUM(total_price) AS Total_Revenue
FROM pizza_sales;
