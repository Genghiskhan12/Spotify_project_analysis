USE spotify_dataset;

-- Users by age group
SELECT 
    age,
    COUNT(*) AS age_count,
    ROUND(COUNT(*) * 100.0 / (SELECT COUNT(*) FROM spotify_data), 1) AS percentage
FROM spotify_data
GROUP BY age
ORDER BY age_count DESC;

-- Users aged 20-35 represent the largest user segment.



-- Users by gender
SELECT 
    gender,
    COUNT(*) AS gender_count,
    ROUND(COUNT(*) * 100.0 / (SELECT COUNT(*) FROM spotify_data), 1) AS percentage
FROM spotify_data
GROUP BY gender
ORDER BY gender_count DESC;

-- Female users represent the largest share of the dataset.



-- Most popular listening devices
SELECT 
    spotify_listening_device,

    COUNT(*) AS device_count,

    SUM(CASE 
        WHEN spotify_subscription_plan = 'Premium (paid subscription)' 
        THEN 1 ELSE 0 
    END) AS premium_count,

    SUM(CASE 
        WHEN spotify_subscription_plan != 'Premium (paid subscription)' 
        THEN 1 ELSE 0 
    END) AS free_count,

    ROUND(COUNT(*) * 100.0 / (SELECT COUNT(*) FROM spotify_data), 1) AS percentage

FROM spotify_data
GROUP BY spotify_listening_device
ORDER BY device_count DESC;

-- Smartphones are the dominant listening device, indicating mobile-first user behavior.



-- Preferred listening content
SELECT 
    preferred_listening_content,
    COUNT(*) AS content_count,
    ROUND(COUNT(*) * 100.0 / (SELECT COUNT(*) FROM spotify_data), 1) AS percentage
FROM spotify_data
GROUP BY preferred_listening_content
ORDER BY content_count DESC;

-- Most users prefer music over podcasts.



-- Subscription plan distribution
SELECT 
    spotify_subscription_plan,
    COUNT(*) AS subscription_count,
    ROUND(COUNT(*) * 100.0 / (SELECT COUNT(*) FROM spotify_data), 1) AS percentage
FROM spotify_data
GROUP BY spotify_subscription_plan
ORDER BY subscription_count DESC;

-- Most users use Spotify with a free (ad-supported) plan.
