select * from t_board 
select * from t_member
desc t_board

Create view v_board as select b_title, b_content, m_nick, b_date, b_cnt from t_board
drop view v_board
select * from v_board

select * from t_board where b_category = "0" and b_title like'%차노%' order by b_date desc Limit 10 Offset 0

