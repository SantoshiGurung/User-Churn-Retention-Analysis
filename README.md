# User-Churn-Retention-Analysis
User Churn & Retention Analysis: Attrition Behavior Mapping

Project Goal
The objective of this capstone project is to analyze user activity patterns to understand why customers cancel their subscriptions. By cross-referencing account statuses with monthly activity logs, this analysis isolates core behavioral indicators of user attrition (churn) to help the product team design better retention strategies.

Core Analysis & Logic

Post-Attrition User Engagement
I engineered a two-table join logic to isolate users who officially closed their accounts but still logged into the platform during the billing cycle. Identifying this specific segment helps the product team investigate technical tracking bugs or targeted win-back email campaigns.

Active User Engagement Cohorts
Using multi-tier CASE WHEN logic combined with table joins, I built an engagement classification matrix for active subscribers. By separating high-frequency users from inactive users who show zero monthly logins, this analysis flags accounts that are behaviorally decaying and highly vulnerable to churning.

Executive Cohort Summary
I utilized an advanced Common Table Expression (CTE) to structuralize our user tiers before running a secondary aggregation query. This rolls up thousands of individual active users into an optimized summary table showing the exact volume of customers in each category, highlighting exactly how many users require urgent marketing intervention.

Technical Skills Applied
- Relational Operations: Multi-table INNER JOIN executions mapping user states to log volumes.
- Data Filtering: Applying multi-conditional WHERE clauses with strict case-sensitive string matching. 
