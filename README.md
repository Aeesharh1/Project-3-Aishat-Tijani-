# 🛒 E-Commerce Sales Analysis with SQL
### DecodeLabs Data Analytics Internship — Project 3

This project was part of my Data Analytics internship at DecodeLabs. I was given a real e-commerce dataset and tasked with writing SQL queries.
---

## Dataset

| Detail | Info |
|---|---|
| File | `Dataset_for_Data_Analytics.csv` |
| Records | 1,200 transactions |
| Columns | 14 |
| Period | 2023 – 2025 |

**Columns include:** `OrderID`, `Date`, `CustomerID`, `Product`, `Quantity`, `UnitPrice`, `TotalPrice`, `PaymentMethod`, `OrderStatus`, `ReferralSource`, `CouponCode`, `ItemsInCart`, `ShippingAddress`, `TrackingNumber`

---

## Business Questions Answered

1. Which product generates the most revenue?
2. Which payment method is most commonly used?
3. Which referral source drives the most orders and revenue?
4. What is the breakdown of order statuses?
5. How does quantity sold correlate with revenue across products?

---

## 🔍 Key Findings

** Product Revenue**
- Chairs and Printers contributed the highest total revenue, with Printer also showing strong customer demand
- Laptop had the highest average order value at **$1,110.56**
- Phone generated the least revenue and may benefit from promotions

** Payment Methods**
- Online was the most frequently used method
- Credit Card produced the **highest total revenue** despite ranking third in usage — volume ≠ value

** Referral Sources**
- Instagram led in both order count (259) and total revenue
- Facebook customers spent the **most per order** on average
- Word-of-mouth Referral had the lowest performance — opportunity for a referral incentive programme

** Order Status**
- Less than 20% of orders were Delivered**
- Over **41% were Cancelled or Returned** — a significant fulfilment issue worth investigating
- Cancellations alone put $276,396 in revenue at risk

**📈 Quantity vs Revenue**
- Strong positive correlation confirmed across all 7 product categories
- Supports bundle and bulk-discount strategies

---

##  SQL Concepts Used

```sql
-- Example: Revenue by product
SELECT Product,
       COUNT(*) AS total_orders,
       SUM(TotalSales) AS total_revenue,
       ROUND(AVG(TotalSales), 2) AS avg_order_value
FROM orders
GROUP BY Product
ORDER BY total_revenue DESC;
```

- `SELECT`, `FROM`, `WHERE`
- `GROUP BY`, `ORDER BY`
- Aggregate functions: `COUNT()`, `SUM()`, `AVG()`
- Subqueries for percentage calculations
- Column aliasing with `AS`

---

## 📂 Files in This Repository

| File | Description |
|---|---|
| [Dataset_for_Data_Analytics.csv](https://docs.google.com/spreadsheets/d/1WUwm2Ts0z1XnCOLD6stS94A1rqvWVCbD/edit?gid=1161090625#gid=1161090625) | Raw e-commerce dataset |
| [queries.sql](queries.sql) | All 5 SQL queries used in the analysis |
| [README.md](README.md) | This file |

---

## 💡 What I Learned

This project taught me that the real work in data analytics isn't just writing correct syntax — it's knowing what question to ask and what the answer actually means for the business. Finding out that only 1 in 5 orders was delivered wasn't just a data point; it was a story about a business that needs to fix its fulfilment process.

---


