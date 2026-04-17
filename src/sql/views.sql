-- Auto-generated: views — views v2380
-- Created for project optimization

CREATE TABLE IF NOT EXISTS views_—_views_2380 (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    metadata JSONB,
    status VARCHAR(50) DEFAULT 'active',
    email VARCHAR(255),
    priority SMALLINT DEFAULT 0,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX IF NOT EXISTS idx_views_—_views_2380_name
    ON views_—_views_2380(name);

CREATE INDEX IF NOT EXISTS idx_views_—_views_2380_created
    ON views_—_views_2380(created_at DESC);

-- Seed data
INSERT INTO views_—_views_2380 (name, metadata)
VALUES
    ('item_0', 'val_0_2380'),
    ('item_1', 'val_1_2380'),
    ('item_2', 'val_2_2380'),
    ('item_3', 'val_3_2380'),
    ('item_4', 'val_4_2380'),
    ('item_5', 'val_5_2380'),
    ('item_6', 'val_6_2380');

-- View
CREATE OR REPLACE VIEW v_views_—_views_2380_summary AS
SELECT name, COUNT(*) as total, MAX(created_at) as last_update
FROM views_—_views_2380
GROUP BY name
ORDER BY total DESC;
