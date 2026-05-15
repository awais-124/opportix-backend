-- Supabase Compatible Insert Data
-- PostgreSQL dialect - Phase 1: Users and Categories

-- Insert Users (Applicants)
INSERT INTO users (userId, fullname, username, email, phone, password, linkedIn, role) VALUES
('6778eb34de1be', 'Ali Khan', 'alikhan123', 'alikhan@gmail.com', '+92-300-1234567', 'AliKhan@123', 'alikhan', 'applicant'),
('6778eb34de1e3', 'Sara Ahmed', 'saraahmed', 'sara.ahmed@gmail.com', '+92-301-9876543', 'Sara@2023', 'saraahmed', 'applicant'),
('6778eb34de215', 'Hassan Raza', 'hassanraza', 'hassan.raza@gmail.com', '+92-302-1122334', 'Hassan#456', 'hassanraza', 'applicant'),
('6778eb34de1e8', 'Ayesha Malik', 'ayeshahere', 'ayesha.malik@gmail.com', '+92-303-2233445', 'Ayesha@789', 'ayeshahere', 'applicant'),
('6778eb34de1ea', 'Usman Tariq', 'usmantariq', 'usman.tariq@gmail.com', '+92-304-3344556', 'Usman@456', 'usmantariq', 'applicant'),
('6778eb34de1ec', 'Nida Qureshi', 'nidaq', 'nida.qureshi@gmail.com', '+92-305-4455667', 'Nida#2023', 'nidaq', 'applicant'),
('6778eb34de1ee', 'Bilal Zafar', 'bilalzafar', 'bilal.zafar@gmail.com', '+92-306-5566778', 'Bilal@123', 'bilalzafar', 'applicant'),
('6778eb34de1f0', 'Maham Shah', 'mahamshah', 'maham.shah@gmail.com', '+92-307-6677889', 'Maham#789', 'mahamshah', 'applicant'),
('6778eb34de1f2', 'Adnan Ali', 'adnanalik', 'adnan.ali@gmail.com', '+92-308-7788990', 'Adnan@456', 'adnanalik', 'applicant'),
('6778eb34de1f4', 'Zainab Fatima', 'zainabf', 'zainab.fatima@gmail.com', '+92-309-8899001', 'Zainab#123', 'zainabf', 'applicant'),
('6778eb34de1f7', 'Fahad Hussain', 'fahadhussain', 'fahad.hussain@gmail.com', '+92-310-9911223', 'Fahad@2023', 'fahadhussain', 'employer'),
('6778eb34de200', 'Nabeel Sheikh', 'nabeelsheikh', 'nabeel.sheikh@gmail.com', '+92-311-1022334', 'Nabeel#789', 'nabeelsheikh', 'employer'),
('6778eb34de203', 'Amna Javed', 'amnajaved', 'amna.javed@gmail.com', '+92-312-2133445', 'Amna@456', 'amnajaved', 'employer'),
('6778eb34de210', 'Kashif Riaz', 'kashifriaz', 'kashif.riaz@gmail.com', '+92-315-5466778', 'Kashif@789', 'kashifriaz', 'employer'),
('6778eb34de216', 'Asma Khalid', 'asmakhalid', 'asma.khalid@gmail.com', '+92-316-6577889', 'Asma#456', 'asmakhalid', 'employer'),
('6778eb34de220', 'Hammad Shah', 'hammadshah', 'hammad.shah@gmail.com', '+92-317-7688990', 'Hammad@2023', 'hammadshah', 'employer'),
('6778eb34de225', 'Sidra Khan', 'sidrakhan', 'sidra.khan@gmail.com', '+92-318-8799001', 'Sidra#Admin', 'sidrakhan', 'employer'),
('6778eb34de230', 'Tariq Mahmood', 'tariqmahmood', 'tariq.mahmood@gmail.com', '+92-319-9900112', 'Tariq@456', 'tariqmahmood', 'employer'),
('6778eb34de235', 'Owais Siddiqui', 'owaissiddiqui', 'owais.siddiqui@gmail.com', '+92-313-3244556', 'Owais#Admin', 'owaissiddiqui', 'admin'),
('6778eb34de4ec', 'Sana Farooq', 'sanafarooq', 'sana.farooq@gmail.com', '+92-314-4355667', 'Sana@Admin', 'sanafarooq', 'admin')
ON CONFLICT (userId) DO NOTHING;

-- Insert Categories
INSERT INTO categories (title, numberOfJobs) VALUES
('Information Technology', 10),
('Armed Forces', 10),
('Engineering', 10),
('Healthcare', 10),
('Education', 10),
('Sales & Marketing', 10),
('Telecommunications', 10),
('Government', 8)
ON CONFLICT DO NOTHING;
