create table my_supermarket.users (
  id      serial,
  email   varchar(128),
  boss_id BIGINT UNSIGNED DEFAULT NULL,

  foreign key point_to_boss(boss_id) references users (id)
)
  engine = INNODB;