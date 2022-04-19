select * from t_board 
select * from t_member
select * from t_children

INSERT INTO t_board (b_title, b_content, b_file, m_nick, b_category) 
VALUES ('안녕', '하세요', 'image.jpg', '차노', 'ㅋㅋㅋㅋ');

INSERT INTO t_board (b_title, b_content, b_file, m_nick, b_category) 
VALUES ('(공지사항)핃독!!!', '없습니다', 'image.jpg', '관리자', 'ㅋㅋㅋㅋ');

INSERT INTO t_board (b_title, b_content, m_nick, b_category) 
VALUES ('(공지사항)파일창 없는지 테스트', '없습니다', '관리자', 'ㅋㅋㅋㅋ');

Create view v_board as select b_title, b_content, m_nick, b_date, b_cnt from t_board
drop view v_board
select * from v_board

select c.c_name,n.c_seq,n.n_date,n.n_height,n.n_weight,n.n_significant from t_children as c, t_note as n where c.c_seq = n.c_seq

drop view children_note
create view children_note as select c.c_name,n.c_seq,n.n_date,n.n_height,n.n_weight,n.n_significant,n.m_id from t_children as c, t_note as n where c.c_seq = n.c_seq
select * from children_note