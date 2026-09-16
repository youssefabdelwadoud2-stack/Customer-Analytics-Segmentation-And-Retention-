Customer Analytics Segmentation And Retention.  
A Full Business Analytics Project Using SQL Server and Tableau.  
To Understand customer value and behavior


<img width="1525" height="1110" alt="Screenshot (148)" src="https://github.com/user-attachments/assets/32fef8b6-fb7c-41d6-8edc-e200e64b4429" />

<img width="1651" height="1071" alt="Screenshot (154)" src="https://github.com/user-attachments/assets/e5125be7-a974-40e8-b832-1c5e9be6629e" />

<img width="1651" height="1089" alt="Screenshot (155)" src="https://github.com/user-attachments/assets/42dd2551-6ec6-49a6-a552-1a87d0102fd7" />

<img width="1639" height="1080" alt="Screenshot (156)" src="https://github.com/user-attachments/assets/0a457f7e-af2c-44d3-9cce-acbc07849634" />

<img width="1888" height="971" alt="Over View 2" src="https://github.com/user-attachments/assets/823f2acc-76b7-440d-826a-da61a4f4e7cc" />

<img width="1888" height="971" alt="Ovar View 1" src="https://github.com/user-attachments/assets/9db266c5-78de-407d-9c8b-fd632bc261b3" />

<img width="1888" height="971" alt="Executive Customer" src="https://github.com/user-attachments/assets/42296ea5-b152-4778-9dca-02b0365063e7" />

<img width="1888" height="971" alt="Customer Behavior" src="https://github.com/user-attachments/assets/5f0c1943-47b4-4e96-b8c5-def2b2da5822" />


Executive Summary

Customer retention isn't just about how many customers churn but to build a full picture of the customers.
The more important business question is:-
  - Who they are? and how much they are worth?
  - How they behave? and who is churning and which of those high value?
  - Which customers are at risk?
  - How valuable they are? 
  - Where retention resources should be focused first?

I used SQL Server to prepare the customer level data and build the analytical features:-
  value group, a behavior group (RFM-style), a risk label, and a "high-value-at-risk" flag.
Tableau to build the dashboards.
This project looks at (8,000) customers who made (132,362) orders and spent a total of ($12,465,161).

The project has Six dashboards: 
  - Two Overview Customer Segmentation Pages (who the customers are?)
  - An Executive Overview (main numbers and segment performance?)
  - A Segmentation And Behavior (RFM-style behavior groups?)
  - A Churn And Retention (where churn happens the most)
  - An At-Risk Customers (where value and risk meet?).

The analysis shows:-
  - The overall (8.94%) churn rate doesn't tell the full story. 
  - Churn changes a lot depending on the behavior group.
  - From (4.91%) for Champions to (29.95%) for Lost customers.
  - The (2,500) High-Value customers make up 31% of the customer base but hold ($9,278,974) about 74% of the total customer value.
  - The most important result of this project is finding (598) High-Value At-Risk customers, a group holding part of the ($3,014,151) in value that sits inside the at-risk customers, these are the customers where retention effort will likely pay off the most.




Business Problem

A customer base can have a fairly normal overall churn rate while still hiding big pockets of business risk.
In this project (8.94%) of customers are churned. But customers don't all bring the same value, and they don't all behave the same way.
The High-Value group has (2,500) customers and brings in ($9,278,974) of the total ($12,465,161) in customer value. On the other hand, 
the Low-Value group has (2,755) customers but brings in only ($652,376).
This creates an important business problem: Should the company treat every churned or at-risk customer the same way?
The analysis says it shouldn't.
A retention plan that targets every at-risk customer equally might spend resources on customers who don't bring in much value, while ignoring the customers who represent bigger financial loss.
At the same time, Customer value alone isn't enough either. A high-value customer isn't automatically at risk, and a low-value customer might show strong signs of being inactive.
So the real analytical question is:
How can we combine customer value and behavior-based risk to find the customers who should get the highest retention priority?


So the project was built around these goals:-
1- Understand the size and makeup of the customer base and how customer value is spread
2- Understand customers behavior and Group Them by behavior using RFM styles.
3- Measure overall churn and break it down by value, membership tier, acquisition channel, and engagement.
4- Find which customer traits are linked to higher churn.
5- Find the customers who are both high-value and high-risk, and give a clear way to prioritize retention effort.

Key Business Questions is:-
1- Understanding Customers
  - Who are our customers, and how are they split by gender, country, device, and acquisition channel?
  - How has the customer base grown over time?
2- Customer Value
  - How is historical customer value spread out?
  - Which value group brings in the biggest share of total customer value?
  - How does customer value differ across behavior groups?
3- Customer Behavior
  - How does purchase frequency relate to customer value?
  - How does recency (days since the last purchase) differ across behavior groups?
  - What do the RFM style groups look like in size and value?
  - Which behavior groups have the highest churn?
4- Churn
  - What is the overall churn rate?
  - Does churn change based on value group, membership tier, or acquisition channel?
  - Is churn linked to engagement behavior?
5- Risk
  - Which customers are both high value and At risk?
  - How much value is inside the at risk group?
  - Where should retention efforts be focused first?





Skills And Methodology


Methodology:- 
1- SQL query that extract, clean, and transform the data from the data 
2- Tableau for data modeling and build a dashboard 

Skills:- 
1- SQL : ETL, Views, Case, Aggregation Functions 
2- Tableau : Data Modeling, Calculated Columns, Data Visualizations 

SQL Server
  - Cleaning and preparing customer data
  - Building customer-level metrics:-
      recency (days since last purchase), frequency (total orders), monetary value (total customer value / average order value)
  - Building category groups with rules:-
      Value Group (High/Medium/Low),
      RFM-style Group (Champions/Loyal Customers/Potential Loyalists/At Risk/Lost), 
      recency-based Customer Group (Recent/Active/At Risk/Inactive),
      simple Risk Label (High Risk/Low Risk)
  - Building a combined "High-Value At-Risk" flag using both value and risk rules

Tableau
  - Designing Six connected dashboards (Two Segmentation Overview Page, Executive Overview, Segmentation and Behavior, Churn, At-Risk)
  - Building KPI cards
  - Bar charts, donut/pie charts, scatter/box plots, and comparison tables
  - Filter panels for each dashboard (like Country, Gender, Membership Tier, Acquisition Channel, RFM Group, Risk Group)
  - Keeping the same visual style and layout across all dashboards for a connected story


The analytical method includes:-

  - Customer grouping (by value, behavior, recency, and risk).
  - RFM style behavior grouping.
  - Churn analysis across several business areas.
  - Risk-and-value analysis (High-Value At-Risk).
  - Descriptive retention analysis.



Steps of the Project:-
  - Cleaned and combined raw customer and order data in SQL Server.
  - Building Customer Analytics View.
  - Segmentation Customers into Groups (Value, RFM style, and a recency-based).
  - Measured churn overall and by value group, membership tier, acquisition channel, and engagement.
  - Built a simple Risk Label.
  - Created live connection with SQL server and Tableau.
  - Calculated some measures on Tableau.
  - Put all the built into five dashboards designed to guide the reader from (what's happening) to (who should we act on).





Results
       
   1- Customer value is heavily concentrated
     High-Value customers are (2,500) customers, about 31% of the base, but hold ($9,278,974), about 74% of the total historical customer value.
     That mean: protecting this group matters much more than average.

   2- Churn is not spread evenly by customer value
     Low-Value customers have a (13.61%) churn rate, compared to (6.44%) for High-Value customers.
     That mean: the highest churn rate isn't necessarily where the biggest financial risk is.


   3- Behavior grouping shows a strong churn pattern
     Churn goes from: (4.91% Champions) to (29.95% Lost)
     That mean: behavior grouping gives a much more useful view than just the overall churn number.
 
   4- (598) customers combine high value and high risk
     The project finds (598) High Value At Risk customers.
     That mean: this creates a specific, manageable group to prioritize, instead of treating all (1,986) high risk customers the same.
    
   5- Review behavior has the strongest engagement link
     Customers with reviews show (6.50% churn), compared to (16.10%) for customers without reviews.
     That mean: review behavior is a strong candidate to investigate further as an engagement signal.
  
   6- Gold membership has the highest churn
     Gold customers have a (9.86% churn rate), compared to (8.23% for Platinum) and (7.09% for Silver).
     That mean: We needs to study Gold tier  instead of assuming membership benefits automatically improve retention.

   7- RFM loyalty and inactivity risk aren't the same thing
     The High Risk group has (483) customers classified as Loyal Customers by the RFM style grouping.
     That mean: customer outreach should look at more than one grouping method, not just one classification alone.

   8- Acquisition channel is a fairly weak churn factor
     Churn only ranges from (8.11% to 9.94%) across acquisition channels.
     That mean: improving retention by channel seems less useful than targeting by value and behavior in this data.




Strategic Recommendations

  1- Focus on High-Value At-Risk Customers first
     Target - 598 High-Value At-Risk customers
     Reason - These customers combine high past value with high risk.
     Goal   - Put retention resources first toward the customers with the biggest combination of value and risk.
     
  2- Use RFM style groups to prioritize campaigns
     Target - Focus on: - RFM At Risk  - Lost   - High/Medium Value customers within those groups
     Reason - RFM-style groups show a strong churn pattern from Champions to Lost.
     Goal   - Build different retention strategies instead of using one single campaign for everyone.

  3- Look into Gold Membership Churn
     Target - Gold membership customers.
     Reason - Gold has the highest churn rate at (9.86%).
     Goal   - Find out whether Gold Membership customers have issues with:
              (Membership benefits, Pricing, Expectations, Onboarding, Engagement)

  4- Look into Review Behavior as a Retention Signal
     Target - Customers with no reviews, especially those in valuable or developing behavior groups.
     Reason - The churn gap is large: between (16.10% to 6.50%)
     Goal   - Find out whether review activity can be used as a sign of engagement, and whether encouraging reviews has any real effect on retention.
   
  5- Don't Treat Risk and RFM Groups as the Same Thing
     Target - Customers who show up in different classifications at the same time, like (483 Loyal Customers who also High-Risk group)
     Reason - This overlap shows that loyalty and inactivity are two different things.
     Goal   - Avoid sending the same aggressive win-back campaign to every customer labeled high risk.
          
        
         
Next Steps
      
  1- Transaction level RFM analysis (SQL) - Bring in individual order history to calculate true transaction-level: Recency, Frequency, Monetary Value
            This would make behavior grouping more precise.
  
  2- Cohort Retention Analysis - Look at retention based on when customers signed up.
            This would answer: How does retention change across different sign-up periods?

  3- True Customer Lifetime Value - Replace past spending with a forward looking CLV model 
           that includes expected future behavior.

  4- Predictive Churn Modeling - Move from (Who has already churned?) to (Which currently active customers are most likely to churn?)

  5- Customer Propensity Scoring - Replace the simple yes/no risk label with a continuous score that ranks customers.
  
  6- Retention Campaign Measurement - Connect the dashboard to real CRM campaigns and measure whether targeted actions actually improve retention.

  7- A/B Testing - Test retention actions such as - Personalized offers, Review prompts, Loyalty rewards, engagement campaigns
           This would let the business tell the difference between (correlation and real cause and effect).
