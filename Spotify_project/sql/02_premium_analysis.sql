USE spotify_dataset;

-- Premium subscription by age

SELECT 
    age,
    SUM(CASE 
        WHEN spotify_subscription_plan = 'Premium (paid subscription)' 
        THEN 1 ELSE 0 
    END) AS premium_count,

    SUM(CASE 
        WHEN spotify_subscription_plan != 'Premium (paid subscription)' 
        THEN 1 ELSE 0 
    END) AS free_count,

    COUNT(*) AS total_count

FROM spotify_data
GROUP BY age
ORDER BY premium_count DESC;

-- Users aged 20-35 have the highest number of premium subscriptions.



-- Premium subscription by gender

SELECT 
    gender,

    SUM(CASE 
        WHEN spotify_subscription_plan = 'Premium (paid subscription)' 
        THEN 1 ELSE 0 
    END) AS premium_count,

    SUM(CASE 
        WHEN spotify_subscription_plan != 'Premium (paid subscription)' 
        THEN 1 ELSE 0 
    END) AS free_count,

    COUNT(*) AS total_count

FROM spotify_data
GROUP BY gender
ORDER BY premium_count DESC;

-- Female users have the highest number of premium subscriptions.



-- Premium subscription by listening device

SELECT 
    spotify_listening_device,

    SUM(CASE 
        WHEN spotify_subscription_plan = 'Premium (paid subscription)' 
        THEN 1 ELSE 0 
    END) AS premium_count,

    SUM(CASE 
        WHEN spotify_subscription_plan != 'Premium (paid subscription)' 
        THEN 1 ELSE 0 
    END) AS free_count,

    COUNT(*) AS total_count

FROM spotify_data
GROUP BY spotify_listening_device
ORDER BY premium_count DESC;

-- Smartphone, smart speaker, and computer users show the highest premium subscription counts.



-- Premium subscription by music genre

SELECT 
    fav_music_genre,

    SUM(CASE 
        WHEN spotify_subscription_plan = 'Premium (paid subscription)' 
        THEN 1 ELSE 0 
    END) AS premium_count,

    SUM(CASE 
        WHEN spotify_subscription_plan != 'Premium (paid subscription)' 
        THEN 1 ELSE 0 
    END) AS free_count,

    COUNT(*) AS total_count

FROM spotify_data
GROUP BY fav_music_genre
ORDER BY premium_count DESC;

-- Melody, classical, and rap listeners show higher premium subscription counts.



-- Premium subscription by listening activity

SELECT 
    music_lis_frequency,

    SUM(CASE 
        WHEN spotify_subscription_plan = 'Premium (paid subscription)' 
        THEN 1 ELSE 0 
    END) AS premium_count,

    SUM(CASE 
        WHEN spotify_subscription_plan != 'Premium (paid subscription)' 
        THEN 1 ELSE 0 
    END) AS free_count,

    COUNT(*) AS total_count

FROM spotify_data
GROUP BY music_lis_frequency
ORDER BY premium_count DESC;

-- Users commonly listen to music while traveling, working out, and during leisure time.