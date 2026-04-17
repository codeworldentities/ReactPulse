-- Auto-generated: complex query v1659
-- Created for project optimization

CREATE TABLE IF NOT EXISTS complex_query_1659 (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    metadata JSONB,
    description TEXT,
    status VARCHAR(50) DEFAULT 'active',
    score DECIMAL(10,2),
    counter INTEGER DEFAULT 0,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX IF NOT EXISTS idx_complex_query_1659_name
    ON complex_query_1659(name);

CREATE INDEX IF NOT EXISTS idx_complex_query_1659_created
    ON complex_query_1659(created_at DESC);

-- Seed data
INSERT INTO complex_query_1659 (name, metadata)
VALUES
    ('item_0', 'val_0_1659'),
    ('item_1', 'val_1_1659'),
    ('item_2', 'val_2_1659'),
    ('item_3', 'val_3_1659'),
    ('item_4', 'val_4_1659'),
    ('item_5', 'val_5_1659'),
    ('item_6', 'val_6_1659'),
    ('item_7', 'val_7_1659'),

-- View
CREATE OR REPLACE VIEW v_complex_query_1659_summary AS
SELECT name, COUNT(*) as total, MAX(created_at) as last_update
FROM complex_query_1659
GROUP BY name
ORDER BY total DESC;
