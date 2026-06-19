-- 00_SETUP.SQL
-- Spotify User Behavior Project

-- 1. CREATE DATABASE
CREATE DATABASE IF NOT EXISTS spotify_dataset;

-- 2. USE DATABASE
USE spotify_dataset;

-- 3. DROP TABLE IF EXISTS (чтобы можно было пересоздавать)
DROP TABLE IF EXISTS spotify_data;

-- 4. CREATE RAW TABLE
CREATE TABLE spotify_data (
    age VARCHAR(20),
    gender VARCHAR(20),
    spotify_usage_period VARCHAR(50),
    spotify_listening_device VARCHAR(255),
    spotify_subscription_plan VARCHAR(100),
    premium_sub_willingness VARCHAR(10),
    preffered_premium_plan VARCHAR(100),
    preferred_listening_content VARCHAR(50),
    fav_music_genre VARCHAR(100),
    music_time_slot VARCHAR(50),
    music_Influencial_mood TEXT,
    music_lis_frequency VARCHAR(255),
    music_expl_method VARCHAR(255),
    music_recc_rating INT,
    pod_lis_frequency VARCHAR(50),
    fav_pod_genre VARCHAR(100),
    preffered_pod_format VARCHAR(100),
    pod_host_preference VARCHAR(100),
    preffered_pod_duration VARCHAR(50),
    pod_variety_satisfaction VARCHAR(50)
);

-- 5. LOAD DATA
LOAD DATA LOCAL INFILE 'data/spotify_user_behavior.csv'
INTO TABLE spotify_data
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

-- 6. QUICK CHECK
SELECT COUNT(*) AS total_rows FROM spotify_data;

SELECT * FROM spotify_data LIMIT 5;
