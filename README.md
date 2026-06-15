# DecodeLabs Data Analytics Internship — Project 3


## Project Overview 


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


---

## Key Findings

**Product Revenue**


- Chairs and Printers contributed the highest total revenue, with Printer also showing strong customer demand
- Laptop had the highest average order value at **1,110.56**
- Phone generated the least revenue and may benefit from promotions

**Payment Methods**
- Online was the most frequently used method
- Credit Card produced the **highest total revenue** despite ranking third in usage — volume ≠ value

**Referral Sources**
- Instagram led in both order count (259) and total revenue
- Facebook customers spent the **most per order** on average
- Word-of-mouth Referral had the lowest performance — opportunity for a referral incentive programme

**Order Status**
- Less than 20% of orders were Delivered
- Over **41% were Cancelled or Returned** — a significant fulfilment issue worth investigating
- Cancellations alone put $276,396 in revenue at risk



---

**Creating Table**

<img width="1563" height="871" alt="1000770239" src="https://github.com/user-attachments/assets/dfed3991-f190-40af-a945-b995ffa53140" />


**Which product generates the most revenue?**


<img width="930" height="475" alt="1000770238" src="https://github.com/user-attachments/assets/d00ff630-63ce-40fc-b9d3-31565daad504" />

**Which payment method is used the most?**

<img width="959" height="500" alt="1000770237" src="https://github.com/user-attachments/assets/0efec8cd-d6bf-490d-8ebd-38171e555ac2" />


**Which referral source drives the highest revenue?**

<img width="1919" height="1005" alt="1000770240" src="https://github.com/user-attachments/assets/6eeb20ee-8d53-495b-bbeb-d59d3f6642e0" />



**What is the breakdown of order statuses?**

<img width="959" height="539" alt="1000770340" src="https://github.com/user-attachments/assets/9821176d-a49e-4a56-a174-67e66a2e878f" />



**Using Where clause**

<img width="945" height="481" alt="1000770241" src="https://github.com/user-attachments/assets/03579670-96f9-4ebc-b214-a1779e02c92b" />



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


