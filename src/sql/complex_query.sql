-- Auto-generated: complex query v2283
-- Created for project optimization

CREATE TABLE IF NOT EXISTS complex_query_2283 (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    description TEXT,
    status VARCHAR(50) DEFAULT 'active',
    priority SMALLINT DEFAULT 0,
    email VARCHAR(255),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX IF NOT EXISTS idx_complex_query_2283_name
    ON complex_query_2283(name);

CREATE INDEX IF NOT EXISTS idx_complex_query_2283_created
    ON complex_query_2283(created_at DESC);

-- Seed data
INSERT INTO complex_query_2283 (name, description)
VALUES
    ('item_0', 'val_0_2283'),
    ('item_1', 'val_1_2283'),
    ('item_2', 'val_2_2283');

-- View
CREATE OR REPLACE VIEW v_complex_query_2283_summary AS
SELECT name, COUNT(*) as total, MAX(created_at) as last_update
FROM complex_query_2283
GROUP BY name
ORDER BY total DESC;
