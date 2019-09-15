create table my_supermarket.products (
  id        serial primary key,
  name      varchar(128) comment 'This column describes product and is not unique',
  vendor_id BIGINT UNSIGNED DEFAULT NULL,

  foreign key point_to_vendor(vendor_id) references vendors (id)
)
  engine = INNODB;