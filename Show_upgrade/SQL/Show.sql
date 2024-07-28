-- show 관련 테이블 생성
drop table show_tbl;

create table show_tbl(
showNo number(6) primary key,       -- 번호(시퀀스 사용)
platform nvarchar2(500) not null,   -- OTT 종류 
category nvarchar2(500) not null,   -- 장르 (로맨스, 코미디, 예능, SF 등등)
title nvarchar2(500) not null,      -- 제목
director nvarchar2(500) not null,   -- 감독
actor nvarchar2(500) not null,      -- 배우
contents nvarchar2(2000) not null   -- 작품 설명
);

-- show 테이블 시퀀스번호 생성 / 1 부터 시작
create sequence show_seq minvalue 1 maxvalue 99999 increment by 1 start with 1 nocycle nocache noorder;
drop sequence show_seq;


-- 더미데이터
insert into show_tbl(showNo, platform, category, title, director, actor, contents) values (show_seq.nextval,'Netflix', '로맨스', '선재업고튀어', '윤종호, 이시은', '변우석, 김혜윤, 송건희, 이승협, 정영주, 성병숙 등', '만약, 당신의 최애를 구할 수 있는 기회가 된다면? 삶의 의지를 놓아버린 순간, 자신을 살게 해줬던 유명아티스트 류선재 그의 죽음으로 절망했던 열성팬 임솔이 최애를 살리기 위해 시간을 거슬러 2008년으로 돌아간다! 다시 살게 된 열아홉, 목표는 최애 류선재를 지키는 것!');
insert into show_tbl(showNo, platform, category, title, director, actor, contents) values (show_seq.nextval, 'Netflix', '로맨스', '이번 생도 잘 부탁해', '이나정, 최영림, 한아름', '신혜선, 안보현, 하윤경, 안동구', '반지음에겐 전생을 기억할 수 있는 신비한 능력이 있다. 18회차 인생이 이른 나이에 끝난 후 다시 태어난 그녀. 이번 생은 어느덧 어른이 된 어린 시절의 사랑을 찾는데 올인한다.');
insert into show_tbl(showNo, platform, category, title, director, actor, contents) values (show_seq.nextval, 'Tiving, Netflix', '로맨스', '낮과 밤이 다른 그녀', '이형민, 박지하', '이정은, 정은지, 최전혁 등',
'어느날 갑자기 노년탕임에 갇혀버린 취준생과 낮과 밤을 올타임 그녀에게 휘말린 능력캐 검사의 기상천외한 인턴쉽과
앙큼달콤 로맨틱 코미디를 그리는 드라마');
insert into show_tbl(showNo, platform, category, title, director, actor, contents) values (show_seq.nextval, 'Tiving, Netflix', '판타지', '미씽:그들이있었다', '민연홍, 반기리', '고수, 허준호, 안소희, 하준, 서은수, 송건희 등',
'실종된 사망자들이 모인 영혼 마을을 배경으로, 사라진 시체를 찾고 사전배후의 진일을 쫓는
미스터리 추적 판타지');
insert into show_tbl(showNo, platform, category, title, director, actor, contents) values(show_seq.nextval, 'Tiving, Netflix', '판타지', '경이로운 소문', '유선동, 김새봄', '조병규, 유준상, 김세정, 엄혜란 등',
'악귀 사냥꾼 카운터 들이 국수집 직원으로 위장해, 지상의 악귀들을 물리치는 통쾌하고 땀내나는 악귀타파 히어로물');

insert into show_tbl(showNo, platform, category, title, director, actor, contents) values(show_seq.nextval, 'Tiving', '액션', '스틸러', '최준배, 신경일', '주원, 이주우, 조한철, 김재원, 최화정, 이덕화 등',
'베일에 싸인 문화재 도둑 스컹크와 비공식 문화재 환수팀 카르마가 뭉쳐, 법이 심판하지 못하는 자들을 상대로 펼치는 케이퍼 코믹액션');

insert into show_tbl(showNo, platform, category, title, director, actor, contents) values(show_seq.nextval, 'Tiving', '판타지', '이재, 곧 죽습니다', '하병훈', '서인국, 박소담, 김지훈, 이재욱, 이도현, 고윤정 등',
'지옥으로 떨어지기 직전의 이재가 12번의 죽음과 삶을 경험하게 되는 인생 환승 드라마');

insert into show_tbl(showNo, platform, category, title, director, actor, contents) values(show_seq.nextval, 'Netflix', '액션', '마이네임', '김바다, 김진민', '한소희, 박희순, 안보현, 김상호, 이학주, 장률',
'겉으로는 마약 범죄를 소탕하는 경찰. 하지만 실제로 그녀가 충성을 바치는 인물은 따로 있다. 그것은 바로, 그녀에게 새로운 삶을 주고 복수의 길을 열어준 범죄 조직의 보스');

insert into show_tbl(showNo, platform, category, title, director, actor, contents) values(show_seq.nextval, 'Tiving', '스릴러', '운수 오진날', '필감성, 김민성, 송한나', '이성민, 유연석, 이정은',
'평범한 택시기사 오택이 고액을 제시하는 지방행 손님을 태우고 가다 그가 연쇄살인마임을 깨닫게 되면서 공포의 주행을 시작하게 되는 이야기');

insert into show_tbl(showNo, platform, category, title, director, actor, contents) values(show_seq.nextval, 'Netflix', '예능', '지구마불 세계여행', '김태호', '노홍철, 주우재, 주현영, 빠니보틀, 원지, 곽준빈',
'주사위를 던져 그 결과에 따라 다음 목적지가 정해지는 일생일대의 모험을 시작한다.우승자에게는 우주여행이 기다리고 있다!!');


--delete from show_tbl where showNo = 3;
delete from show_tbl;
select * from show_tbl;


select showNo, platform, category, title from show_tbl;



|| cha(10) || cha(13) ||