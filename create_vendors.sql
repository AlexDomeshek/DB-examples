create table my_supermarket.vendors (
  id         serial,
  name       varchar(128),
  entered_at TIMESTAMP       DEFAULT NOW(),
  updated_at TIMESTAMP       DEFAULT NOW()
  ON UPDATE NOW(),

  PRIMARY KEY (id),
  unique key single_vendor_per_table(name)
)
  engine = INNODB;