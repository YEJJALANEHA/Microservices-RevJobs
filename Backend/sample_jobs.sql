-- Sample Jobs Data for RevJobs Platform
-- Database: revjobs_jobs
-- Run these queries in MySQL Workbench or command line

USE revjobs_jobs;

-- Clear existing data (optional)
-- DELETE FROM job_requirements;
-- DELETE FROM jobs;

-- Insert Sample Jobs
INSERT INTO jobs (title, description, company_name, location, remote, application_deadline, salary_min, salary_max, experience_level, status, recruiter_id, posted_date, updated_at) VALUES

('Senior Full Stack Developer', 
'We are looking for an experienced Full Stack Developer to join our engineering team. You will work on building scalable web applications using React, Node.js, and cloud technologies. The ideal candidate has strong problem-solving skills and experience with modern development practices.',
'Google', 
'Bangalore, India', 
false, 
'2025-02-28', 
1500000, 
2000000, 
'SENIOR', 
'ACTIVE', 
1, 
NOW(), 
NOW()),

('Frontend React Developer', 
'Join our growing team as a Frontend Developer! Work with React, TypeScript, and modern CSS frameworks to build beautiful user interfaces. We value clean code, attention to detail, and collaborative team players.',
'Microsoft', 
'Hyderabad, India', 
true, 
'2025-02-15', 
800000, 
1200000, 
'INTERMEDIATE', 
'ACTIVE', 
1, 
NOW(), 
NOW()),

('Java Backend Developer', 
'Exciting opportunity for a Java Backend Developer! Build robust microservices using Spring Boot, work with databases, and contribute to our cloud-native architecture. Experience with REST APIs and Kafka is a plus.',
'Amazon', 
'Mumbai, India', 
false, 
'2025-03-01', 
1000000, 
1500000, 
'INTERMEDIATE', 
'ACTIVE', 
1, 
NOW(), 
NOW()),

('DevOps Engineer', 
'We need a skilled DevOps Engineer to manage our CI/CD pipelines, containerization, and cloud infrastructure. Experience with Docker, Kubernetes, Jenkins, and AWS/Azure is required.',
'Infosys', 
'Pune, India', 
true, 
'2025-02-20', 
900000, 
1400000, 
'SENIOR', 
'ACTIVE', 
1, 
NOW(), 
NOW()),

('Data Scientist', 
'Join our AI/ML team as a Data Scientist! Work on cutting-edge machine learning projects, analyze large datasets, and build predictive models. Strong Python skills and experience with TensorFlow/PyTorch required.',
'Flipkart', 
'Bangalore, India', 
false, 
'2025-03-10', 
1100000, 
1600000, 
'INTERMEDIATE', 
'ACTIVE', 
1, 
NOW(), 
NOW()),

('Mobile App Developer (React Native)', 
'Build cross-platform mobile applications using React Native. Work with a talented team to deliver high-quality mobile experiences. Experience with iOS and Android deployment is essential.',
'Paytm', 
'Noida, India', 
true, 
'2025-02-25', 
850000, 
1300000, 
'INTERMEDIATE', 
'ACTIVE', 
1, 
NOW(), 
NOW()),

('Python Django Developer', 
'Looking for a Python Django expert to build scalable backend systems. Work with PostgreSQL, REST APIs, and integrate with third-party services. Strong understanding of OOP and design patterns required.',
'Zomato', 
'Gurgaon, India', 
false, 
'2025-03-05', 
950000, 
1450000, 
'SENIOR', 
'ACTIVE', 
1, 
NOW(), 
NOW()),

('UI/UX Designer', 
'Creative UI/UX Designer needed to design beautiful and intuitive user experiences. Proficiency in Figma, Adobe XD, and understanding of design systems is must. Portfolio required.',
'Swiggy', 
'Bangalore, India', 
true, 
'2025-02-18', 
700000, 
1100000, 
'INTERMEDIATE', 
'ACTIVE', 
1, 
NOW(), 
NOW()),

('Product Manager', 
'Join as a Product Manager to lead product development from conception to launch. Work closely with engineering, design, and business teams. Strong analytical and communication skills required.',
'PhonePe', 
'Bangalore, India', 
false, 
'2025-03-15', 
2000000, 
3000000, 
'LEAD', 
'ACTIVE', 
1, 
NOW(), 
NOW()),

('Junior Java Developer', 
'Great opportunity for freshers and junior developers! Learn and grow with our experienced team. Basic knowledge of Java, Spring Boot, and SQL required. We provide comprehensive training.',
'TCS', 
'Chennai, India', 
false, 
'2025-02-28', 
400000, 
600000, 
'ENTRY', 
'ACTIVE', 
1, 
NOW(), 
NOW()),

('Cloud Architect', 
'Lead our cloud transformation initiative! Design and implement cloud solutions on AWS/Azure. Experience with microservices, serverless architecture, and infrastructure as code is essential.',
'Wipro', 
'Hyderabad, India', 
true, 
'2025-03-20', 
2500000, 
3500000, 
'LEAD', 
'ACTIVE', 
1, 
NOW(), 
NOW()),

('QA Automation Engineer', 
'Build and maintain automated test frameworks using Selenium, Cypress, or similar tools. Experience with CI/CD integration and performance testing is a plus. Detail-oriented professionals preferred.',
'HCL', 
'Noida, India', 
false, 
'2025-02-22', 
750000, 
1150000, 
'INTERMEDIATE', 
'ACTIVE', 
1, 
NOW(), 
NOW()),

('Blockchain Developer', 
'Exciting opportunity in blockchain technology! Work with Ethereum, Solidity, and Web3. Build decentralized applications and smart contracts. Strong understanding of cryptography required.',
'Tech Mahindra', 
'Pune, India', 
true, 
'2025-03-12', 
1300000, 
1900000, 
'SENIOR', 
'ACTIVE', 
1, 
NOW(), 
NOW()),

('Business Analyst', 
'Join our business intelligence team! Analyze business requirements, create documentation, and work with stakeholders. Strong SQL skills and experience with data visualization tools required.',
'Accenture', 
'Bangalore, India', 
false, 
'2025-02-28', 
800000, 
1250000, 
'INTERMEDIATE', 
'ACTIVE', 
1, 
NOW(), 
NOW()),

('Remote Full Stack Engineer', 
'100% remote position! Build modern web applications using MERN stack. Excellent communication skills and self-motivation are key. Flexible working hours with a great team culture.',
'Razorpay', 
'Remote', 
true, 
'2025-03-08', 
1100000, 
1700000, 
'SENIOR', 
'ACTIVE', 
1, 
NOW(), 
NOW());

-- Insert Job Requirements/Skills for each job
-- Format: (job_id, requirement)

-- Job 1: Senior Full Stack Developer
INSERT INTO job_requirements (job_id, requirement) VALUES
(1, 'Java'),
(1, 'Spring Boot'),
(1, 'React'),
(1, 'Node.js'),
(1, 'AWS'),
(1, 'Docker'),
(1, 'Microservices');

-- Job 2: Frontend React Developer  
INSERT INTO job_requirements (job_id, requirement) VALUES
(2, 'React'),
(2, 'TypeScript'),
(2, 'HTML5'),
(2, 'CSS3'),
(2, 'Redux'),
(2, 'REST API'),
(2, 'Git');

-- Job 3: Backend Java Developer
INSERT INTO job_requirements (job_id, requirement) VALUES
(3, 'Java'),
(3, 'Spring Framework'),
(3, 'SQL'),
(3, 'MySQL'),
(3, 'REST API'),
(3, 'JUnit'),
(3, 'Maven');

-- Job 4: DevOps Engineer
INSERT INTO job_requirements (job_id, requirement) VALUES
(4, 'Docker'),
(4, 'Kubernetes'),
(4, 'Jenkins'),
(4, 'AWS'),
(4, 'Linux'),
(4, 'Python'),
(4, 'CI/CD');

-- Job 5: Data Scientist
INSERT INTO job_requirements (job_id, requirement) VALUES
(5, 'Python'),
(5, 'Machine Learning'),
(5, 'TensorFlow'),
(5, 'Pandas'),
(5, 'NumPy'),
(5, 'SQL'),
(5, 'Statistics');

-- Job 6: Mobile App Developer
INSERT INTO job_requirements (job_id, requirement) VALUES
(6, 'Flutter'),
(6, 'Dart'),
(6, 'iOS'),
(6, 'Android'),
(6, 'REST API'),
(6, 'Git'),
(6, 'Firebase');

-- Job 7: Cloud Architect
INSERT INTO job_requirements (job_id, requirement) VALUES
(7, 'AWS'),
(7, 'Azure'),
(7, 'Cloud Architecture'),
(7, 'Terraform'),
(7, 'Docker'),
(7, 'Kubernetes'),
(7, 'Python');

-- Job 8: QA Automation Engineer
INSERT INTO job_requirements (job_id, requirement) VALUES
(8, 'Selenium'),
(8, 'Java'),
(8, 'TestNG'),
(8, 'Cucumber'),
(8, 'REST API Testing'),
(8, 'JMeter'),
(8, 'Git');

-- Job 9: UI/UX Designer
INSERT INTO job_requirements (job_id, requirement) VALUES
(9, 'Figma'),
(9, 'Adobe XD'),
(9, 'Sketch'),
(9, 'Prototyping'),
(9, 'User Research'),
(9, 'HTML/CSS'),
(9, 'Design Systems');

-- Job 10: Product Manager
INSERT INTO job_requirements (job_id, requirement) VALUES
(10, 'Product Strategy'),
(10, 'Agile/Scrum'),
(10, 'JIRA'),
(10, 'Roadmap Planning'),
(10, 'Stakeholder Management'),
(10, 'SQL'),
(10, 'Analytics');

-- Job 11: Python Developer
INSERT INTO job_requirements (job_id, requirement) VALUES
(11, 'Python'),
(11, 'Django'),
(11, 'Flask'),
(11, 'PostgreSQL'),
(11, 'REST API'),
(11, 'Docker'),
(11, 'Git');

-- Job 12: Cybersecurity Analyst
INSERT INTO job_requirements (job_id, requirement) VALUES
(12, 'Security Analysis'),
(12, 'Penetration Testing'),
(12, 'Network Security'),
(12, 'SIEM Tools'),
(12, 'Firewall'),
(12, 'Linux'),
(12, 'Python');

-- Job 13: Machine Learning Engineer
INSERT INTO job_requirements (job_id, requirement) VALUES
(13, 'Python'),
(13, 'TensorFlow'),
(13, 'PyTorch'),
(13, 'Deep Learning'),
(13, 'NLP'),
(13, 'Computer Vision'),
(13, 'AWS SageMaker');

-- Job 14: Database Administrator
INSERT INTO job_requirements (job_id, requirement) VALUES
(14, 'MySQL'),
(14, 'PostgreSQL'),
(14, 'Oracle'),
(14, 'SQL'),
(14, 'Backup & Recovery'),
(14, 'Performance Tuning'),
(14, 'Linux');

-- Job 15: Blockchain Developer
INSERT INTO job_requirements (job_id, requirement) VALUES
(15, 'Solidity'),
(15, 'Ethereum'),
(15, 'Smart Contracts'),
(15, 'Web3.js'),
(15, 'JavaScript'),
(15, 'Cryptography'),
(15, 'Node.js');

-- Job 16: Angular Developer
INSERT INTO job_requirements (job_id, requirement) VALUES
(16, 'Angular'),
(16, 'TypeScript'),
(16, 'RxJS'),
(16, 'HTML5'),
(16, 'CSS3'),
(16, 'REST API'),
(16, 'Git');

-- Job 17: iOS Developer
INSERT INTO job_requirements (job_id, requirement) VALUES
(17, 'Swift'),
(17, 'iOS SDK'),
(17, 'Xcode'),
(17, 'UIKit'),
(17, 'Core Data'),
(17, 'REST API'),
(17, 'Git');

-- Job 18: Android Developer  
INSERT INTO job_requirements (job_id, requirement) VALUES
(18, 'Kotlin'),
(18, 'Java'),
(18, 'Android SDK'),
(18, 'Android Studio'),
(18, 'Room Database'),
(18, 'REST API'),
(18, 'Git');

-- Job 19: Business Analyst
INSERT INTO job_requirements (job_id, requirement) VALUES
(19, 'Business Analysis'),
(19, 'SQL'),
(19, 'Excel'),
(19, 'Tableau'),
(19, 'Power BI'),
(19, 'JIRA'),
(19, 'Documentation');

SELECT 'Sample jobs and requirements inserted successfully!' as message;
SELECT COUNT(*) as total_jobs FROM jobs;
SELECT COUNT(*) as total_requirements FROM job_requirements;
