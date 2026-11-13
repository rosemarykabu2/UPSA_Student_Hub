select current_database();

CREATE TABLE students(
student_id SERIAL PRIMARY KEY,
full_name VARCHAR(100) NOT NULL,
email VARCHAR(150) UNIQUE NOT NULL,
password_hash VARCHAR(255) NOT NULL,
created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE admins(
admins_id SERIAL PRIMARY KEY,
username VARCHAR(100) NOT NULL,
email VARCHAR(150) UNIQUE NOT NULL,
password_hash VARCHAR(255) NOT NULL,
created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE news(
news_id SERIAL PRIMARY KEY,
title VARCHAR(200) NOT NULL,
content TEXT UNIQUE NOT NULL,
image_url VARCHAR(255),
published_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
is_published BOOLEAN DEFAULT TRUE
);

CREATE TABLE services(
service_id SERIAL PRIMARY KEY,
service_name VARCHAR(100) NOT NULL,
description TEXT,
platform_url TEXT NOT NULL,
icon VARCHAR(100),
is_active BOOLEAN DEFAULT TRUE
);

CREATE TABLE feedback (
    feedback_id SERIAL PRIMARY KEY,
    full_name VARCHAR(100) NOT NULL,
    email VARCHAR(150) NOT NULL,
    message TEXT NOT NULL,
    submitted_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE deadlines (
    deadline_id SERIAL PRIMARY KEY,
    title VARCHAR(150) NOT NULL,
    description TEXT,
    deadline_date TIMESTAMP NOT NULL,
    is_active BOOLEAN DEFAULT TRUE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
SELECT table_name
FROM information_schema.tables
WHERE table_schema = 'public'
AND table_type = 'BASE TABLE'
ORDER BY table_name;

INSERT INTO services (service_name, description, platform_url, icon)
VALUES
('Student Portal', 'Access student academic records.', 'https://www.upsa.edu.gh/', 'graduation-cap'),
('Fees Payment', 'Pay university fees online.', 'https://www.upsa.edu.gh/', 'wallet'),
('Learning Management System', 'Access learning materials and courses.', 'https://www.upsa.edu.gh/', 'book-open'),
('Official UPSA Website', 'Visit the official university website.', 'https://www.upsa.edu.gh/', 'globe');
Select * from services;

INSERT INTO news (title, content, is_published)
VALUES
(
    'UPSA Welcomes Fresh Students',
    'UPSA welcomes fresh students for the 2026/2027 academic year.',
    TRUE
),
(
    'UPSA Celebrates the Class of 2026',
    'The university celebrates students graduating in 2026.',
    TRUE
),
(
    'Important Registration Announcement',
    'Students are reminded to complete their course registration before the deadline.',
    FALSE
);
INSERT INTO news (title, content, is_published)
VALUES (
    'UPSA Launches Laptop Assembly Plant',
    'UPSA launches a laptop assembly plant to promote practical technology education and provide students with hands-on learning opportunities.',
    TRUE
);
select * from news;

INSERT INTO deadlines (title, description, deadline_date)
VALUES (
    'Course Registration Deadline',
    'Students are reminded to complete their course registration before the closing date.',
    '2026-11-30 23:59:00'
);
select * from deadlines;

INSERT INTO feedback (full_name, email, message)
VALUES
(
    'Rosemary Kabu',
    'rosemary@example.com',
    'I suggest improving access to student services on the platform.'
),
(
    'John Mensah',
    'john@example.com',
    'Please provide more information about course registration deadlines.'
);
select * from feedback;


