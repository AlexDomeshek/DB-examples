use my_supermarket;

(select
   master_list.email,
   count(team_members.id) as 'Team size'
 from users master_list
   left join users team_members on master_list.id = team_members.boss_id
 group by master_list.email);
