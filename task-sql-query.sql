-- Count the number of unique leads for each website
-- A lead is counted only for the website where their first event occurred in the system

SELECT 
    wb.website_name,
    COUNT(DISTINCT ld.email) AS unique_leads  -- Count distinct emails that meet the first-event rule
FROM company.websites wb
JOIN company.advertisements ad 
    ON wb.website_id = ad.website_id         -- Link websites to their advertisements
JOIN company.leads ld 
    ON ad.advertisement_id = ld.advertisement_id -- Link advertisements to leads
JOIN (
    -- Find the earliest (first) lead event date for each email across the whole system
    SELECT 
        email,
        MIN(server_date) AS first_event_date
    FROM company.leads
    GROUP BY email
) first_leads
    ON ld.email = first_leads.email
    AND ld.server_date = first_leads.first_event_date  -- Keep only the rows where the event date matches the first date
GROUP BY wb.website_name
ORDER BY wb.website_name DESC;  -- Sort results by website name in descending order
