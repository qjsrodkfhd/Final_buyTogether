drop database buytogether;


create database buytogether;




use buytogether;
-- drop table access cascade CONSTRAINTS;


-- 접근
CREATE TABLE access (
	access_number INTEGER     NOT NULL auto_increment, -- 접근번호
	access_name   VARCHAR(10) NULL,      -- 접근명
	access_declare_count INTEGER     NULL,     -- 신고횟수
	access_duedate       INTEGER     NULL,      -- 제한날짜수


	primary key(access_number)
);




-- 유저
CREATE TABLE user (
	user_number      INTEGER      NOT NULL auto_increment, -- 유저번호
	id               VARCHAR(20)  NOT NULL unique,     -- 아이디
	pw               VARCHAR(60)  NULL,     -- 비밀번호
	name             VARCHAR(8)   NOT NULL,     -- 이름
	email            VARCHAR(20)  NOT NULL unique,     -- 이메일
	phone_number     VARCHAR(11)  NOT NULL,     -- 전화번호
	birthdate         DATE         NOT NULL,     -- 생년월일
	gender              VARCHAR(2)   NOT NULL,     -- 성별
	nickname         VARCHAR(10)  NOT NULL unique,     -- 닉네임
	profile          VARCHAR(100) NULL,     -- 프로필사진
	region           VARCHAR(100) NULL,     -- 지역
	reputation       INTEGER      NOT NULL default 70,     -- 평판


	primary key (user_number)
	
);


-- 카테고리
CREATE TABLE category (
	category_number INTEGER     NOT NULL auto_increment, -- 카테고리번호
	category_name   VARCHAR(10) NULL,      -- 카테고리명


	primary key (category_number)
);


-- 관심
CREATE TABLE interest (
	interest_number INTEGER NOT NULL auto_increment, -- 관심번호
	user_number     INTEGER NULL,     -- 유저번호
	category_number INTEGER NULL,      -- 카테고리번호


	primary key (interest_number),
	foreign key (user_number) references user (user_number) on delete cascade,
	foreign key (category_number) references category (category_number) on delete cascade
);


-- 관리자
CREATE TABLE admin (
	admin_number      INTEGER     NOT NULL auto_increment, -- 관리자번호
	admin_id          VARCHAR(10) NOT NULL unique,     -- 아이디
	admin_pw          VARCHAR(60) NOT NULL,     -- 비밀번호
	admin_nickname    VARCHAR(10) NOT NULL unique,     -- 닉네임
	admin_email       VARCHAR(20) NOT NULL,     -- 이메일
	admin_phonenumber VARCHAR(11) NOT NULL,     -- 전화번호
	admin_grade       INTEGER     NOT NULL,     -- 관리자등급


	primary key (admin_number)
);


-- Q&A
CREATE TABLE qna (
	qna_number    INTEGER     NOT NULL auto_increment, -- Q&A번호
	qna_title     VARCHAR(20) NOT NULL,     -- 제목
	qna_content   TEXT        NOT NULL,     -- 내용
	qna_writedate timestamp        NOT NULL default now(),     -- 작성일
	user_number   INTEGER     NULL,     -- 유저번호
	admin_number  INTEGER     NULL,      -- 관리자번호
	qna_password  INTEGER	NOT NULL,   -- qna 질문 비밀번호

	primary key (qna_number),
	foreign key (user_number) references user (user_number) on delete cascade,
	foreign key (admin_number) references admin (admin_number) on delete set null
);




-- 선택상태
CREATE TABLE matching (
	matching_status_number INTEGER    NOT NULL auto_increment, -- 선택상태번호
	matching_status_name   VARCHAR(6) NULL,     -- 선택상태명


	primary key (matching_status_number)
);






-- 사냥방식
CREATE TABLE huntingtype (
	hunting_type_number INTEGER    NOT NULL auto_increment, -- 사냥방식번호
	hunting_type        VARCHAR(8) NULL,      -- 사냥방식명


	primary key (hunting_type_number)
);




-- 같이사냥상태
CREATE TABLE huntingstatus (
	status_number INTEGER     NOT NULL auto_increment, -- 상태번호
	status_name   VARCHAR(20) NULL,      -- 상태명


	primary key (status_number)
);


-- 같이사냥
CREATE TABLE buytogether (
	buytogether_number   INTEGER      NOT NULL auto_increment, -- 같이사냥번호
	title                VARCHAR(20)  NOT NULL,     -- 제목
	content              TEXT         NOT NULL,     -- 내용
	writedate            timestamp         NOT NULL default now(),     -- 작성시간
	updatedate           timestamp         NOT NULL default now(),     -- 수정시간
	duedate              timestamp         NOT NULL,     -- 마감시간
	joinin_number          INTEGER      NOT NULL,     -- 참여정원
	price                INTEGER      NOT NULL,     -- 가격
	category_number      INTEGER      NULL,     -- 카테고리번호
	user_number          INTEGER      NOT NULL,     -- 유저번호
	status_number       INTEGER      NOT NULL,     -- 상태번호
	hunting_type_number INTEGER      NOT NULL,      -- 사냥방식번호


	primary key (buytogether_number),
	foreign key (category_number) references category (category_number) on delete set null,
	foreign key (user_number) references user (user_number) on delete cascade,
	foreign key (status_number) references huntingstatus (status_number) on delete cascade,
	foreign key (hunting_type_number) references huntingtype (hunting_type_number) on delete cascade
);


-- 사냥찜
CREATE TABLE dip (
	dip_number         INTEGER NOT NULL auto_increment, -- 찜번호
	user_number        INTEGER NOT NULL,     -- 유저번호
	buytogether_number INTEGER NOT NULL,      -- 같이사냥번호


	primary key (dip_number),
	foreign key (user_number) references user (user_number) on delete cascade,
	foreign key (buytogether_number) references buytogether (buytogether_number) on delete cascade
);


-- 참여
CREATE TABLE joinin (
	joinin_number         INTEGER NOT NULL auto_increment, -- 참여번호
	user_number         INTEGER NOT NULL,     -- 유저번호
	matching_status_number INTEGER NOT NULL,     -- 선택상태번호
	buytogether_number  INTEGER NULL,      -- 같이사냥번호


	primary key (joinin_number),
	foreign key (user_number) references user (user_number) on delete cascade,
	foreign key (matching_status_number) references matching (matching_status_number) on delete cascade,
	foreign key (buytogether_number) references buytogether (buytogether_number) on delete set null
);




-- 댓글분류
CREATE TABLE commenttype (
	comment_type_number INTEGER     NOT NULL auto_increment, -- 댓글분류번호
	comment_type_name   VARCHAR(10) NOT NULL,      -- 댓글분류명


	primary key (comment_type_number)
);


-- 댓글
CREATE TABLE comment (
	comment_number      INTEGER NOT NULL auto_increment, -- 댓글번호
	comment_content     TEXT    NOT NULL,     -- 내용
	comment_writedate   timestamp    NOT NULL default now(),     -- 작성일
	buytogether_number  INTEGER NOT NULL,     -- 같이사냥번호
	user_number         INTEGER NOT NULL,     -- 유저번호
	comment_type_number INTEGER NOT NULL,      -- 댓글분류번호


	primary key (comment_number),
	foreign key (buytogether_number) references buytogether (buytogether_number) on delete cascade,
	foreign key (user_number) references user (user_number) on delete cascade,
	foreign key (comment_type_number) references commenttype (comment_type_number) on delete cascade
	
);


-- 신고카테고리
CREATE TABLE declarecategory (
	declare_category_number INTEGER     NOT NULL auto_increment, -- 신고카테고리번호
	declare_category_name   VARCHAR(10) NOT NULL,      -- 카테고리명


	primary key (declare_category_number)
);




-- 신고글분류
CREATE TABLE declaretype (
	type_number INTEGER    NOT NULL auto_increment, -- 분류번호
	type        VARCHAR(6) NOT NULL,      -- 분류


	primary key (type_number)
);


-- 신고글
CREATE TABLE declareboard (
	declare_number          INTEGER      NOT NULL auto_increment, -- 신고글번호
	buytogether_number      INTEGER      NULL,     -- 신고타켓번호
	type_number             INTEGER      NOT NULL,     -- 분류번호
	declare_category_number INTEGER      NOT NULL,     -- 신고카테고리번호
	user_number             INTEGER      NOT NULL,     -- 유저번호
	declare_reason          TEXT         NOT NULL,     -- 사유
	declare_photo           VARCHAR(100) NULL,     -- 첨부사진
	declare_status          BOOLEAN      NOT NULL default false,      -- 처리상태


	primary key (declare_number),
	foreign key (buytogether_number) references buytogether (buytogether_number) on delete set null,
	foreign key (buytogether_number) references comment (comment_number) on delete set null,
	foreign key (user_number) references user (user_number) on delete cascade,
	foreign key (declare_category_number) references declarecategory (declare_category_number) on delete cascade,
	foreign key (type_number) references declaretype (type_number) on delete cascade


);






-- 게시판종류
CREATE TABLE boardtype (
	board_type_number INTEGER     NOT NULL auto_increment, -- 게시판종류번호
	board_name        VARCHAR(10) NOT NULL unique,     -- 게시판이름


	primary key (board_type_number)
);




-- 게시판(공지,FAQ,정보사냥,튜토리얼
CREATE TABLE board (
	board_number      INTEGER     NOT NULL auto_increment, -- 게시글번호
	board_title       VARCHAR(20) NOT NULL,     -- 제목
	board_content     TEXT        NOT NULL,     -- 내용
	board_writedate   timestamp        NOT NULL default now(),     -- 작성시간
	board_updatedate  timestamp        NOT NULL default now(),     -- 수정시간
	admin_number      INTEGER     NULL,     -- 관리자번호
	board_type_number INTEGER     NOT NULL,      -- 게시판종류번호


	primary key (board_number),
	foreign key (admin_number) references admin (admin_number) on delete set null,
	foreign key (board_type_number) references boardtype (board_type_number) on delete cascade


);


-- 첨부사진
CREATE TABLE attachedphoto (
	photo_number       INTEGER      NOT NULL auto_increment, -- 사진번호
	path               VARCHAR(100) NOT NULL,     -- 경로
	board_number       INTEGER      NOT NULL,     -- 게시글번호
	board_type_number  INTEGER      NOT NULL,     -- 게시판종류번호


	primary key (photo_number),
	foreign key (board_type_number) references boardtype (board_type_number) on delete cascade,
	foreign key (board_number) references board (board_number) on delete cascade,
	foreign key (board_number) references buytogether (buytogether_number) on delete cascade
);




-- 검색
CREATE TABLE search (
	keyword_number INTEGER     NOT NULL auto_increment, -- 키워드번호
	keyword        VARCHAR(20) NOT NULL unique,      -- 키워드


	primary key (keyword_number)
);


-- 유저주소
CREATE TABLE useraddress (
	user_address_number INTEGER     NOT NULL auto_increment, -- 주소번호
	user_sido           VARCHAR(20) NOT NULL,     -- 시/도
	user_sigungu        VARCHAR(20) NOT NULL,     -- 시/군/구
	user_road_address   VARCHAR(20) NOT NULL,     -- 도로명
	user_detail         VARCHAR(50) NOT NULL,     -- 상세주소
	user_number         INTEGER     NOT NULL,      -- 유저번호


	primary key (user_address_number),
	foreign key (user_number) references user (user_number) on delete cascade
);


-- 같이사냥주소
CREATE TABLE buytogetheraddress (
	buytogether_address_number       INTEGER      NOT NULL auto_increment, -- 주소번호
	latitude                         INTEGER      NOT NULL,     -- 위도
	longitude                        INTEGER      NOT NULL,     -- 경도
	buytogether_address_sido         VARCHAR(10)  NOT NULL,     -- 시/도
	buytogether_address_sigungu      VARCHAR(10)  NOT NULL,     -- 시/군/구
	buytogether_address_road_address VARCHAR(100) NOT NULL,     -- 도로명
	buytogether_address_detail       VARCHAR(50)  NOT NULL,     -- 상세주소
	buytogether_number               INTEGER      NOT NULL,      -- 같이사냥번호


	primary key (buytogether_address_number),
	foreign key (buytogether_number) references buytogether (buytogether_number) on delete cascade
);


-- 신고유저
CREATE TABLE declareuser (
	user_number   INTEGER NOT NULL, -- 유저번호
	delcare_count INTEGER NULL,     -- 신고누적횟수
	access_free   timestamp    NULL,     -- 제한해제시간
	access_number INTEGER NULL,      -- 접근번호
    
    primary key (user_number),
	foreign key (user_number) references user (user_number) on delete cascade,
    foreign key (access_number) references access (access_number) on delete cascade


);


