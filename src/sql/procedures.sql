-- Auto-generated: procedures — procedures v4061
-- Created for project optimization

CREATE TABLE IF NOT EXISTS procedures_—_procedures_4061 (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    priority SMALLINT DEFAULT 0,
    score DECIMAL(10,2),
    email VARCHAR(255),
    status VARCHAR(50) DEFAULT 'active',
    metadata JSONB,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX IF NOT EXISTS idx_procedures_—_procedures_4061_name
    ON procedures_—_procedures_4061(name);

CREATE INDEX IF NOT EXISTS idx_procedures_—_procedures_4061_created
    ON procedures_—_procedures_4061(created_at DESC);

-- Seed data
INSERT INTO procedures_—_procedures_4061 (name, priority)
VALUES
    ('item_0', 'val_0_4061'),
    ('item_1', 'val_1_4061'),
    ('item_2', 'val_2_4061'),
    ('item_3', 'val_3_4061'),
    ('item_4', 'val_4_4061'),
    ('item_5', 'val_5_4061'),
    ('item_6', 'val_6_4061');

-- View
CREATE OR REPLACE VIEW v_procedures_—_procedures_4061_summary AS
SELECT name, COUNT(*) as total, MAX(created_at) as last_update
FROM procedures_—_procedures_4061
GROUP BY name
ORDER BY total DESC;
