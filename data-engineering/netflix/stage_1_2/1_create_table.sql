CREATE TABLE Titles (
    show_id VARCHAR PRIMARY KEY,
    type VARCHAR,
    title VARCHAR,
    director VARCHAR,
    cast VARCHAR,
    country VARCHAR,
    date_added DATE,
    release_year INTEGER,
    rating VARCHAR,
    duration VARCHAR,
    listed_in VARCHAR,
    description VARCHAR
) CLUSTER BY (release_year);
