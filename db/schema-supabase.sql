-- Supabase Compatible Schema
-- PostgreSQL dialect

-- Create ENUM types first
CREATE TYPE user_role AS ENUM ('admin', 'applicant', 'employer');
CREATE TYPE job_duration AS ENUM ('part-time', 'full-time', 'contract', 'internship');
CREATE TYPE job_type AS ENUM ('remote', 'onsite', 'hybrid');
CREATE TYPE job_status AS ENUM ('active', 'closed');
CREATE TYPE experience_level AS ENUM ('entry-level', 'mid-level', 'senior-level', 'expert-level');
CREATE TYPE applicant_status AS ENUM ('new', 'reviewed', 'shortlisted', 'rejected');

-- Users Table
CREATE TABLE users (
    userId VARCHAR(255) PRIMARY KEY, 
    fullname VARCHAR(255) NOT NULL,
    username VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL UNIQUE,
    phone VARCHAR(20) NOT NULL,
    password VARCHAR(255) NOT NULL, 
    linkedIn VARCHAR(255),
    role user_role NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Categories Table
CREATE TABLE categories (
    id SERIAL PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    numberOfJobs INT NOT NULL DEFAULT 0,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Jobs Table
CREATE TABLE jobs (
    id SERIAL PRIMARY KEY,
    postedBy VARCHAR(255) NOT NULL,
    category INT NOT NULL,
    title VARCHAR(255) NOT NULL,
    companyName VARCHAR(255) NOT NULL,
    location VARCHAR(255) NOT NULL,
    salaryRange VARCHAR(255),
    duration job_duration NOT NULL,
    type job_type NOT NULL,
    datePosted TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    skills TEXT,
    status job_status DEFAULT 'active' NOT NULL,
    numberOfApplicants INT DEFAULT 0 NOT NULL,
    description TEXT NOT NULL,
    requirements TEXT NOT NULL,
    department VARCHAR(255) NOT NULL,
    experience experience_level NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (postedBy) REFERENCES users(userId) ON DELETE CASCADE,
    FOREIGN KEY (category) REFERENCES categories(id) ON DELETE CASCADE
);

-- Testimonials Table
CREATE TABLE testimonials (
    id SERIAL PRIMARY KEY,
    userId VARCHAR(255),
    review TEXT NOT NULL,
    name VARCHAR(255) NOT NULL,
    occupation VARCHAR(255) NOT NULL,
    image VARCHAR(255) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (userId) REFERENCES users(userId) ON DELETE SET NULL
);

-- Applicants Table
CREATE TABLE applicants (
    id SERIAL PRIMARY KEY,
    userId VARCHAR(255) NOT NULL,
    jobId INT NOT NULL,
    cv VARCHAR(255) NOT NULL,
    status applicant_status DEFAULT 'new' NOT NULL,
    experience INT DEFAULT 0 NOT NULL,
    joiningDate DATE,
    coverLetter TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (userId) REFERENCES users(userId) ON DELETE CASCADE,
    FOREIGN KEY (jobId) REFERENCES jobs(id) ON DELETE CASCADE
);

-- Featured Jobs Table
CREATE TABLE featuredJobs (
    id SERIAL PRIMARY KEY,
    jobId INT NOT NULL UNIQUE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (jobId) REFERENCES jobs(id) ON DELETE CASCADE
);

-- Create indexes for better performance
CREATE INDEX idx_users_email ON users(email);
CREATE INDEX idx_users_role ON users(role);
CREATE INDEX idx_jobs_category ON jobs(category);
CREATE INDEX idx_jobs_postedBy ON jobs(postedBy);
CREATE INDEX idx_jobs_status ON jobs(status);
CREATE INDEX idx_applicants_userId ON applicants(userId);
CREATE INDEX idx_applicants_jobId ON applicants(jobId);
CREATE INDEX idx_applicants_status ON applicants(status);
CREATE INDEX idx_testimonials_userId ON testimonials(userId);
