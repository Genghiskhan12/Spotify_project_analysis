USE spotify_dataset;

-- Preview dataset

SELECT *
FROM spotify_data
LIMIT 10;



-- Check total number of rows

SELECT COUNT(*) AS total_rows
FROM spotify_data;



-- Check for missing values

SELECT
    SUM(CASE WHEN age IS NULL OR age = '' THEN 1 ELSE 0 END) AS missing_age,
    SUM(CASE WHEN gender IS NULL OR gender = '' THEN 1 ELSE 0 END) AS missing_gender,
    SUM(CASE WHEN spotify_subscription_plan IS NULL OR spotify_subscription_plan = '' THEN 1 ELSE 0 END) AS missing_subscription_plan,
    SUM(CASE WHEN fav_music_genre IS NULL OR fav_music_genre = '' THEN 1 ELSE 0 END) AS missing_music_genre,
    SUM(CASE WHEN pod_lis_frequency IS NULL OR pod_lis_frequency = '' THEN 1 ELSE 0 END) AS missing_podcast_frequency
FROM spotify_data;



-- Check unique age groups

SELECT DISTINCT age
FROM spotify_data;



-- Check unique subscription plans

SELECT DISTINCT spotify_subscription_plan
FROM spotify_data;



-- Check duplicate rows

SELECT *,
       COUNT(*) AS duplicate_count
FROM spotify_data
GROUP BY
    age,
    gender,
    spotify_usage_period,
    spotify_listening_device,
    spotify_subscription_plan,
    premium_sub_willingness,
    preffered_premium_plan,
    preferred_listening_content,
    fav_music_genre,
    music_time_slot,
    music_Influencial_mood,
    music_lis_frequency,
    music_expl_method,
    music_recc_rating,
    pod_lis_frequency,
    fav_pod_genre,
    preffered_pod_format,
    pod_host_preference,
    preffered_pod_duration,
    pod_variety_satisfaction
HAVING COUNT(*) > 1;



-- Standardize inconsistent age values

UPDATE spotify_data
SET age = '12-20'
WHERE age = '20-Dec';