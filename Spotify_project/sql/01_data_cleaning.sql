USE spotify_dataset;
-- DATA QUALITY CHECKS

Create backup copy
CREATE TABLE spotify_data_dub
LIKE spotify_data;

INSERT INTO spotify_data_dub
SELECT *
FROM spotify_data;

-- CHECK MISSING VALUES

SELECT *
FROM spotify_data
WHERE
    age IS NULL OR age = ''
    OR gender IS NULL OR gender = ''
    OR spotify_usage_period IS NULL OR spotify_usage_period = ''
    OR spotify_listening_device IS NULL OR spotify_listening_device = ''
    OR spotify_subscription_plan IS NULL OR spotify_subscription_plan = ''
    OR premium_sub_willingness IS NULL OR premium_sub_willingness = ''
    OR preffered_premium_plan IS NULL OR preffered_premium_plan = ''
    OR preferred_listening_content IS NULL OR preferred_listening_content = ''
    OR fav_music_genre IS NULL OR fav_music_genre = ''
    OR music_time_slot IS NULL OR music_time_slot = ''
    OR music_Influencial_mood IS NULL OR music_Influencial_mood = ''
    OR music_lis_frequency IS NULL OR music_lis_frequency = ''
    OR music_expl_method IS NULL OR music_expl_method = ''
    OR music_recc_rating IS NULL
    OR pod_lis_frequency IS NULL OR pod_lis_frequency = ''
    OR fav_pod_genre IS NULL OR fav_pod_genre = ''
    OR preffered_pod_format IS NULL OR preffered_pod_format = ''
    OR pod_host_preference IS NULL OR pod_host_preference = ''
    OR preffered_pod_duration IS NULL OR preffered_pod_duration = ''
    OR pod_variety_satisfaction IS NULL OR pod_variety_satisfaction = '';

-- CHECK CATEGORICAL VALUES

SELECT DISTINCT age FROM spotify_data;
SELECT DISTINCT gender FROM spotify_data;
SELECT DISTINCT spotify_usage_period FROM spotify_data;
SELECT DISTINCT spotify_subscription_plan FROM spotify_data;
SELECT DISTINCT premium_sub_willingness FROM spotify_data;
SELECT DISTINCT preferred_listening_content FROM spotify_data;
SELECT DISTINCT music_time_slot FROM spotify_data;
SELECT DISTINCT pod_lis_frequency FROM spotify_data;

-- CHECK DUPLICATES

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

-- FINAL CHECK

SELECT COUNT(*) AS total_rows
FROM spotify_data;
