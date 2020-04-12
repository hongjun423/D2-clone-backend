use d2_db;

INSERT INTO `d2_db`.`d2_category`
(`category_id`,
`name`)
VALUES
(1,
"home");

INSERT INTO `d2_db`.`d2_category`
(`category_id`,
`name`)
VALUES
(2,
"hello world");

INSERT INTO `d2_db`.`d2_category`
(`category_id`,
`name`)
VALUES
(3,
"news");

INSERT INTO `d2_db`.`d2_post`
(`post_id`,
`body`,
`image`,
`publication_date`,
`social_url`,
`title`,
`view_count`,
`category_id`)
VALUES
(668,
"<p> 아키텍처는 오랫동안 많은 개발자들이 좋아하며 사용한 아키텍처입니다. </p>",
"/content/images/2020/02/spring-mvc-and-webflux-venn-1.png",
now(),
"http://d2.naver.com/helloworld/6080222",
"이것은 제목이다",
5825,
2);

INSERT INTO `d2_db`.`d2_member`
(`member_id`,
`department`,
`position`,
`email`,
`name`,
`profile`,
`avatar_url`)
VALUES
("258",
"네이버 Clova",
"",
"",
"이준행",
"2016년 네이버 입사 후 메인 플랫폼을 거쳐 현재 Clova에서 NAVER AiCall의 백엔드 개발을 담당하고 있습니다.",
"/image/20200219/680454544304.jpg");

INSERT INTO `d2_db`.`d2_posting`
(`posting_id`,
`posting_member_id`,
`posting_post_id`)
VALUES
(1,
258,
668);
INSERT INTO `d2_db`.`d2_tag`
(
`name`,
`url`)
VALUES
(
"rpc",
"/search?keyword=rpc");

INSERT INTO `d2_db`.`d2_tag`
(
`name`,
`url`)
VALUES
(
"Spring",
"/search?keyword=Spring");

INSERT INTO `d2_db`.`d2_tag`
(
`name`,
`url`)
VALUES
(
"Spring WebFlux",
"/search?keyword=Spring WebFlux");

INSERT INTO `d2_db`.`d2_tag`
(
`name`,
`url`)
VALUES
(
"Armeria",
"/search?keyword=Armeria");

INSERT INTO `d2_db`.`d2_tag`
(
`name`,
`url`)
VALUES
(
"Microservice",
"/search?keyword=Microservice");


INSERT INTO `d2_db`.`d2_tag`
(
`name`,
`url`)
VALUES
(
"Reactive",
"/search?keyword=Reactive");

INSERT INTO `d2_db`.`d2_tag_post`
(`tag_id`,
`post_id`)
VALUES
(1,
668);

INSERT INTO `d2_db`.`d2_tag_post`
(`tag_id`,
`post_id`)
VALUES
(2,
668);

INSERT INTO `d2_db`.`d2_tag_post`
(`tag_id`,
`post_id`)
VALUES
(3,
668);

INSERT INTO `d2_db`.`d2_tag_post`
(`tag_id`,
`post_id`)
VALUES
(3,
668);

INSERT INTO `d2_db`.`d2_tag_post`
(`tag_id`,
`post_id`)
VALUES
(4,
668);

INSERT INTO `d2_db`.`d2_tag_post`
(`tag_id`,
`post_id`)
VALUES
(5,
668);

INSERT INTO `d2_db`.`d2_tag_post`
(`tag_id`,
`post_id`)
VALUES
(6,
668);

INSERT INTO `d2_db`.`d2_post_reply`
(`reply_id`,
`bad_count`,
`comments`,
`good_count`,
`reply_at`,
`replyer`,
`text`,
`post_id`)
VALUES
(1,
0,
'',
0,
20200324131300,
'황금비',
'WebFlux에 관심이 많이가던데 좋은 정리 감사합니다. DB와 연결된 서버는 도입이 안되더라도 Gateway서버에서는 효율이 좋을거 같은 느낌인데요 맞나요..?!',
668);

INSERT INTO `d2_db`.`d2_post_reply`
(`reply_id`,
`bad_count`,
`comments`,
`good_count`,
`reply_at`,
`replyer`,
`text`,
`post_id`)
VALUES
(2,
1,
'',
2,
20200221121000,
'브로걸리',
'nodejs는 새로운 언어가 아니라 javascript 런타임환경을 제공하는 플랫폼입니다.많은 쥬니어 개발자들이 참조하는 사이트인만큼 잘못된 정보가 전파되지 않도록 수정이 필요해보이네요.',
668);


select * from d2_category, d2_member, d2_post,d2_posting
where d2_category.category_id = d2_post.category_id
and d2_member.member_id = d2_posting.posting_member_id
and d2_post.post_id = d2_posting.posting_post_id;
