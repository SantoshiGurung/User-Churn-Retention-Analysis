-- USER CHURN & RETENTION ANALYSIS
-- Author: [Santoshi gurung]
-- Purpose: Analyzing user activity logs to identify behavior patterns leading to account termination.

-- --------------------------------------------------------
-- ANALYSIS 1: POST-ATTRITION USER ENGAGEMENT
-- Identifies users who have officially closed their accounts but still show login activity.
-- --------------------------------------------------------

SELECT 
    subscriptions.user_id, 
    activity_logs.login_count 
FROM subscriptions                 
JOIN activity_logs  
    ON subscriptions.user_id = activity_logs.user_id  
WHERE activity_logs.login_count > 0    
  AND subscriptions.account_status = 'Churned';

-- --------------------------------------------------------
-- ANALYSIS 2: ACTIVE USER ENGAGEMENT COHORTS
-- Categorizes active subscribers into risk and engagement tiers based on login frequency.
-- --------------------------------------------------------

SELECT 
    subscriptions.user_id, 
    activity_logs.login_count, 
    CASE 
        WHEN activity_logs.login_count > 20 THEN 'High Engagement' 
        WHEN activity_logs.login_count >= 1 THEN 'Standard Engagement' 
        ELSE 'At Risk of Churn' 
    END AS engagement_tier 
FROM subscriptions 
JOIN activity_logs 
    ON subscriptions.user_id = activity_logs.user_id
WHERE subscriptions.account_status = 'Active';
