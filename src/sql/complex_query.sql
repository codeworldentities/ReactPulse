-- Auto-generated: complex query v9616
-- Created for project optimization

CREATE TABLE IF NOT EXISTS complex_query_9616 (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    score DECIMAL(10,2),
    status VARCHAR(50) DEFAULT 'active',
    is_active BOOLEAN DEFAULT TRUE,
    description TEXT,
    email VARCHAR(255),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX IF NOT EXISTS idx_complex_query_9616_name
    ON complex_query_9616(name);

CREATE INDEX IF NOT EXISTS idx_complex_query_9616_created
    ON complex_query_9616(created_at DESC);

-- Seed data
INSERT INTO complex_query_9616 (name, score)
VALUES
    ('item_0', 'val_0_9616'),
    ('item_1', 'val_1_9616'),
    ('item_2', 'val_2_9616'),
    ('item_3', 'val_3_9616'),
    ('item_4', 'val_4_9616'),
    ('item_5', 'val_5_9616'),
    ('item_6', 'val_6_9616'),
    ('item_7', 'val_7_9616'),

-- View
CREATE OR REPLACE VIEW v_complex_query_9616_summary AS
SELECT name, COUNT(*) as total, MAX(created_at) as last_update
FROM complex_query_9616
GROUP BY name
ORDER BY total DESC;
