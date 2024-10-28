USE divar_data;     
SELECT 
    source_event_id,
    (SUM(CASE WHEN action = 'click_post' THEN 1 ELSE 0 END) * 100.0 / COUNT(*)) AS click_rate
FROM 
    divar_data
GROUP BY 
    source_event_id;

