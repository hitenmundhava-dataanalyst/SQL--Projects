-- --------------------------- Library Management Database---------------------------------------
#- use a school database In the Previous project student Records
use school;

# create a table books
CREATE TABLE Books (
    book_id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT UNIQUE,
    title VARCHAR(255),
    author_id INT,
    genre VARCHAR(100),
    published_year INT
);

INSERT INTO Books (title, author_id, published_year, genre) VALUES
-- Self-Help Books
('The 7 Habits of Highly Effective People', 1, 1989, 'Self-Help'),
('How to Win Friends and Influence People', 2, 1936, 'Self-Help'),
('Atomic Habits', 3, 2018, 'Self-Help'),
('The Power of Now', 4, 1997, 'Self-Help'),
('Think and Grow Rich', 5, 1937, 'Self-Help'),
('The Subtle Art of Not Giving a F*ck', 6, 2016, 'Self-Help'),
('Deep Work', 7, 2016, 'Self-Help'),
('Can''t Hurt Me', 8, 2018, 'Self-Help'),
('The 5 AM Club', 9, 2018, 'Self-Help'),
('The Monk Who Sold His Ferrari', 9, 1997, 'Self-Help'),
('Who Moved My Cheese?', 10, 1998, 'Self-Help'),
('Awaken the Giant Within', 11, 1991, 'Self-Help'),
('Unlimited Power', 11, 1986, 'Self-Help'),
('You Are a Badass', 12, 2013, 'Self-Help'),
('The Magic of Thinking Big', 13, 1959, 'Self-Help'),
('The Courage to Be Disliked', 14, 2013, 'Self-Help'),
('Man''s Search for Meaning', 15, 1946, 'Self-Help'),
('Make Your Bed', 16, 2017, 'Self-Help'),
('The Happiness Advantage', 17, 2010, 'Self-Help'),
('Start with Why', 18, 2009, 'Self-Help'),
('Leaders Eat Last', 18, 2014, 'Self-Help'),
('The Leader Who Had No Title', 9, 2010, 'Self-Help'),
('Grit', 19, 2016, 'Self-Help'),
('Mindset: The New Psychology of Success', 20, 2006, 'Self-Help'),
('Drive: The Surprising Truth About Motivation', 21, 2009, 'Self-Help'),
('The War of Art', 22, 2002, 'Self-Help'),

-- Data Analytics / Data Science Books
('Python for Data Analysis', 23, 2017, 'Data Analytics'),
('Hands-On Machine Learning with Scikit-Learn and TensorFlow', 24, 2017, 'Data Science'),
('Data Science for Business', 25, 2013, 'Data Science'),
('Storytelling with Data', 26, 2015, 'Data Visualization'),
('The Data Warehouse Toolkit', 27, 2014, 'Data Engineering'),
('Fundamentals of Data Engineering', 28, 2022, 'Data Engineering'),
('Practical Statistics for Data Scientists', 29, 2020, 'Statistics'),
('An Introduction to Statistical Learning', 30, 2013, 'Statistics'),
('Machine Learning Yearning', 31, 2018, 'Machine Learning'),
('The Hundred-Page Machine Learning Book', 32, 2019, 'Machine Learning'),
('SQL for Data Analytics', 33, 2020, 'Data Analytics'),
('Data Analytics Made Accessible', 34, 2018, 'Data Analytics'),
('Data Science from Scratch', 35, 2015, 'Data Science'),
('Business Intelligence Guidebook', 36, 2014, 'Business Intelligence'),
('Big Data: Principles and Best Practices', 37, 2016, 'Big Data'),
('Applied Predictive Analytics', 38, 2014, 'Data Science'),
('Deep Learning with Python', 39, 2017, 'Deep Learning'),
('Power BI Cookbook', 40, 2018, 'Business Intelligence'),
('Mastering Tableau', 41, 2019, 'Data Visualization'),
('Data Mining: Concepts and Techniques', 42, 2011, 'Data Mining'),
('Artificial Intelligence: A Modern Approach', 43, 2010, 'Artificial Intelligence'),
('R for Data Science', 44, 2016, 'Data Science'),
('Fundamentals of Business Analytics', 45, 2019, 'Business Analytics'),
('Data Visualization with Python and JavaScript', 46, 2015, 'Data Visualization');

#-- create a table Authors
CREATE TABLE Authors (
    author_id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255),
    nationality VARCHAR(100)
);

# -- Insert data into Authors
INSERT INTO Authors (name, nationality) VALUES
-- Self-Help Authors
('Stephen R. Covey', 'USA'),                  -- 1
('Dale Carnegie', 'USA'),                     -- 2
('James Clear', 'USA'),                       -- 3
('Eckhart Tolle', 'Germany'),                 -- 4
('Napoleon Hill', 'USA'),                     -- 5
('Mark Manson', 'USA'),                       -- 6
('Cal Newport', 'USA'),                       -- 7
('David Goggins', 'USA'),                     -- 8
('Robin Sharma', 'Canada'),                   -- 9
('Spencer Johnson', 'USA'),                   -- 10
('Tony Robbins', 'USA'),                      -- 11
('Jen Sincero', 'USA'),                       -- 12
('David J. Schwartz', 'USA'),                 -- 13
('Ichiro Kishimi & Fumitake Koga', 'Japan'),  -- 14
('Viktor E. Frankl', 'Austria'),              -- 15
('Admiral William H. McRaven', 'USA'),        -- 16
('Shawn Achor', 'USA'),                       -- 17
('Simon Sinek', 'UK/USA'),                    -- 18
('Angela Duckworth', 'USA'),                  -- 19
('Carol S. Dweck', 'USA'),                    -- 20
('Daniel H. Pink', 'USA'),                    -- 21
('Steven Pressfield', 'USA'),                 -- 22

-- Data Analytics / Data Science Authors
('Wes McKinney', 'USA'),                      -- 23
('Aurélien Géron', 'France'),                 -- 24
('Foster Provost & Tom Fawcett', 'USA'),      -- 25
('Cole Nussbaumer Knaflic', 'USA'),           -- 26
('Ralph Kimball', 'USA'),                     -- 27
('Joe Reis & Matt Housley', 'USA'),           -- 28
('Peter Bruce & Andrew Bruce', 'USA'),        -- 29
('Gareth James, Daniela Witten, Trevor Hastie, Robert Tibshirani', 'USA'), -- 30
('Andrew Ng', 'USA'),                         -- 31
('Andriy Burkov', 'Canada'),                  -- 32
('Upom Malik, Matt Goldwasser', 'USA'),       -- 33
('Anil Maheshwari', 'India'),                 -- 34
('Joel Grus', 'USA'),                         -- 35
('Rick Sherman', 'USA'),                      -- 36
('Sam R. Alapati', 'USA'),                    -- 37
('Dean Abbott', 'USA'),                       -- 38
('François Chollet', 'France'),               -- 39
('Brett Powell', 'USA'),                      -- 40
('David Baldwin', 'USA'),                     -- 41
('Jiawei Han, Micheline Kamber', 'China/Canada'), -- 42
('Stuart Russell & Peter Norvig', 'USA'),     -- 43
('Hadley Wickham & Garrett Grolemund', 'New Zealand/USA'), -- 44
('Ramesh Sharda', 'India'),                   -- 45
('Kyran Dale', 'UK');                         -- 46


CREATE TABLE Borrowers (
    borrow_id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    book_id BIGINT UNSIGNED NOT NULL,
    student_name VARCHAR(255),
    borrow_date DATE,
    return_date DATE,
    FOREIGN KEY (book_id) REFERENCES Books(book_id)
);

INSERT INTO Borrowers (student_name, book_id, borrow_date, return_date) VALUES
('Aarav Patel', 1, '2025-08-01', '2025-08-15'),
('Priya Sharma', 3, '2025-08-02', '2025-08-16'),
('Rohan Mehta', 5, '2025-08-03', '2025-08-17'),
('Ishita Verma', 8, '2025-08-05', '2025-08-20'),
('Kunal Desai', 10, '2025-08-06', NULL),  -- Not returned yet
('Sneha Kapoor', 12, '2025-08-07', '2025-08-21'),
('Aditya Joshi', 15, '2025-08-08', '2025-08-22'),
('Meera Iyer', 18, '2025-08-09', NULL),  -- Still borrowed
('Raj Malhotra', 20, '2025-08-10', '2025-08-24'),
('Ananya Rao', 22, '2025-08-11', '2025-08-25'),
('Vikram Nair', 25, '2025-08-12', '2025-08-26'),
('Neha Singh', 28, '2025-08-13', NULL),  -- Still borrowed
('Siddharth Jain', 30, '2025-08-14', '2025-08-28'),
('Ritika Shah', 33, '2025-08-15', '2025-08-29'),
('Harsh Gupta', 35, '2025-08-16', NULL),  -- Still borrowed
('Divya Menon', 38, '2025-08-17', '2025-08-31'),
('Arjun Khanna', 40, '2025-08-18', '2025-09-01'),
('Pooja Agarwal', 43, '2025-08-19', NULL),  -- Still borrowed
('Manish Bhatia', 45, '2025-08-20', NULL),  -- Still borrowed
('Tanvi Chawla', 48, '2025-08-20', '2025-09-05');

# -- Find books borrowed by a student
SELECT books.book_id,Books.title, Authors.name AS author, Borrowers.student_name, 
       Borrowers.borrow_date, Borrowers.return_date
FROM Borrowers
INNER JOIN Books ON Borrowers.book_id = Books.book_id
INNER JOIN Authors ON Books.author_id = Authors.author_id
WHERE Borrowers.student_name = 'Priya Sharma';

# Search books by title keyword (LIKE with %)
SELECT Books.title,Books.genre, Books.published_year
FROM Books
WHERE Books.title LIKE '%Truth%';

# Find books never borrowed (OUTER JOIN)
SELECT Books.book_id,Books.title,Authors.name AS author
FROM Books
LEFT JOIN Borrowers ON Books.book_id = Borrowers.book_id
LEFT JOIN Authors ON Books.author_id = Authors.author_id
WHERE Borrowers.book_id IS NULL;