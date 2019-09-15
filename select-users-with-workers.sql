use my_supermarket;

select u1.email, count(1)
from users u1
  left
  join users u2 on u1.id = u2.boss_id
group by u1.id
