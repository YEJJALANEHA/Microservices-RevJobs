-- Add Jobs for Recruiter: 321506402410@andhrauniversity.edu.in
-- Database: revjobs_jobs

USE revjobs_jobs;

-- First, find the recruiter's ID (replace with actual ID after checking)
-- Run this first to get the recruiter_id:
-- SELECT id, email, first_name, last_name FROM revjobs_users.users WHERE email = '321506402410@andhrauniversity.edu.in';

-- Set the recruiter_id variable (updated with actual ID)
SET @recruiter_id = 40;  -- Recruiter: 321506402410@andhrauniversity.edu.in

-- Delete existing jobs for this recruiter (optional)
-- DELETE FROM job_requirements WHERE job_id IN (SELECT id FROM jobs WHERE recruiter_id = @recruiter_id);
-- DELETE FROM jobs WHERE recruiter_id = @recruiter_id;

-- Insert Jobs for this Recruiter
INSERT INTO jobs (title, description, company_name, location, remote, application_deadline, salary_min, salary_max, experience_level, status, recruiter_id, posted_date, updated_at) VALUES

('Full Stack Java Developer', 
'We are seeking a talented Full Stack Java Developer to join our team. You will work on developing scalable web applications using Spring Boot, React, and modern cloud technologies. Strong problem-solving skills and experience with microservices architecture required.',
'Tech Solutions India', 
'Visakhapatnam, India', 
false, 
DATE_ADD(CURDATE(), INTERVAL 30 DAY), 
1200000, 
1800000, 
'SENIOR', 
'ACTIVE', 
@recruiter_id, 
NOW(), 
NOW()),

('React Frontend Developer', 
'Join our innovative team as a React Frontend Developer! Build beautiful, responsive user interfaces using React, TypeScript, Material-UI. We value clean code, attention to detail, and collaborative team players.',
'Digital Innovations Pvt Ltd', 
'Vijayawada, India', 
true, 
DATE_ADD(CURDATE(), INTERVAL 25 DAY), 
800000, 
1200000, 
'INTERMEDIATE', 
'ACTIVE', 
@recruiter_id, 
NOW(), 
NOW()),

('Backend Java Developer', 
'Experienced Java Backend Developer needed to work on enterprise applications. Strong knowledge of Spring Framework, REST APIs, MySQL, and microservices architecture. Good understanding of design patterns and SOLID principles.',
'InfoTech Solutions', 
'Hyderabad, India', 
false, 
DATE_ADD(CURDATE(), INTERVAL 20 DAY), 
1000000, 
1500000, 
'INTERMEDIATE', 
'ACTIVE', 
@recruiter_id, 
NOW(), 
NOW()),

('DevOps Engineer', 
'Looking for a DevOps Engineer to manage our CI/CD pipelines and cloud infrastructure. Experience with Docker, Kubernetes, Jenkins, AWS, and Linux administration required. Automate deployment processes and ensure system reliability.',
'CloudTech Systems', 
'Bangalore, India', 
true, 
DATE_ADD(CURDATE(), INTERVAL 35 DAY), 
1400000, 
2000000, 
'SENIOR', 
'ACTIVE', 
@recruiter_id, 
NOW(), 
NOW()),

('Python Developer', 
'Python Developer needed for building RESTful APIs and backend services. Experience with Django/Flask, PostgreSQL, and cloud deployment. Work on exciting projects in fintech domain.',
'FinServe Technologies', 
'Mumbai, India', 
false, 
DATE_ADD(CURDATE(), INTERVAL 28 DAY), 
900000, 
1400000, 
'INTERMEDIATE', 
'ACTIVE', 
@recruiter_id, 
NOW(), 
NOW()),

('UI/UX Designer', 
'Creative UI/UX Designer needed to design beautiful and intuitive user interfaces. Proficiency in Figma, Adobe XD, and understanding of design systems. Collaborate with developers to bring designs to life.',
'Design Studio Pro', 
'Pune, India', 
true, 
DATE_ADD(CURDATE(), INTERVAL 30 DAY), 
700000, 
1100000, 
'INTERMEDIATE', 
'ACTIVE', 
@recruiter_id, 
NOW(), 
NOW()),

('QA Automation Engineer', 
'QA Automation Engineer to build and maintain test automation frameworks. Strong knowledge of Selenium, Java, TestNG, and REST API testing. Experience with performance testing tools like JMeter is a plus.',
'Quality First Software', 
'Chennai, India', 
false, 
DATE_ADD(CURDATE(), INTERVAL 22 DAY), 
850000, 
1300000, 
'INTERMEDIATE', 
'ACTIVE', 
@recruiter_id, 
NOW(), 
NOW()),

('Angular Developer', 
'Angular Developer needed to build modern web applications. Strong knowledge of Angular, TypeScript, RxJS, and frontend best practices. Work on large-scale enterprise applications.',
'Web Solutions Corp', 
'Gurgaon, India', 
true, 
DATE_ADD(CURDATE(), INTERVAL 26 DAY), 
1000000, 
1500000, 
'INTERMEDIATE', 
'ACTIVE', 
@recruiter_id, 
NOW(), 
NOW()),

('Data Analyst', 
'Data Analyst to analyze business data and provide insights. Strong SQL skills, experience with Excel, Tableau/Power BI. Ability to create dashboards and reports for stakeholders.',
'Analytics Hub', 
'Noida, India', 
false, 
DATE_ADD(CURDATE(), INTERVAL 24 DAY), 
700000, 
1000000, 
'ENTRY', 
'ACTIVE', 
@recruiter_id, 
NOW(), 
NOW()),

('Mobile App Developer', 
'Mobile App Developer with Flutter/React Native experience. Build cross-platform mobile applications for iOS and Android. Experience with REST APIs, Firebase, and app deployment.',
'Mobile First Tech', 
'Bangalore, India', 
true, 
DATE_ADD(CURDATE(), INTERVAL 32 DAY), 
1100000, 
1600000, 
'INTERMEDIATE', 
'ACTIVE', 
@recruiter_id, 
NOW(), 
NOW());

-- Get the job IDs for adding requirements
SET @job1_id = LAST_INSERT_ID();
SET @job2_id = @job1_id + 1;
SET @job3_id = @job1_id + 2;
SET @job4_id = @job1_id + 3;
SET @job5_id = @job1_id + 4;
SET @job6_id = @job1_id + 5;
SET @job7_id = @job1_id + 6;
SET @job8_id = @job1_id + 7;
SET @job9_id = @job1_id + 8;
SET @job10_id = @job1_id + 9;

-- Insert Job Requirements/Skills

-- Job 1: Full Stack Java Developer
INSERT INTO job_requirements (job_id, requirement) VALUES
(@job1_id, 'Java'),
(@job1_id, 'Spring Boot'),
(@job1_id, 'React'),
(@job1_id, 'MySQL'),
(@job1_id, 'Microservices'),
(@job1_id, 'REST API'),
(@job1_id, 'Docker');

-- Job 2: React Frontend Developer
INSERT INTO job_requirements (job_id, requirement) VALUES
(@job2_id, 'React'),
(@job2_id, 'TypeScript'),
(@job2_id, 'Material-UI'),
(@job2_id, 'HTML5'),
(@job2_id, 'CSS3'),
(@job2_id, 'Redux'),
(@job2_id, 'Git');

-- Job 3: Backend Java Developer
INSERT INTO job_requirements (job_id, requirement) VALUES
(@job3_id, 'Java'),
(@job3_id, 'Spring Framework'),
(@job3_id, 'REST API'),
(@job3_id, 'MySQL'),
(@job3_id, 'JUnit'),
(@job3_id, 'Maven'),
(@job3_id, 'Design Patterns');

-- Job 4: DevOps Engineer
INSERT INTO job_requirements (job_id, requirement) VALUES
(@job4_id, 'Docker'),
(@job4_id, 'Kubernetes'),
(@job4_id, 'Jenkins'),
(@job4_id, 'AWS'),
(@job4_id, 'Linux'),
(@job4_id, 'CI/CD'),
(@job4_id, 'Terraform');

-- Job 5: Python Developer
INSERT INTO job_requirements (job_id, requirement) VALUES
(@job5_id, 'Python'),
(@job5_id, 'Django'),
(@job5_id, 'Flask'),
(@job5_id, 'PostgreSQL'),
(@job5_id, 'REST API'),
(@job5_id, 'Docker'),
(@job5_id, 'Git');

-- Job 6: UI/UX Designer
INSERT INTO job_requirements (job_id, requirement) VALUES
(@job6_id, 'Figma'),
(@job6_id, 'Adobe XD'),
(@job6_id, 'Sketch'),
(@job6_id, 'Prototyping'),
(@job6_id, 'User Research'),
(@job6_id, 'Wireframing'),
(@job6_id, 'Design Systems');

-- Job 7: QA Automation Engineer
INSERT INTO job_requirements (job_id, requirement) VALUES
(@job7_id, 'Selenium'),
(@job7_id, 'Java'),
(@job7_id, 'TestNG'),
(@job7_id, 'REST API Testing'),
(@job7_id, 'JMeter'),
(@job7_id, 'Git'),
(@job7_id, 'Cucumber');

-- Job 8: Angular Developer
INSERT INTO job_requirements (job_id, requirement) VALUES
(@job8_id, 'Angular'),
(@job8_id, 'TypeScript'),
(@job8_id, 'RxJS'),
(@job8_id, 'HTML5'),
(@job8_id, 'CSS3'),
(@job8_id, 'REST API'),
(@job8_id, 'Git');

-- Job 9: Data Analyst
INSERT INTO job_requirements (job_id, requirement) VALUES
(@job9_id, 'SQL'),
(@job9_id, 'Excel'),
(@job9_id, 'Tableau'),
(@job9_id, 'Power BI'),
(@job9_id, 'Data Visualization'),
(@job9_id, 'Statistics'),
(@job9_id, 'Python');

-- Job 10: Mobile App Developer
INSERT INTO job_requirements (job_id, requirement) VALUES
(@job10_id, 'Flutter'),
(@job10_id, 'Dart'),
(@job10_id, 'iOS'),
(@job10_id, 'Android'),
(@job10_id, 'REST API'),
(@job10_id, 'Firebase'),
(@job10_id, 'Git');

SELECT 'Jobs added successfully for recruiter!' as message;
SELECT COUNT(*) as total_jobs FROM jobs WHERE recruiter_id = @recruiter_id;
