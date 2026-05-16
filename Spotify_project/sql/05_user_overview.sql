USE spotify_dataset;

-- Users by age group

SELECT 
    age,
    COUNT(*) AS age_count
FROM spotify_data
GROUP BY age
ORDER BY age_count DESC;

-- Users aged 20-35 represent the largest user segment.



-- Users by gender

SELECT 
    gender,
    COUNT(*) AS gender_count
FROM spotify_data
GROUP BY gender
ORDER BY gender_count DESC;

-- Female users dominate the dataset population.



-- Most popular listening devices

SELECT 
    spotify_listening_device,
    COUNT(*) AS device_count
FROM spotify_data
GROUP BY spotify_listening_device
ORDER BY device_count DESC;

-- Smartphones are the most commonly used listening device.



-- Preferred listening content

SELECT 
    preferred_listening_content,
    COUNT(*) AS content_count
FROM spotify_data
GROUP BY preferred_listening_content
ORDER BY content_count DESC;

-- Most users prefer music over podcasts.



-- Subscription plan distribution

SELECT 
    spotify_subscription_plan,
    COUNT(*) AS subscription_count
FROM spotify_data
GROUP BY spotify_subscription_plan
ORDER BY subscription_count DESC;

-- Most users use Spotify without a paid subscription.