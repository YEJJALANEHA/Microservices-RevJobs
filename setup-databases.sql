-- RevJobs Database Setup Script
-- Run this in MySQL to create all required databases

CREATE DATABASE IF NOT EXISTS revjobs_users;
CREATE DATABASE IF NOT EXISTS revjobs_jobs;
CREATE DATABASE IF NOT EXISTS revjobs_applications;
CREATE DATABASE IF NOT EXISTS revjobs_messages;
CREATE DATABASE IF NOT EXISTS revjobs_notifications;

-- Grant permissions (adjust username if needed)
GRANT ALL PRIVILEGES ON revjobs_users.* TO 'root'@'localhost';
GRANT ALL PRIVILEGES ON revjobs_jobs.* TO 'root'@'localhost';
GRANT ALL PRIVILEGES ON revjobs_applications.* TO 'root'@'localhost';
GRANT ALL PRIVILEGES ON revjobs_messages.* TO 'root'@'localhost';
GRANT ALL PRIVILEGES ON revjobs_notifications.* TO 'root'@'localhost';

FLUSH PRIVILEGES;

-- Show created databases
SHOW DATABASES LIKE 'revjobs_%';