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

    COUNT(*) AS total_count,

    ROUND(
        SUM(CASE 
            WHEN spotify_subscription_plan = 'Premium (paid subscription)' 
            THEN 1 ELSE 0 
        END) * 100.0 / COUNT(*),
    2) AS premium_rate

FROM spotify_data
GROUP BY age
ORDER BY premium_rate DESC;

-- Users aged 12-20 and 35-60 show relatively higher Premium conversion rates,
-- while users aged 20-35 account for the largest number of Premium subscribers
-- due to their dominant share in the dataset.



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

    COUNT(*) AS total_count,

    ROUND(
        SUM(CASE 
            WHEN spotify_subscription_plan = 'Premium (paid subscription)' 
            THEN 1 ELSE 0 
        END) * 100.0 / COUNT(*),
    2) AS premium_rate

FROM spotify_data
GROUP BY gender
ORDER BY premium_rate DESC;

-- Male users show a relatively higher Premium conversion rate,
-- while female users account for the largest number of Premium subscribers
-- due to their larger representation in the dataset.


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

    COUNT(*) AS total_count,

    ROUND(
        SUM(CASE 
            WHEN spotify_subscription_plan = 'Premium (paid subscription)' 
            THEN 1 ELSE 0 
        END) * 100.0 / COUNT(*),
    2) AS premium_rate

FROM spotify_data
GROUP BY spotify_listening_device
ORDER BY premium_rate DESC;

-- Smartphone, smart speaker, and computer users show the highest premium subscription counts.
-- But not in absolute values, Computer or laptop, Wearable devices show 80% premium or Smartphone, Computer or laptop, Smart 
-- speakers or voice assistants show 71.43%.

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
