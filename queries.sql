USE decodelab;
CREATE TABLE orders (
    OrderID         VARCHAR(20),
    Date            VARCHAR(15),
    CustomerID      VARCHAR(15),
    Product         VARCHAR(50),
    Quantity        INT,
    UnitPrice       DECIMAL(10,2),
    ShippingAddress VARCHAR(100),
    PaymentMethod   VARCHAR(30),
    OrderStatus     VARCHAR(20),
    TrackingNumber  VARCHAR(20),
    ItemsInCart     INT,
    CouponCode      VARCHAR(20) DEFAULT 'NONE',
    ReferralSource  VARCHAR(30),
    TotalSales      DECIMAL(10,2)
);
SELECT * FROM orders;

--- Which product generates the most revenue?
SELECT
    Product,
    COUNT(*)              AS total_orders,
    SUM(TotalSales) AS total_revenue,
    ROUND(AVG(TotalSales), 2)   AS avg_order_value
FROM orders
GROUP BY Product
ORDER BY total_revenue DESC;

--- Which payment method is most commonly used?
SELECT
    PaymentMethod,
    COUNT(*)              AS order_count,
    ROUND(SUM(TotalSales), 2)   AS total_revenue,
    ROUND(COUNT(*) * 100 / (SELECT COUNT(*) FROM orders), 2) AS pct_share
FROM orders
GROUP BY PaymentMethod
ORDER BY total_revenue DESC;


--- Which referral source drives the most orders and revenue?
SELECT
    ReferralSource,
    Count(*)                    AS order_count,
    ROUND(SUM(TotalSales), 2)    AS total_revenue,
    ROUND(AVG(TotalSales), 2)     AS avg_order_value
FROM orders
GROUP BY ReferralSource
ORDER BY total_revenue DESC;

--- How does quantity sold correlate with revenue per product?
SELECT Product,
       Quantity,
       COUNT(*) AS order_count,
       ROUND(AVG(TotalSales), 2) AS avg_revenue
FROM orders
GROUP BY Product, Quantity
ORDER BY avg_revenue;
--- Total Revenue
SELECT Sum(TotalSales)  AS total_revenue
FROM orders;

SELECT Count(*) AS No_of_orders
FROM orders;

SELECT Product, 
SUM(TotalSales)              AS total_revenue,
ROUND(AVG(TotalSales), 2)    AS avg_order_value
FROM orders
WHERE OrderStatus = 'Shipped'
GROUP BY Product
Order BY total_revenue;
