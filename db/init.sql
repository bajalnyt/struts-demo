CREATE TABLE IF NOT EXISTS customer (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(255) NOT NULL,
    phone VARCHAR(32) NOT NULL
);

INSERT INTO customer (name, email, phone) VALUES
    ('Alice Anderson', 'alice@example.com', '+1-555-0101'),
    ('Bob Brown', 'bob@example.com', '+1-555-0102'),
    ('Charlie Clark', 'charlie@example.com', '+1-555-0103')
ON CONFLICT DO NOTHING;
