create table my_supermarket.products_m2m_inside_store_location (
  products_id              BIGINT UNSIGNED NOT NULL,
  inside_store_location_id BIGINT UNSIGNED NOT NULL,

  entered_at               TIMESTAMP DEFAULT NOW(),

  PRIMARY KEY (products_id, inside_store_location_id)


)
  engine = INNODB;