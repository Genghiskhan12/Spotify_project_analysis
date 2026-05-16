#  Spotify User Behavior Analysis

##  Project Goal

Determine the key factors influencing Spotify user behavior, including music listening habits, podcast engagement, Premium subscription usage, and content preferences.

---

# Project Structure

- `/sql` — SQL analysis queries
- `/visualization` — Power BI dashboard
- `/screenshots` — charts and dashboard previews
- `/data` — csv table

##  Dataset

- ~520 user records
- Fields include:
  - age
  - gender
  - spotify_subscription_plan
  - spotify_listening_device
  - fav_music_genre
  - music_time_slot
  - pod_lis_frequency
  - podcast genre preferences
  - listening activity context

### Data Cleaning
- Removed rows with invalid or null values in key columns
- Checked consistency of subscription and demographic fields
- Prepared dataset for SQL analysis and Power BI visualization

---

##  Tools Used

- SQL (MySQL)
- Power BI
- GitHub

---

# 1  User Segmentation

<img src="screenshots/Screenshot%20(155).png" width="60%">

## Age Distribution vs Subscription

| Age Group | Premium Count | Free Count | Total Count |
|-----------|---------------|-------------|-------------|
| 20-35 | 66 | 356 | 422 |
| 12-20 | 22 | 49 | 71 |
| 35-60 | 6 | 17 | 23 |
| 6-12 | 2 | 1 | 3 |
| 60+ | 0 | 1 | 1 |

### Key Insight
- The main user segment is 20–35 years old
- Free users dominate across all age groups
- The highest Premium conversion potential comes from users aged 12–35
- Users older than 35 rarely convert to Premium

---

## Gender Distribution vs Subscription

| Gender | Premium Count | Free Count | Total Count |
|--------|---------------|-------------|-------------|
| Female | 66 | 325 | 391 |
| Male | 25 | 89 | 114 |
| Others | 5 | 10 | 15 |

### Key Insight
- Female users represent the majority of the platform audience
- Male users show a slightly higher relative Premium conversion rate
- The “Others” segment is statistically small

---

# 2 Monetization & Premium Behavior

<img src="screenshots/Screenshot%20(153).png" width="55%">

### Key Insight
- More than 80% of users use Spotify without a Premium subscription
- Premium adoption remains relatively low across the platform
- Young users represent the main opportunity for Premium growth

---

# 3 Platform Usage

## Device Usage vs Subscription

| Device | Premium Count | Free Count | Total Count |
|--------|---------------|-------------|-------------|
| Smartphone | 27 | 273 | 300 |
| Smart speakers / voice assistants | 18 | 25 | 43 |
| Computer / laptop | 15 | 39 | 54 |

### Key Insight
- Smartphones are the dominant listening device
- Smart speaker users show relatively stronger Premium engagement
- Desktop listening is less common compared to mobile usage

---

# 4 Content Preference

## Favorite Music Genres

| Genre | Premium Count | Free Count | Total Count |
|-------|---------------|-------------|-------------|
| Melody | 28 | 231 | 259 |
| Classical | 25 | 62 | 87 |
| Rap | 19 | 36 | 55 |
| Pop | 17 | 68 | 85 |

### Key Insight
- Melody is the most popular genre among users
- Classical and Rap listeners show relatively stronger Premium usage
- Genre popularity does not always correlate with monetization

---

## Podcast Listening Frequency

<img src="screenshots/Screenshot%20(154).png" width="55%">

| Podcast Listening Frequency | Total Count | Percentage |
|-----------------------------|-------------|-------------|
| Rarely | 201 | 38.7% |
| Never | 130 | 25.0% |
| Once a week | 91 | 17.5% |
| Several times a week | 78 | 15.0% |
| Daily | 20 | 3.8% |

### Key Insight
- Podcasts are less popular than music content
- Most users listen to podcasts rarely or never
- Daily podcast engagement remains low

---

## Favorite Podcast Genres

| Podcast Genre | Total Count | Percentage |
|---------------|-------------|-------------|
| None | 148 | 28.5% |
| Comedy | 107 | 20.6% |
| Lifestyle and Health | 102 | 19.6% |
| Health and Fitness | 78 | 15.0% |
| Sports | 51 | 9.8% |

### Key Insight
- Many users do not have a preferred podcast genre
- Comedy and lifestyle content are the most popular podcast categories
- Health-related podcasts also show strong engagement

---

# 5 Behavioral Context

## Music Listening Time

| Music Time Slot | Total Count | Percentage |
|----------------|-------------|-------------|
| Night | 312 | 60.0% |
| Afternoon | 117 | 22.5% |
| Morning | 91 | 17.5% |

### Key Insight
- Most users prefer listening to music at night
- Afternoon listening is the second most common behavior pattern
- Morning listening activity is comparatively lower

---

## Listening Activity Context

| Listening Context | Premium Count | Free Count | Total Count |
|------------------|---------------|-------------|-------------|
| While Traveling | 21 | 90 | 111 |
| While Traveling, Workout session, leisure time | 12 | 36 | 48 |
| Workout session | 11 | 22 | 33 |
| Study Hours | 8 | 11 | 19 |

### Key Insight
- Music is most commonly consumed while traveling
- Workout and leisure activities are also important listening contexts
- Music consumption is strongly connected to daily routines and activities

---

# Final Conclusion

- Spotify usage is heavily concentrated among users aged 20–35
- Free users dominate the platform, showing strong potential for Premium conversion strategies
- Mobile devices are the primary platform for music consumption
- Music remains significantly more popular than podcasts
- User behavior is strongly tied to everyday activities such as traveling, workouts, and leisure time

---

# Repository

https://github.com/Genghiskhan12/Spotify_project_analysis/blob/main/Spotify_project
