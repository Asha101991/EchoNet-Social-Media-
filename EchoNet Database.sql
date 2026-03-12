-- Create Database
CREATE DATABASE echonet;

USE echonet;

-- ========================
-- USER SHEET 
--  =======================
CREATE TABLE users (
    user_id INT PRIMARY KEY AUTO_INCREMENT,
    username VARCHAR(50) UNIQUE,
    email VARCHAR(120) UNIQUE
    password_hash VARCHAR(255),
    profile_pic VARCHAR(255),
    bio TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- ========================
-- POST SHEET
-- ========================
CREATE TABLE comments (
    comment_id INT PRIMARY KEY AUTO_INCREMENT, 
    post_id INT,
    user_id INT,
    comment_at TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (post_id) REFERENCES post(post_id)
        ON DELETE CASCADE, 
    FOREIGN KEY (user_id) REFERENCES user(user_id)
        ON DELETE CASCADE
    );

    -- =====================
    -- LIKES SHEET
    -- =====================
CREATE TABLE followers (
    follow_id INT PRIMARY KEY AUTO_INCREMENT ,
    follow_id INT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (post_id) REFERENCES post(post_id)
        ON DELETE CASADE,
    FOREIGN KEY (user_id) REFERENCES user(user_id)
        ON DELETE CASCADE 
);

-- =======================
-- MESSAGE SHEET (CHAT)
-- =======================
CREATE TABLE messages (
    messgae_id INT PRIMARY KEY AUTO_INCREMENT,
    sender_id INT,
    receiver_id INT,
    message_text TEXT,
    is_read BOOLEAN DEFAULT FALSE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (sender_id) REFERENCES users(user_id)
        ON DELETE CASCADE,
    FOREIGN KEY (receiver_id) REFERENCES users(user_id)
        ON DELETE CASCADE   
);

