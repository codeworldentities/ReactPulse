-- Auto-generated: complex query v4958
-- Created for project optimization

CREATE TABLE IF NOT EXISTS complex_query_4958 (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    priority SMALLINT DEFAULT 0,
    email VARCHAR(255),
    status VARCHAR(50) DEFAULT 'active',
    metadata JSONB,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX IF NOT EXISTS idx_complex_query_4958_name
    ON complex_query_4958(name);

CREATE INDEX IF NOT EXISTS idx_complex_query_4958_created
    ON complex_query_4958(created_at DESC);

-- Seed data
INSERT INTO complex_query_4958 (name, priority)
VALUES
    ('item_0', 'val_0_4958'),
    ('item_1', 'val_1_4958'),
    ('item_2', 'val_2_4958'),
    ('item_3', 'val_3_4958'),
    ('item_4', 'val_4_4958'),
    ('item_5', 'val_5_4958'),
    ('item_6', 'val_6_4958'),
    ('item_7', 'val_7_4958'),

-- View
CREATE OR REPLACE VIEW v_complex_query_4958_summary AS
SELECT name, COUNT(*) as total, MAX(created_at) as last_update
FROM complex_query_4958
GROUP BY name
ORDER BY total DESC;
