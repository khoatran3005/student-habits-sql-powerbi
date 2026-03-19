# Analyzing Student Habits and Their Impact on Academic Performance

This project explores how students' study habits, lifestyle, and demographics relate to their exam performance using SQL (PostgreSQL) and Power BI.  
It is designed as a portfolio project to showcase data cleaning, SQL analysis, and dashboard-building skills.

## Dataset

- Source: Synthetic dataset of university students (`student_habits_performance.csv`).
- Size: 1,000+ rows and 16 columns.
- Key fields: age, gender, study hours per day, sleep hours, social media and Netflix usage, exercise frequency, attendance percentage, diet quality, parental education level, part-time job, extracurricular participation, and exam score.

## Tech Stack

- SQL (PostgreSQL)
- Power BI Desktop
- CSV / Excel

## Data Preparation (SQL)

- Created the `student_habits_performance` table and loaded the CSV data.
- Performed basic data quality checks (missing values, value ranges, data types).
- Engineered grouped features, including:
  - `study_hours_per_day_group`
  - `sleep_hours_group`
  - `attendance_percentage_group`
  - `exercise_frequency_group`
- Wrote SQL queries to calculate:
  - Total student counts by gender and other categories.
  - Average exam score by study hours group, sleep hours group, attendance group, diet quality, exercise frequency group, and part-time job status.

## Power BI Dashboard

The Power BI report includes:

- KPI cards for:
  - Total Count of Students
  - Total Count of Female Students
  - Total Count of Male Students
- Slicers for gender, extracurricular participation, and parental education level.
- Visuals showing:
  - Average exam score by attendance percentage group.
  - Average exam score by diet quality.
  - Average exam score by exercise frequency group.
  - Average exam score by study hours group.
  - Average exam score by sleep hours group.
  - Average exam score by part-time job status (pie chart).

**Dashboard overview:**

  <img width="1388" height="785" alt="overview_page" src="https://github.com/user-attachments/assets/e4a3cffb-d5c2-4917-b8da-eb83c0a6fdf2" />


## Key Insights

Based on the SQL aggregations and Power BI visualizations:
- Attendance, diet quality, and part-time job status do influence average exam scores, but the impact is relatively small, with differences of less than 3% between groups.
- Sleep duration has a more noticeable effect: students who sleep more than 8 hours per night achieve average exam scores that are about 7% higher than students who sleep 5 hours or less.
- Exercise frequency also affects performance: students who exercise at least 4 times per week have average exam scores that are roughly 6% higher than students who exercise less frequently.
- The strongest driver of exam performance is study time. Students who study between 4 and 6 hours per day score significantly higher—around 16% to 35%—than those who study only 0–2 or 2–4 hours. The 6+ hours group performs best overall, reaching an average score of about 97.76.
- These effects remain consistent across different genders, extracurricular participation statuses, and parental education levels, suggesting that the impact of study habits and lifestyle holds across demographic segments.

## Repository Structure

```text
.
├── data/
│   └── student_habits_performance.csv
├── sql/
│   ├── 01_create_student_habits_schema.sql
│   └── 02_student_habits_analysis_queries.sql
├── powerbi/
│   └── student-habits-dashboard.pbix
└── README.md
