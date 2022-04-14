select * from t_board 
select * from t_member 

insert into t_board(b_title, b_content,b_file ,m_nick, b_category, b_date)
values('안녕', '하세요', 'ㅇㅋ', 'admin', '1', now())

INSERT INTO t_board (b_title, b_content, b_file, b_cnt, b_date, m_nick, b_category) 
VALUES ('b_title 01', 'b_content 01', 'b_file 01', 01, NOW(), 'm_nick 01', 'b_category 01');

INSERT INTO t_board (b_title, b_content, b_file, b_cnt, b_date, m_nick, b_category) 
VALUES ('안녕', '하세요', 'image.jpg', 01, NOW(), 'imagination', 'ㅋㅋㅋㅋ');

INSERT INTO t_board (b_title, b_content, b_file, m_nick, b_category)
VALUES ('test1', 'b_content 0001', 'b_file 0001', 'm_nick 0001', 'b_category 0001');