This document provides an overview of the E-Commerce Olist Store Analysis. The analysis focuses on various key performance indicators (KPIs) to understand the sales patterns, customer behavior, and operational efficiency of the Olist e-commerce platform. 

**Introduction**

Olist is a Brazilian e-commerce company that operates as a department store platform, managing the sales process between shopkeepers and clients. 
It provides client satisfaction reports, market presence, and transparent reputation metrics. 
Olist sells products directly to customers through its logistics network.

**Data Description**

The dataset contains nearly 100,000 orders from the Brazilian market between 2016 and 2018. 
It includes multiple dimensions such as order status, payment price, product attributes, freight performance, customer location, and review scores.

**The dataset is divided into nine interconnected tables:**

Olist_Customers_Dataset

Olist_Geolocation_Dataset

Olist_Order_Item_Dataset

Olist_Order_Payment_Dataset

Olist_Order_Review_Dataset

Olist_Order_Dataset

Olist_Product_Dataset

Olist_Seller_Dataset

Olist_Product_Category_Name_Dataset

**Key Performance Indicators (KPIs)**

KPI 1: Weekday vs. Weekend - Total Payment Value
Total Payments: 13.59M
Weekday Payments: 3.09M (23%)
Weekend Payments: 10.5M (77%)
Recommendations: Provide offers and discounts on weekdays to balance payment values across the week.

KPI 2: Top 5 Cities by Customer
Total Customers: 99.44K
Top City: Sao Paulo
Recommendations: Focus on improving purchases and delivery processes in Sao Paulo.

KPI 3: Top 10 Product Categories by Sales
Top Category: Health and Beauty
Recommendations: Offer discounts and maintain product quality in top-selling categories.

KPI 4: Total Orders by Order Status
Delivered: 96,478
Shipped: 1,107
Cancelled: 625
Unavailable: 609
Invoiced: 314
Processing: 301
Created: 5
Approved: 2
Recommendations: Focus on improving delivery processes to ensure all orders are successfully delivered.

KPI 5: Average Review Score
Average Review Score: 4.09
Recommendations: Improve shipping times and maintain high product quality to enhance customer satisfaction.

**Analytical Tools and Dashboards**

**Excel Dashboard**

An Excel-based dashboard visualizing key metrics and trends.

**Power BI Dashboard**

A Power BI dashboard offering interactive data visualizations and insights.

**Tableau Dashboard**

A Tableau dashboard providing advanced data visualization for in-depth analysis.

**SQL**

SQL queries were used to extract and analyze data from the dataset.

**Challenges Faced**

**Null Values**

Null values were found in the order and review datasets. These were replaced with appropriate numerical values or strings.

**Duplicate Values**

Duplicate entries in the geolocation dataset were removed using the "Remove duplicates" option in Power Query.

**Building Relationships**

To solve KPIs, data from multiple tables were merged using common columns, with the "Order items" table acting as a support table.

**Conclusion**

By addressing business KPIs, the analysis provides insights into regional spending, delivery processes, and customer satisfaction. 
This knowledge helps guide Olist in optimizing growth opportunities within their e-commerce platform. 
The project enhanced the team's expertise in e-commerce metrics, Power BI DAX, and data modeling. Data cleaning and statistical methods were applied to solve the KPIs effectively.





