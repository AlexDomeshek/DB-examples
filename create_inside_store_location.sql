create table my_supermarket.inside_store_location (
  id         serial PRIMARY KEY ,
  title       varchar(128) UNIQUE,
  entered_at TIMESTAMP       DEFAULT NOW(),
  updated_at TIMESTAMP       DEFAULT NOW()
  ON UPDATE NOW()

)
  engine = INNODB;