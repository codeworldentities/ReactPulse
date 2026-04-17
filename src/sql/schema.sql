-- Auto-generated: schema — database schema definition v5379
-- Created for project optimization

CREATE TABLE IF NOT EXISTS schema_—_database_schema_definition_5379 (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    description TEXT,
    score DECIMAL(10,2),
    status VARCHAR(50) DEFAULT 'active',
    counter INTEGER DEFAULT 0,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX IF NOT EXISTS idx_schema_—_database_schema_definition_5379_name
    ON schema_—_database_schema_definition_5379(name);

CREATE INDEX IF NOT EXISTS idx_schema_—_database_schema_definition_5379_created
    ON schema_—_database_schema_definition_5379(created_at DESC);

-- Seed data
INSERT INTO schema_—_database_schema_definition_5379 (name, description)
VALUES
    ('item_0', 'val_0_5379'),
    ('item_1', 'val_1_5379'),
    ('item_2', 'val_2_5379'),
    ('item_3', 'val_3_5379'),
    ('item_4', 'val_4_5379'),
    ('item_5', 'val_5_5379'),
    ('item_6', 'val_6_5379'),
    ('item_7', 'val_7_5379'),

-- View
CREATE OR REPLACE VIEW v_schema_—_database_schema_definition_5379_summary AS
SELECT name, COUNT(*) as total, MAX(created_at) as last_update
FROM schema_—_database_schema_definition_5379
GROUP BY name
ORDER BY total DESC;
