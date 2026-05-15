-- Supabase Compatible Insert Data
-- PostgreSQL dialect - Phase 3: Featured Jobs, Testimonials, and Applicants (run after Phase 2)

INSERT INTO featuredJobs (jobId) VALUES
(1), (5), (12), (18), (24), (32), (40), (47), (53), (60)
ON CONFLICT (jobId) DO NOTHING;

INSERT INTO testimonials (userId, review, name, occupation, image) VALUES
('6778eb34de1be', 'JobSpark made job hunting so much easier for me! The intuitive interface and detailed job descriptions are fantastic.', 'Ali Khan', 'Software Engineer', 'ali_khan.jpg'),
('6778eb34de1e3', 'I secured my dream job thanks to JobSpark. Highly recommended for job seekers!', 'Sara Ahmed', 'Graphic Designer', 'sara_ahmed.jpg'),
('6778eb34de1ee', 'The job recommendations on JobSpark are spot-on. It feels personalized just for me.', 'Hassan Raza', 'Civil Engineer', 'hassan_raza.jpg'),
('6778eb34de1e8', 'As an employer, I love how easy it is to post and manage job listings. Great platform!', 'Ayesha Malik', 'HR Manager', 'ayesha_malik.jpg'),
('6778eb34de215', 'JobSpark connects you with genuine employers. I''ve had great experiences with this platform.', 'Usman Tariq', 'Marketing Specialist', 'usman_tariq.jpg'),
('6778eb34de210', 'The customer support team at JobSpark is excellent! They helped me resolve my issue quickly.', 'Nida Qureshi', 'Teacher', 'nida_qureshi.jpg'),
('6778eb34de220', 'I appreciate the transparency of the hiring process through JobSpark. It''s a game-changer!', 'Bilal Zafar', 'Data Analyst', 'bilal_zafar.jpg'),
('6778eb34de225', 'I''ve been able to hire top talent for my company using JobSpark. Great tool for employers.', 'Maham Shah', 'Recruiter', 'maham_shah.jpg'),
('6778eb34de235', 'JobSpark simplifies everything about hiring and applying. A must-use platform!', 'Fahad Hussain', 'Operations Manager', 'fahad_hussain.jpg'),
('6778eb34de216', 'The featured jobs section is really helpful. I found my current position through it!', 'Amna Javed', 'Accountant', 'amna_javed.jpg')
ON CONFLICT DO NOTHING;

INSERT INTO applicants (userId, jobId, cv, status, experience, joiningDate, coverLetter) VALUES
('6778eb34de1be', 12, 'Ali_Khan.pdf', 'new', 3, NULL, 'I am eager to learn and grow in this role.'),
('6778eb34de1e3', 25, 'Sara_Ahmed.pdf', 'reviewed', 2, NULL, 'Looking forward to contributing to this team.'),
('6778eb34de215', 8, 'Hassan_Raza.pdf', 'shortlisted', 5, '2025-02-20', 'I bring strong experience and enthusiasm.'),
('6778eb34de1e8', 17, 'Ayesha_Malik.pdf', 'new', 1, NULL, 'Excited to contribute innovative ideas.'),
('6778eb34de1ea', 9, 'Usman_Tariq.pdf', 'rejected', 6, NULL, 'Ready to leverage my expertise for this position.'),
('6778eb34de1ec', 40, 'Nida_Qureshi.pdf', 'shortlisted', 4, '2025-03-05', 'Passionate about making a difference in this role.'),
('6778eb34de1ee', 32, 'Bilal_Zafar.pdf', 'reviewed', 7, NULL, 'Dedicated and experienced in this field.'),
('6778eb34de1f0', 29, 'Maham_Shah.pdf', 'new', 0, NULL, 'Excited to take on new challenges.'),
('6778eb34de1f2', 7, 'Adnan_Ali.pdf', 'shortlisted', 3, '2025-01-15', 'Looking forward to collaborating with your team.'),
('6778eb34de1f4', 65, 'Zainab_Fatima.pdf', 'reviewed', 2, NULL, 'Eager to contribute innovative solutions.'),
('6778eb34de1f7', 50, 'Fahad_Hussain.pdf', 'new', 5, NULL, 'Looking to apply my extensive experience.'),
('6778eb34de200', 3, 'Nabeel_Sheikh.pdf', 'reviewed', 6, NULL, 'Ready to bring leadership and innovation.'),
('6778eb34de203', 18, 'Amna_Javed.pdf', 'shortlisted', 4, '2025-02-12', 'Creative problem-solving is my strength.'),
('6778eb34de210', 60, 'Kashif_Riaz.pdf', 'new', 2, NULL, 'I am highly motivated to excel in this position.'),
('6778eb34de216', 45, 'Asma_Khalid.pdf', 'rejected', 3, NULL, 'Ready to make an impact with my skills.'),
('6778eb34de220', 11, 'Hammad_Shah.pdf', 'new', 4, NULL, 'Excited to bring value to your organization.'),
('6778eb34de225', 24, 'Sidra_Khan.pdf', 'shortlisted', 5, '2025-02-25', 'Focused on delivering exceptional results.'),
('6778eb34de230', 66, 'Tariq_Mahmood.pdf', 'reviewed', 7, NULL, 'Committed to delivering high-quality work.'),
('6778eb34de235', 48, 'Owais_Siddiqui.pdf', 'new', 6, NULL, 'Excited to contribute my diverse skills.'),
('6778eb34de4ec', 23, 'Sana_Farooq.pdf', 'shortlisted', 8, '2025-03-10', 'Motivated to excel in this field.')
ON CONFLICT DO NOTHING;
