-- 게시판DB 구성 및 자주 사용하는 명령문 정리.

CREATE TABLE BOARD_DB (
    B_NO NUMBER(3) PRIMARY KEY,
    B_CATE VARCHAR2(50 CHAR) NOT NULL,
    B_TITLE VARCHAR2(200 CHAR) NOT NULL,
    B_NAME VARCHAR2(30 CHAR) NOT NULL,
    B_TXT VARCHAR2(1000 CHAR) NOT NULL,
    B_IMG VARCHAR2 (200CHAR),
    B_DATE DATE NOT NULL,
    B_PW VARCHAR2(20CHAR) NOT NULL
);

CREATE SEQUENCE BOARD_SEQ;

INSERT INTO BOARD_DB VALUES(BOARD_SEQ.nextval, '후기게시판', '제목','글쓴이','내용예시입니다. 1000자까지 입력 가능합니다.','',sysdate,'pwSample');
INSERT INTO BOARD_DB VALUES(BOARD_SEQ.nextval, '자유게시판', '제목','글쓴이','내용예시입니다. 1000자까지 입력 가능합니다.','',sysdate,'pwSample');

DROP TABLE BOARD_DB CASCADE CONSTRAINTS;

DROP SEQUENCE BOARD_SEQ;

select * from BOARD_DB;
select*from BOARD_DB WHERE b_cate like '%자유게시판%' order by B_DATE desc ;

select count(*) from BOARD_DB;

select*from (
    select rownum as rn,b_no, b_cate, b_title, b_name, b_txt, b_img, b_date, b_pw 
        from (
            select * from BOARD_DB where B_CATE = '자유게시판' 
                order by b_date desc)
                ) where rn between 1 and 5 ;