INSERT INTO region (region_id, name, created_at, updated_at)
VALUES (1, '서울', NOW(), NOW()),
       (2, '부산', NOW(), NOW()),
       (3, '인천', NOW(), NOW());

INSERT INTO food_type (created_at, food_type_id, updated_at, name)
VALUES (NOW(), 1,NOW(),'디저트'),
       (NOW(), 2,NOW(),'한식');

INSERT INTO store (store_id, name, address, score, region_id, created_at, updated_at, food_type_id)
VALUES (1, 'Store 1', '서울시 서대문구 이화여대길 52', 4.5, 1, NOW(), NOW(),2),
       (2, 'Store 2', '서울시 마포구 연남동', 3.8, 1, NOW(), NOW(),2),
       (3, 'Store 3', '서울시 동작구 흑석동', 2.2, 1, NOW(), NOW(),2),
       (4, '요아정', '서울시 용산구 이태원동', 4.0, 1, NOW(), NOW(),1),
       (5, '요아정', '서울시 서대문구 이화여대길 52', 3.2, 1, NOW(), NOW(),1),
       (6, '요아정', '서울시 강남구 대치동', 4.5, 1, NOW(), NOW(),1);

INSERT INTO mission (mission_id, body, store_id, created_at, updated_at)
VALUES (1, 'Store 1-미션 1', 1, NOW(), NOW()),
       (2, 'Store 1-미션 2', 1, NOW(), NOW()),
       (3, 'Store 2-미션 1', 2, NOW(), NOW()),
       (4, 'Store 3-미션 1', 3, NOW(), NOW());

INSERT INTO review (review.review_id, body, score, store_id, created_at, updated_at)
VALUES (1, '너무 좋아요!', 5.0, 1, NOW(), NOW()),
       (2, '분위기 짱~', 3.0, 1, NOW(), NOW()),
       (3, '서비스가 좋습니다', 4.8, 2, NOW(), NOW()),
       (4, '음식이 맛있고 사장님이 친절해요', 4.5, 3, NOW(), NOW());