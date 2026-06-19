USE spotify_dataset;

-- Music listening time slots

SELECT 
    music_time_slot,
    COUNT(*) AS total_count,

    ROUND(
        COUNT(*) * 100.0 /
        (SELECT COUNT(*) FROM spotify_data),
        1
    ) AS percentage

FROM spotify_data
GROUP BY music_time_slot
ORDER BY total_count DESC;

-- Night is the most popular listening time among users.



-- Influential moods for music listening

SELECT 
    music_Influencial_mood,
    COUNT(*) AS total_count,

    ROUND(
        COUNT(*) * 100.0 /
        (SELECT COUNT(*) FROM spotify_data),
        1
    ) AS percentage

FROM spotify_data
GROUP BY music_Influencial_mood
ORDER BY total_count DESC;

-- Relaxation, stress relief, as well as uplifting and motivation are the most common reasons for listening to music.



-- Music discovery methods

SELECT 
    music_expl_method,
    COUNT(*) AS total_count,

    ROUND(
        COUNT(*) * 100.0 /
        (SELECT COUNT(*) FROM spotify_data),
        1
    ) AS percentage

FROM spotify_data
GROUP BY music_expl_method
ORDER BY total_count DESC;

-- Recommendations and playlists are the most popular ways users discover music.



-- Most popular music genres

SELECT 
    fav_music_genre,
    COUNT(*) AS total_count,

    ROUND(
        COUNT(*) * 100.0 /
        (SELECT COUNT(*) FROM spotify_data),
        1
    ) AS percentage

FROM spotify_data
GROUP BY fav_music_genre
ORDER BY total_count DESC;

-- Melody, classical, pop, and rock are among the most popular music genres.



-- Recommendation ratings

SELECT 
    music_recc_rating,
    COUNT(*) AS total_count,

    ROUND(
        COUNT(*) * 100.0 /
        (SELECT COUNT(*) FROM spotify_data),
        1
    ) AS percentage

FROM spotify_data
GROUP BY music_recc_rating
ORDER BY total_count DESC;

-- Most users rated Spotify recommendations with scores of 3 and 4.

-- Podcast listening frequency

SELECT 
    pod_lis_frequency,
    COUNT(*) AS total_count,
    ROUND(COUNT(*) * 100.0 / (SELECT COUNT(*) FROM spotify_data), 1) AS percentage
FROM spotify_data
GROUP BY pod_lis_frequency
ORDER BY total_count DESC;

-- Most users listen to podcasts rarely or never.
-- Only a smaller portion of users listen to podcasts weekly or several times a week.

-- Favorite podcast genres

SELECT 
    fav_pod_genre,
    COUNT(*) AS total_count,
    ROUND(COUNT(*) * 100.0 / (SELECT COUNT(*) FROM spotify_data), 1) AS percentage
FROM spotify_data
GROUP BY fav_pod_genre
ORDER BY total_count DESC;

-- Most users do not have a specific favorite podcast genre.
-- Comedy and lifestyle & health podcasts are among the most popular categories.
