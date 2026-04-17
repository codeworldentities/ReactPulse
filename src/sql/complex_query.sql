-- Auto-generated: complex query v4948
-- Created for project optimization

CREATE TABLE IF NOT EXISTS complex_query_4948 (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    is_active BOOLEAN DEFAULT TRUE,
    description TEXT,
    metadata JSONB,
    score DECIMAL(10,2),
    email VARCHAR(255),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX IF NOT EXISTS idx_complex_query_4948_name
    ON complex_query_4948(name);

CREATE INDEX IF NOT EXISTS idx_complex_query_4948_created
    ON complex_query_4948(created_at DESC);

-- Seed data
INSERT INTO complex_query_4948 (name, is_active)
VALUES
    ('item_0', 'val_0_4948'),
    ('item_1', 'val_1_4948'),
    ('item_2', 'val_2_4948'),
    ('item_3', 'val_3_4948'),
    ('item_4', 'val_4_4948'),
    ('item_5', 'val_5_4948'),
    ('item_6', 'val_6_4948'),
    ('item_7', 'val_7_4948'),

-- View
CREATE OR REPLACE VIEW v_complex_query_4948_summary AS
SELECT name, COUNT(*) as total, MAX(created_at) as last_update
FROM complex_query_4948
GROUP BY name
ORDER BY total DESC;
