select * from t_note
select * from t_children

select c.c_name,n.c_seq,n.n_date,n.n_height,n.n_weight,n.n_significant from t_children as c, t_note as n where c.c_seq = n.c_seq
create view children_note as select c.c_name,n.c_seq,n.n_date,n.n_height,n.n_weight,n.n_significant,n.m_id from t_children as c, t_note as n where c.c_seq = n.c_seq
select * from children_note
drop view children_note


select * from t_children as c, t_note as n where c.c_seq = n.c_seq
create view children_note as select n.n_seq,c.m_id,c.c_seq,c.c_name,c.c_birthdate,c.c_gender,n.n_date,n.n_height,n.n_weight,n.n_significant from t_children as c, t_note as n where c.c_seq = n.c_seq
select * from children_note

select * from children_note where c_seq=1 order by n_date desc Limit 10 Offset 0
select count(*) from children_note where c_seq=1