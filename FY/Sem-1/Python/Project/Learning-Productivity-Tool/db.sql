CREATE DATABASE LearningProductivityDB;
USE LearningProductivityDB;
CREATE TABLE users (
    userId INT AUTO_INCREMENT PRIMARY KEY,
    fullName VARCHAR(100) NOT NULL,
    username VARCHAR(50) NOT NULL UNIQUE,
    email VARCHAR(100) NOT NULL UNIQUE,
    passwordHash VARCHAR(255) NOT NULL,
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP
); 
CREATE TABLE subjects (
    subjectId INT AUTO_INCREMENT PRIMARY KEY,
    userId INT NOT NULL,
    subjectName VARCHAR(100) NOT NULL,
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT fkSubject_user
    FOREIGN KEY (userId) REFERENCES users(userId)
    ON DELETE CASCADE
);
CREATE TABLE studySessions (
    sessionId INT AUTO_INCREMENT PRIMARY KEY,
    userId INT NOT NULL,
    subjectId INT NOT NULL,
    startTime DATETIME NOT NULL,
    endTime DATETIME NOT NULL,
    duration FLOAT NOT NULL,
    focusLevel INT NOT NULL CHECK (focusLevel BETWEEN 1 AND 10),
    difficultyLevel INT NOT NULL CHECK (difficultyLevel BETWEEN 1 AND 5),
    notes TEXT,
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT fkSessionUser
    FOREIGN KEY (userId) REFERENCES users(userId)
    ON DELETE CASCADE,

    CONSTRAINT fkSessionSubject
    FOREIGN KEY (subjectId) REFERENCES subjects(subjectId)
    ON DELETE CASCADE
);
CREATE TABLE productivityMetrics (
    metricId INT AUTO_INCREMENT PRIMARY KEY,
    userId INT NOT NULL,
    totalHours FLOAT DEFAULT 0,
    avgFocus FLOAT DEFAULT 0,
    productivityScore FLOAT DEFAULT 0,
    bestStudyHour INT,
    calculated_at DATETIME DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT fkMetricUser
    FOREIGN KEY (userId) REFERENCES users(userId)
    ON DELETE CASCADE
);
CREATE TABLE fatigueAnalysis (
    fatigueId INT AUTO_INCREMENT PRIMARY KEY,
    userId INT NOT NULL,
    fatigueScore FLOAT NOT NULL,
    fatigueLevel VARCHAR(20) NOT NULL,
    analysisDate DATETIME DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT fkFatigueUser
    FOREIGN KEY (userId) REFERENCES users(userId)
    ON DELETE CASCADE
);
CREATE TABLE goals (
    goalId INT AUTO_INCREMENT PRIMARY KEY,
    userId INT NOT NULL,
    targetHours FLOAT NOT NULL,
    startDate DATE NOT NULL,
    endDate DATE NOT NULL,
    status VARCHAR(20) DEFAULT 'Active',
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT fkGoalUser
    FOREIGN KEY (userId) REFERENCES users(userId)
    ON DELETE CASCADE
);
CREATE TABLE reports (
    reportId INT AUTO_INCREMENT PRIMARY KEY,
    userId INT NOT NULL,
    reportType VARCHAR(20) NOT NULL,
    totalHours FLOAT,
    avgFocus FLOAT,
    productivityScore FLOAT,
    generated_at DATETIME DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT fkReportUser
    FOREIGN KEY (userId) REFERENCES users(userId)
    ON DELETE CASCADE
);
CREATE TABLE notifications (
    notificationId INT AUTO_INCREMENT PRIMARY KEY,
    userId INT NOT NULL,
    message TEXT NOT NULL,
    status VARCHAR(20) DEFAULT 'Unread',
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT fkNotificationUser
    FOREIGN KEY (userId) REFERENCES users(userId)
    ON DELETE CASCADE
);
CREATE TABLE settings (
    settingId INT AUTO_INCREMENT PRIMARY KEY,
    userId INT NOT NULL,
    theme VARCHAR(20) DEFAULT 'Light',
    reminderTime TIME,
    updatedAt DATETIME DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT fkSettingUser
    FOREIGN KEY (userId) REFERENCES users(userId)
    ON DELETE CASCADE
);
CREATE TABLE settingsNew (
    settingId INT AUTO_INCREMENT PRIMARY KEY,
    userId INT NOT NULL,
    theme VARCHAR(20) DEFAULT 'Light',
    reminderTime TIME,
    notifyGoal TINYINT DEFAULT 1,
    notifyFatigue TINYINT DEFAULT 1,
    notifyStudy TINYINT DEFAULT 1,
    autoLogout INT DEFAULT 0,
    updatedAt DATETIME DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT fkSettingUserNew
        FOREIGN KEY (userId) REFERENCES users(userId)
        ON DELETE CASCADE
);