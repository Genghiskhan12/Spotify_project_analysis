USE spotify_dataset;

-- Podcast listening frequency

SELECT 
    pod_lis_frequency,
    COUNT(*) AS total_count,

    ROUND(
        COUNT(*) * 100.0 /
        (SELECT COUNT(*) FROM spotify_data),
        1
    ) AS percentage

FROM spotify_data
GROUP BY pod_lis_frequency
ORDER BY total_count DESC;

-- Most users listen to podcasts rarely or never.
-- Only a smaller portion of users listen to podcasts weekly or several times a week.



-- Favorite podcast genres

SELECT 
    fav_pod_genre,
    COUNT(*) AS total_count,

    ROUND(
        COUNT(*) * 100.0 /
        (SELECT COUNT(*) FROM spotify_data),
        1
    ) AS percentage

FROM spotify_data
GROUP BY fav_pod_genre
ORDER BY total_count DESC;

-- Most users do not have a specific favorite podcast genre.
-- Comedy and lifestyle & health podcasts are among the most popular categories.



-- Preferred podcast formats

SELECT 
    preffered_pod_format,
    COUNT(*) AS total_count,

    ROUND(
        COUNT(*) * 100.0 /
        (SELECT COUNT(*) FROM spotify_data),
        1
    ) AS percentage

FROM spotify_data
GROUP BY preffered_pod_format
ORDER BY total_count DESC;

-- Storytelling and conversational podcasts are the most preferred podcast formats.



-- Preferred podcast duration

SELECT 
    preffered_pod_duration,
    COUNT(*) AS total_count,

    ROUND(
        COUNT(*) * 100.0 /
        (SELECT COUNT(*) FROM spotify_data),
        1
    ) AS percentage

FROM spotify_data
GROUP BY preffered_pod_duration
ORDER BY total_count DESC;

-- Shorter podcasts are the most preferred podcast duration among users.



-- Podcast host preferences

SELECT 
    pod_host_preference,
    COUNT(*) AS total_count,

    ROUND(
        COUNT(*) * 100.0 /
        (SELECT COUNT(*) FROM spotify_data),
        1
    ) AS percentage

FROM spotify_data
GROUP BY pod_host_preference
ORDER BY total_count DESC;

-- Most users are open to listening to both well-known and lesser-known podcast hosts.