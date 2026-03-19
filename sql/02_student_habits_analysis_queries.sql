-- Dataset: Student Habits and Performance
-- Columns:
--   Age, Gender, Parental Education Level
--   Extra-curricular Activities, Part-time Job, Diet Quality
--   Study Hours per Day, Sleep Hours, Social Media Hours, Netflix Hours
--   Attendance Percentage, Exercise Frequency, Mental Health Rating, Exam Score
--
-- Groupings used in analysis:
--   Exercise Frequency Group (0-2, 2-4, >4)
--   Attendance Percentage Group (55-66, 66-76, 76-86, >86)
--   Study Hours Group (0-2, 3-4, 5-6, >6)
--   Sleep Hours Group (0-5, 5-8, >8)
--
-- Metrics to compute:
--   Count of Students, Average Exam Scores, Average Exercise Frequency
--   Average Attendance Percentage, Average Study Hours, Average Sleep Hours
SELECT 
	gender,
	parental_education_level,
	extracurricular_participation,
	part_time_job,
	diet_quality,
	CASE
		when exercise_frequency <= 2 THEN '0-2'
		when exercise_frequency <= 4 THEN '2-4'
		when exercise_frequency > 4 THEN '> 4'
	end as exercise_frequency_group,

	CASE
		when sleep_hours <= 5 THEN '0-5'
		when sleep_hours <= 8 THEN '5-8'
		when sleep_hours > 8 THEN '> 8'
	end as sleep_hours_group,

	CASE
		when attendance_percentage <= 66 THEN '0-66'
		when attendance_percentage <= 76 THEN '66-76'
		when attendance_percentage <= 86 THEN '76-86'
		when attendance_percentage > 86 THEN '> 86'
	end as attendance_percentage_group,

	CASE
		when study_hours_per_day <= 2 THEN '0-2'
		when study_hours_per_day <= 4 THEN '2-4'
		when study_hours_per_day <= 6 THEN '4-6'
		when study_hours_per_day > 6 THEN '> 6'
	end as study_hours_per_day_group,

	COUNT(student_id) as count_of_students,
	ROUND(avg(exam_score),2) as avg_exam_score,
	ROUND(avg(exercise_frequency),2) as avg_exercise_frequency,
	ROUND(avg(attendance_percentage),2) as avg_attendance_percentage,
	ROUND(avg(study_hours_per_day),2) as avg_study_hours_per_day,
	ROUND(avg(sleep_hours),2) as avg_sleep_hours

FROM student_habits_performance
GROUP BY 1,2,3,4,5,6,7,8,9;