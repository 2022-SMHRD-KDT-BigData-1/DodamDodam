select * from t_note
select * from t_children

select c.c_name,n.c_seq,n.n_date,n.n_height,n.n_weight,n.n_significant from t_children as c, t_note as n where c.c_seq = n.c_seq

drop view children_note
create view children_note as select c.c_name,n.c_seq,n.n_date,n.n_height,n.n_weight,n.n_significant,n.m_id from t_children as c, t_note as n where c.c_seq = n.c_seq
select * from children_note