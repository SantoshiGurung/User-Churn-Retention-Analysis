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
