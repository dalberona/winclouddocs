DROP MATERIALIZED VIEW IF EXISTS winstarcloud.dashboard_by_tenant_and_search_text;

CREATE MATERIALIZED VIEW IF NOT EXISTS winstarcloud.dashboard_by_tenant_and_search_text AS
    SELECT *
    from winstarcloud.dashboard
    WHERE tenant_id IS NOT NULL AND customer_id IS NOT NULL AND search_text IS NOT NULL AND id IS NOT NULL
    PRIMARY KEY ( tenant_id, search_text, id, customer_id )
    WITH CLUSTERING ORDER BY ( search_text ASC, id DESC, customer_id DESC );