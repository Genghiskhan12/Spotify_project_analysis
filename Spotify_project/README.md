# Spotify User Behavior Analysis

## Project Goal

Analyze key factors influencing Spotify user behavior, including music listening habits, podcast engagement, Premium subscription usage, and content preferences.

---

# Project Structure

- `/sql` — SQL analysis queries (setup, cleaning, and behavioral analysis)
- `/visualization` — Power BI dashboard
- `/screenshots` — charts and dashboard previews
- `/data` — CSV dataset

---

## Dataset

- ~520 user records
- Survey-based dataset with categorical and multi-select responses

### Features include:
- age
- gender
- spotify_subscription_plan
- spotify_listening_device
- fav_music_genre
- music_time_slot
- music_lis_frequency
- music activity context
- podcast usage behavior (frequency, genres, preferences)

### Data Notes
- Some fields contain multi-value responses (e.g., multiple devices or listening contexts per user)
- Dataset represents survey-based self-reported user behavior

---

## Tools Used

- SQL (MySQL)
- Power BI
- GitHub
---

## How to Load Dataset (IMPORTANT)

Before running SQL analysis, you must load the dataset into MySQL.

### Option 1 — MySQL Workbench Data Import Wizard (Recommended)

1. Open **MySQL Workbench**
2. Go to:

Server → Data Import → Table Data Import Wizard

3. Select file:

data/spotify_user_behavior.csv

4. Choose:
- Database: `spotify_dataset`
- Table: `spotify_data`
5. Click **Finish**

---

# 1. User Segmentation

## Age Distribution vs Subscription

| Age Group | Premium Count | Free Count | Total Count |
|-----------|--------------|------------|-------------|
| 20-35 | 66 | 356 | 422 |
| 12-20 | 22 | 49 | 71 |
| 35-60 | 6 | 17 | 23 |
| 6-12 | 2 | 1 | 3 |
| 60+ | 0 | 1 | 1 |

### Key Insight
- The 20–35 age group is the dominant user segment
- Free users dominate across all age groups
- Highest Premium conversion potential is observed in users aged 12–35

---

## Gender Distribution vs Subscription

| Gender | Premium Count | Free Count | Total Count |
|--------|--------------|------------|-------------|
| Female | 66 | 325 | 391 |
| Male | 25 | 89 | 114 |
| Others | 5 | 10 | 15 |

### Key Insight
- Female users represent the largest share of the platform audience
- Male users show slightly higher Premium conversion relative to their size
- The “Others” group is statistically small

---

# 2. Monetization & Premium Behavior

### Key Insight
- More than 80% of users use Spotify with a free (ad-supported) plan
- Premium adoption remains relatively low across the platform
- Younger users represent the main opportunity for Premium growth

---

# 3. Platform Usage

## Device Usage vs Subscription (Top categories shown)

| Device | Count | Percentage |
|--------|------|------------|
| Smartphone | 300 | 57.7% |
| Computer or laptop | 54 | 10.4% |
| Smartphone + Computer (multi-device users) | 48 | 9.2% |

### Key Insight
- Smartphones are the dominant listening device, showing strong mobile-first behavior
- A noticeable share of users use multiple devices, indicating cross-platform listening habits
- Desktop usage is significantly lower compared to mobile usage

---

# 4. Content Preference

## Favorite Music Genres

| Genre | Premium Count | Free Count | Total Count |
|-------|--------------|------------|-------------|
| Melody | 28 | 231 | 259 |
| Classical | 25 | 62 | 87 |
| Rap | 19 | 36 | 55 |
| Pop | 17 | 68 | 85 |

### Key Insight
- Melody is the most dominant genre across users
- Classical and Rap listeners show relatively higher Premium share
- Genre preference does not directly translate into monetization behavior

---

# Podcast Behavior (Secondary Insight)

## Podcast Listening Frequency

| Frequency | Total Count | Percentage |
|----------|------------|------------|
| Rarely | 201 | 38.7% |
| Never | 130 | 25.0% |
| Weekly or more | 189 | 36.3% |

### Key Insight
- Podcast engagement is significantly lower compared to music consumption
- Majority of users listen to podcasts rarely or not at all

---

## Favorite Podcast Genres

| Genre | Total Count | Percentage |
|------|------------|------------|
| None | 148 | 28.5% |
| Comedy | 107 | 20.6% |
| Lifestyle & Health | 102 | 19.6% |
| Health & Fitness | 78 | 15.0% |
| Sports | 51 | 9.8% |

### Key Insight
- A large share of users do not actively follow podcast genres
- Comedy and lifestyle content are the most preferred categories among podcast listeners

---

# 5. Behavioral Context

## Music Listening Time

| Time Slot | Total Count | Percentage |
|----------|------------|------------|
| Night | 312 | 60.0% |
| Afternoon | 117 | 22.5% |
| Morning | 91 | 17.5% |

### Key Insight
- Night is the dominant listening time across users
- Listening behavior is strongly tied to daily routines

---

## Listening Activity Context

| Context | Premium Count | Free Count | Total Count |
|--------|--------------|------------|-------------|
| While Traveling | 21 | 90 | 111 |
| Mixed Context (multiple activities) | 12 | 36 | 48 |
| Workout Session | 11 | 22 | 33 |
| Study Hours | 8 | 11 | 19 |

### Key Insight
- Music consumption is strongly linked to daily activities such as travel and workouts
- Multi-context listening behavior is common among users

---

# Final Conclusion

- Spotify usage is concentrated in the 20–35 age group
- Free users dominate the platform, indicating strong premium conversion potential
- Mobile devices are the primary consumption channel
- Music behavior is highly routine-based (time + activity driven)
- Podcast engagement exists but remains a secondary feature

---

# Repository

https://github.com/Genghiskhan12/Spotify_project_analysis/blob/main/Spotify_project
