select * from t_board 
select * from t_member
desc t_board


INSERT INTO t_board (b_title, b_content, b_file, m_nick, b_category) 
VALUES ('안녕', '하세요', 'image.jpg', '차노', 'ㅋㅋㅋㅋ');

delete from t_board where b_category='ㅋㅋㅋㅋ';

INSERT INTO t_board (b_title, b_content, b_file, m_nick, b_category) 
VALUES ('(공지사항)핃독!!!', '없습니다', 'image.jpg', '관리자', 'ㅋㅋㅋㅋ');

INSERT INTO t_board (b_title, b_content, m_nick, b_category) 
VALUES ('(공지사항)파일창 없는지 테스트', '없습니다', '관리자', 'ㅋㅋㅋㅋ');

Create view v_board as select b_title, b_content, m_nick, b_date, b_cnt from t_board
drop view v_board
select * from v_board

select * from t_board where b_category = "0" and b_title like'%차노%' order by b_date desc Limit 10 Offset 0

