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
`publication_date`,
`social_url`,
`title`,
`view_count`,
`category_id`)
VALUES
(668,
"<p> 아키텍처는 오랫동안 많은 개발자들이 좋아하며 사용한 아키텍처입니다. </p>",
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

select * from d2_category, d2_member, d2_post,d2_posting
where d2_category.category_id = d2_post.category_id
and d2_member.member_id = d2_posting.posting_member_id
and d2_post.post_id = d2_posting.posting_post_id;








