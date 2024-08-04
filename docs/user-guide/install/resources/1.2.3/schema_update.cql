DROP MATERIALIZED VIEW IF EXISTS winstarcloud.customer_by_tenant_and_title;

CREATE MATERIALIZED VIEW IF NOT EXISTS winstarcloud.customer_by_tenant_and_title AS
    SELECT *
    from winstarcloud.customer
    WHERE tenant_id IS NOT NULL AND title IS NOT NULL AND id IS NOT NULL
    PRIMARY KEY ( tenant_id, title, id )
    WITH CLUSTERING ORDER BY ( title ASC, id DESC );
