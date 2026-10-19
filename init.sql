CREATE TABLE IF NOT EXISTS cms_parts_archive (
    part_id        VARCHAR(50) PRIMARY KEY,
    title          TEXT NOT NULL,
    details        TEXT,
    category       VARCHAR(50),
    part_state     VARCHAR(50),
    cost           NUMERIC(12, 2),
    stock_amount   INTEGER,
    cms_updated    TEXT,
    sync_date      TIMESTAMPTZ DEFAULT CURRENT_TIMESTAMP,
    is_removed     BOOLEAN DEFAULT FALSE,
    time_removed   TIMESTAMPTZ
);

CREATE INDEX IF NOT EXISTS idx_parts_removed ON cms_parts_archive (is_removed);