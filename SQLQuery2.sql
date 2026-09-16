

CREATE VIEW Customer_Analytics
AS
SELECT
      *

      -- Period (Total Dayes from sing in to last date)
      ,DATEDIFF(DAY, registration_date, '2026-04-1') AS Periode_days

      -- Return Rate
      ,returns_made * 1.0 / NULLIF(total_orders, 0) AS customer_return_rate

      -- Value Segment
      ,CASE
        WHEN total_spend_usd >= 1387.30 THEN 'High Value'
        WHEN total_spend_usd >= 474.47 THEN 'Medium Value'
        ELSE 'Low Value'
      END AS value_segment

      -- Recency Segment
      ,CASE
        WHEN days_since_last_purchase <= 16 THEN 'Recent'
        WHEN days_since_last_purchase <= 41 THEN 'Active'
        WHEN days_since_last_purchase <= 84 THEN 'At Risk'
        ELSE 'Inactive'
      END AS recency_segment

      -- Risk Segment
      ,CASE
        WHEN days_since_last_purchase > 84 THEN 'High Risk'
        ELSE 'Low Risk'
      END AS risk_segment

      -- High-Value At-Risk Flag
      ,CASE
        WHEN total_spend_usd >= 1387.30
             AND days_since_last_purchase > 84
        THEN 1 ELSE 0
      END AS high_value_at_risk_flag

      -- Age Group
      ,CASE
        WHEN age < 25 THEN '18-24'
        WHEN age < 35 THEN '25-34'
        WHEN age < 45 THEN '35-44'
        WHEN age < 55 THEN '45-54'
        ELSE '55+'
      END AS age_group

FROM [Customer].[dbo].[E-Commerce Customer Behavior & Sales Data];