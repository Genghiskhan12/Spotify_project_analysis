USE spotify_dataset;

-- User segmentation analysis

SELECT 
    CASE
        WHEN music_lis_frequency = 'Rarely'
             AND pod_lis_frequency = 'Never'
        THEN 'Casual User'

        WHEN preferred_listening_content = 'Music'
             AND music_recc_rating >= 4
        THEN 'Music Power User'

        WHEN pod_lis_frequency IN ('Daily', 'Several times a week')
        THEN 'Podcast Enthusiast'

        WHEN premium_sub_willingness = 'Yes'
             AND music_recc_rating >= 4
        THEN 'Premium Likely User'

        ELSE 'Regular User'
    END AS user_segment,

    COUNT(*) AS total_users,

    ROUND(
        COUNT(*) * 100.0 /
        (SELECT COUNT(*) FROM spotify_data),
        2
    ) AS percentage_share

FROM spotify_data
GROUP BY user_segment
ORDER BY total_users DESC;

-- The user base is primarily focused on music consumption.
-- A large portion of users remain behaviorally undefined, indicating opportunities for stronger personalization and engagement strategies.
-- Premium-oriented users represent a relatively small share of the audience, suggesting additional analysis is needed to understand conversion drivers.