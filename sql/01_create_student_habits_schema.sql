CREATE TABLE student_habits_performance (
    student_id                  VARCHAR(10) PRIMARY KEY,
    age                         INTEGER,
    gender                      VARCHAR(10),
    study_hours_per_day         NUMERIC(4,1),
    social_media_hours          NUMERIC(4,1),
    netflix_hours               NUMERIC(4,1),
    part_time_job               VARCHAR(3),            -- 'Yes' / 'No'
    attendance_percentage       NUMERIC(5,1),
    sleep_hours                 NUMERIC(4,1),
    diet_quality                VARCHAR(10),           -- 'Poor' / 'Fair' / 'Good'
    exercise_frequency          INTEGER,
    parental_education_level    VARCHAR(20),
    internet_quality            VARCHAR(10),
    mental_health_rating        INTEGER,
    extracurricular_participation VARCHAR(3),          -- 'Yes' / 'No'
    exam_score                  NUMERIC(5,1)
);
