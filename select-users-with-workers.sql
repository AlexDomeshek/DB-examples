use my_supermarket;

(select
   u1.email,
   count(1)
 from users u1
   join users u2 on u1.id = u2.boss_id
 group by u1.email)
union (
  select
    email,
    0
  from users u1
  where not exists(select 1
                   from users u2
                   where u1.id = u2.boss_id)
);
