/*
 Warnings:
 
 - You are about to drop the `About` table. If the table is not empty, all the data it contains will be lost.
 - You are about to drop the `Banner` table. If the table is not empty, all the data it contains will be lost.
 - You are about to drop the `Product` table. If the table is not empty, all the data it contains will be lost.
 - You are about to drop the `User` table. If the table is not empty, all the data it contains will be lost.
 
 */
-- DropTable
DROP TABLE "About";

-- DropTable
DROP TABLE "Banner";

-- DropTable
DROP TABLE "Product";

-- DropTable
DROP TABLE "User";

-- CreateTable
CREATE TABLE "users" (
    "id" UUID NOT NULL DEFAULT gen_random_uuid(),
    "email" VARCHAR(255) NOT NULL,
    "user_name" VARCHAR(255) NOT NULL,
    "password" VARCHAR(255) NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "admin" BOOLEAN NOT NULL DEFAULT false,
    "cart" JSONB,
    CONSTRAINT "users_pkey" PRIMARY KEY ("id")
);

-- CreateTable
DROP TABLE IF EXISTS "public"."products";

-- This script only contains the table creation statements and does not fully represent the table in the database. It's still missing: indices, triggers. Do not use it as a backup.
-- Table Definition
CREATE TABLE "public"."products" (
    "id" numeric NOT NULL,
    "name" varchar NOT NULL,
    "type" varchar NOT NULL,
    "classify" varchar,
    "user_group" jsonb,
    "color" jsonb,
    "image_url" jsonb,
    "description" text,
    "properties" jsonb,
    "quantity" numeric NOT NULL DEFAULT 0,
    "price" numeric NOT NULL DEFAULT 0,
    "createdAt" timestamp NOT NULL DEFAULT now(),
    PRIMARY KEY ("id")
);

INSERT INTO
    "public"."products" (
        "id",
        "name",
        "type",
        "classify",
        "user_group",
        "color",
        "image_url",
        "description",
        "properties",
        "quantity",
        "price",
        "createdAt"
    )
VALUES
    (
        1,
        'Bình giữ nhiệt nắp vân gỗ 250ml',
        '["Cốc bình"]',
        '["Sinh nhật", "valentine", "Ngày phụ nữ"]',
        '["Bạn trai", "Bạn gái", "Đồng nghiệp nam", "Đồng nghiệp nữ", "Anh yêu", "Em yêu"]',
        '["#EE0000", "#FFFFFF"]',
        '[{"url": "https://anh.quatructuyen.com/media/catalog/product/cache/1/image/480x480/9df78eab33525d08d6e5fb8d27136e95/b/i/binh-giu-nhiet-nap-van-go-250ml-1_2.jpg", "name": "binh van go 1"}, {"url": "https://anh.quatructuyen.com/media/catalog/product/cache/1/image/480x480/9df78eab33525d08d6e5fb8d27136e95/b/i/binh-giu-nhiet-nap-van-go-250ml-0_2.jpg", "name": "binh van go 2"}]',
        '"Bình giữ nhiệt nắp vân gỗ với kiểu dáng hiện đại, nhỏ gọn, phần nắp giả gỗ độc đáo sẽ là món quà tiện ích 4 mùa ý nghĩa dành tặng bạn bè, đồng nghiệp... nhân dịp đặc biệt."',
        '[{"Dung tích": "250 ml", "Chất liệu": "Inox 304"}]',
        10,
        165000,
        '2023-06-19 15:55:47.082421'
    ),
    (
        2,
        'Cốc sứ thú cưng ngộ nghĩnh',
        '["Cốc bình"]',
        '["Sinh nhật", "đầy tháng", "ngày thiếu nhi","giáng sinh"]',
        '["Bé trai", "Bé gái", "Bạn gái", "Em yêu", "Em gái"]',
        '["#FF99FF", "#BBBBBB", "#0099FF", "#33FF33"]',
        '[{"url": "https://anh.quatructuyen.com/media/catalog/product/cache/1/image/480x480/9df78eab33525d08d6e5fb8d27136e95/c/o/coc-su-hoat-hinh-ngo-nghinh-6.jpg", "name": "Coc thu 1"}, {"url": "https://anh.quatructuyen.com/media/catalog/product/cache/1/image/480x480/9df78eab33525d08d6e5fb8d27136e95/c/o/coc-su-hoat-hinh-ngo-nghinh-o0.jpg", "name": "Coc thu 2"}, {"url": "https://anh.quatructuyen.com/media/catalog/product/cache/1/image/480x480/9df78eab33525d08d6e5fb8d27136e95/c/o/coc-su-hoat-hinh-ngo-nghinh-8.jpg", "name": "Coc thu 3"}]',
        '"Cốc sứ hoạt hình ngộ nghĩnh với thiết kế mới lạ độc đáo mang phong cách hiện đại sẽ cho bạn thưởng thức những ly trà, cafe với những cảm giác thật khác biệt và biết đâu đấy cảm hứng khơi nguồn sáng tạo chẳng ở đâu xa mà lại là do chính chiếc cốc trên tay bạn mang đến. Cũng đừng quên rằng chiếc cốc đáng yêu này sẽ là món quà tặng xinh đẹp ý nghĩa để dành tặng người thân bạn bè nhé."',
        '[{"Chất liệu": "Gốm sứ", "Kích thước": "8.5x8.2cm"}]',
        20,
        80000,
        '2023-06-19 15:55:47.097068'
    ),
    (
        3,
        'Cốc sứ phong cách Hàn Quốc',
        '["Cốc bình"]',
        '["Sinh nhật", "valentine"]',
        '["Bạn trai", "Bạn gái", "Đồng Nghiệp nam", "Đồng nghiệp nữ", "Anh yêu", "Em yêu", "Bố", "Mẹ"]',
        '["#000000", "#FFFFFF"]',
        '[{"url": "https://anh.quatructuyen.com/media/catalog/product/cache/1/image/480x480/9df78eab33525d08d6e5fb8d27136e95/c/o/coc-su-han-quoc-7.jpg", "name": "Coc Han Quoc 1"}, {"url": "https://anh.quatructuyen.com/media/catalog/product/cache/1/image/480x480/9df78eab33525d08d6e5fb8d27136e95/c/o/coc-su-han-quoc-6.jpg", "name": "Coc Han Quoc 2"}]',
        '"Cốc sứ đen trắng phong cách Hàn Quốc thiết kế kiểu dáng, màu sắc tinh tế cùng với dòng thông điệp ý nghĩa truyền cảm hứng cho bạn khi thưởng thức những ly nước."',
        '[{"Chất liệu": "Gốm sứ", "Kích thước": "8.5x8.2cm"}]',
        12,
        80000,
        '2023-06-19 15:55:47.097068'
    ),
    (
        4,
        'Bộ tách trà cà phê gốm sứ Kalani cao cấp - Hộp quà tặng sang trọng',
        '["Cốc bình"]',
        '["Sinh nhật", "Ngày doanh nhân"]',
        '["Anh yêu", "Em yêu", "Đồng nghiệp nam", "Đồng nghiệp nữ", "Sếp nam", "Sếp nữ"]',
        '["#006666"]',
        '[{"url": "https://anh.quatructuyen.com/media/catalog/product/cache/1/image/480x480/9df78eab33525d08d6e5fb8d27136e95/b/o/bo_tach_tra_ca_phe_gom_su_kalandi_cao_cap_7_.jpg", "name": "Bo tach tra 1"}, {"url": "https://anh.quatructuyen.com/media/catalog/product/cache/1/image/480x480/9df78eab33525d08d6e5fb8d27136e95/b/o/bo_tach_tra_ca_phe_gom_su_kalandi_cao_cap_1_.jpg", "name": "Bo tach tra 2"}, {"url": "https://anh.quatructuyen.com/media/catalog/product/cache/1/image/480x480/9df78eab33525d08d6e5fb8d27136e95/b/o/bo_tach_tra_ca_phe_gom_su_kalandi_cao_cap_2_.jpg", "name": "Bo tach tra 3"}]',
        '"Bộ cốc sứ mang kiểu dáng hiện đại với chi tiết mạ vàng độc đáo sang trọng, sự kết hợp giữa màu trắng, vàng và xanh tạo nên nét nghệ thuật độc đáo, mới lạ. Cùng Bộ tách trà cà phê gốm sứ Kalani cao cấp nâng tầm đẳng cấp thưởng thức những ly trà, cà phê... với một phong cách hoàn toàn mới, hoàn hảo - tinh tế - sang trọng. Một thức uống ngon không chỉ đến từ hương vị mà đến từ cách mỗi người thưởng thức và cảm nhận."',
        '[{"Chất liệu": "Gốm sứ", "Kích thước": "Cốc: 7.5x11x8.5cm + Đĩa: đường kính 14.5cm + Thìa: 15cm"}]',
        11,
        480000,
        '2023-06-19 15:55:47.097068'
    ),
    (
        5,
        'Cốc sứ hình mèo thần tài 360ml kèm thìa inox',
        '["Cốc bình"]',
        '["Sinh nhật", "Tân gia"]',
        '["Đồng nghiệp nam", "Đồng nghiệp nữ", "Anh yêu", "Em yêu"]',
        '["#FF99FF", "#FFFF00", "#EE0000", "#006633"]',
        '[{"url": "https://anh.quatructuyen.com/media/catalog/product/cache/1/image/480x480/9df78eab33525d08d6e5fb8d27136e95/c/o/coc_meo_than_tai_8.jpg", "name": "Coc meo 1"}, {"url": "https://anh.quatructuyen.com/media/catalog/product/cache/1/image/480x480/9df78eab33525d08d6e5fb8d27136e95/c/o/coc_meo_than_tai_10_1.jpg", "name": "Coc meo 2"}, {"url": "https://anh.quatructuyen.com/media/catalog/product/cache/1/image/480x480/9df78eab33525d08d6e5fb8d27136e95/o/1/o1cn01erv7f51t9lb3rtdag__2214263522340-0-cib_1.jpg", "name": "Coc meo 3"}]',
        '"Không chỉ đảm nhận chức năng đơn thuần là để đựng nước, chiếc cốc sứ Mèo thần tài dưới đây còn là món đồ xinh xắn truyền cảm hứng để bạn uống nước mỗi ngày. Chiếc cốc sứ được thiết kế sáng tạo với kiểu dáng chú mèo thần tài đang vẫy tay mời gọi may mắn với gương mặt tươi cười. Chiếc cốc sứ được thiết kế sáng tạo với kiểu dáng chú Mèo thần tài đang nâng tay lên vẫy gọi may mắn chiêu tài. Trên thân cốc được in họa tiết biểu tượng của may mắn như thỏi vàng, đồng Koban, hoa anh đào, cùng những câu chúc chữ Hán về Sức khỏe, Bình An, Tài Lộc..."',
        '[{"Dung tích": "360ml", "Chất liệu": "Gốm sứ", "Kích thước": "7.6x8.8cm"}]',
        14,
        195000,
        '2023-06-19 15:55:47.097068'
    ),
    (
        6,
        'Bình rót nước kèm 6 cốc sứ giá gỗ',
        '["Cốc bình"]',
        '["Ngày cưới", "Tân gia", "Ngày nhà giáo"]',
        '["Bạn trai", "Bạn gái", "Thầy", "Cô", "Bố", "Mẹ"]',
        '["#FFFFFF"]',
        '[{"url": "https://anh.quatructuyen.com/media/catalog/product/cache/1/image/480x480/9df78eab33525d08d6e5fb8d27136e95/b/o/bo-binh-coc-gia-go_1_.jpg", "name": "Bo 6 coc 1"}, {"url": "https://anh.quatructuyen.com/media/catalog/product/cache/1/image/480x480/9df78eab33525d08d6e5fb8d27136e95/b/o/bo-binh-coc-gia-go_3_.jpg", "name": "Bo 6 coc 2"}, {"url": "https://anh.quatructuyen.com/media/wysiwyg/trang-tri/gom-su/binh_coc_gia_go_8_.jpg", "name": "Bo 6 coc 3"}]',
        '"Bộ bình rót nước kèm 6 cốc sứ giá gỗ được làm từ chất liệu sứ tráng men sáng bóng. Với thiết kế độc đáo hiện đại, bộ bình nước cốc sứ không chỉ có chức năng để pha trà rót nước tiện lợi mà hơn thế bộ sản phẩm này sẽ tô điểm cho căn phòng tiếp khách của gia đình bạn thêm sang trọng, lịch sự, tạo ấn tượng với những vị khách đến chơi. Bộ bình rót nước kèm 6 cốc sứ giá gỗ là món quà tặng tân gia, quà tặng thầy cô, bạn bè người thân ý nghĩa."',
        '[{"Bao gồm": "1 bình sứ, 6 tách sứ, 6 miếng lót gỗ, 1 giá gỗ", "Chất liệu": "Sứ, gỗ", "Kích thước": "Bình: Đường kính 15cm x cao 17.5cm ( Dung tích 1,8L) / Cốc: Đường kính 7cm x 11cm ( Dung tích 200ml )"}]',
        12,
        940000,
        '2023-06-19 15:55:47.097068'
    ),
    (
        7,
        'Hoa hồng sáp thơm cao cấp',
        '["Hoa"]',
        '["Sinh nhật", "valentine", "Ngày phụ nữ", "Ngày cưới", "Ngày nhà giáo"]',
        '["Bạn gái", "Em yêu", "Vợ", "Cô", "Mẹ", "Chị gái", "Em gái"]',
        '["#FF99FF", "#FFFFFF", "#660099"]',
        '[{"url": "https://birthdaylovecake.com/wp-content/uploads/2022/05/Bo-hoa-dep-tang-nguoi-yeu.jpg", "name": "Hoa hong sap 1"}, {"url": "https://salt.tikicdn.com/cache/w1200/ts/product/1a/fb/f6/52cb1b269584de3753f097760fb9b32b.jpg", "name": "Hoa hong sap 2"}]',
        '"Hoa sáp thơm - hộp quà tặng hoa hồng sáp cao cấp 8/3, 20/10, 20/11, quà sinh nhật, valentine, quà cưới,... Quà tặng ý nghĩa: Hộp hoa sáp thơm dùng làm quà tặng rất độc đáo và ý nghĩa, thường được dung để tặng bạn gái, tặng cô giáo hoặc tặng chị, mẹ trong những dịp ý nghĩa."',
        '[{"Chất liệu": "Sáp thơm cao cấp", "Kích thước": "13x13x12cm"}]',
        13,
        330000,
        '2023-06-19 15:55:47.097068'
    ),
    (
        8,
        'Bó hoa sáp thơm 7 bông',
        '["Hoa"]',
        '["Sinh nhật", "valentine", "Ngày phụ nữ"]',
        '["Bạn gái", "Em yêu", "Vợ", "Cô", "Mẹ", "Đồng nghiệp nữ", "Chị gái", "Em gái"]',
        '["#FF99FF", "#FF0000"]',
        '[{"url": "https://anh.quatructuyen.com/media/wysiwyg/trang-tri/hoa-sao-kho/02-2023-bo_hoa_hong_6_.jpg", "name": "Hoa sap 7 bong 1"}, {"url": "https://anh.quatructuyen.com/media/wysiwyg/trang-tri/hoa-sao-kho/02-2023-bo_hoa_hong_2_.jpg", "name": "Hoa sap 7 bong 2"}, {"url": "https://anh.quatructuyen.com/media/wysiwyg/trang-tri/hoa-sao-kho/02-2023-bo_hoa_hong_1_.jpg", "name": "Hoa sap 7 bong 3"}]',
        '"Bó hoa hồng sáp thơm với bông hồng đẹp sống động như thật được bó khéo léo, đẹp mắt là món quà tặng tuyệt vời để bạn dành tặng bạn gái, người yêu, bạn bè..."',
        '[{"Bao gồm": "Bó hoa sáp 7 bông kèm túi nhựa quai", "Chất liệu": "Sáp thơm cao cấp"}]',
        21,
        230000,
        '2023-06-19 15:55:47.097068'
    ),
    (
        9,
        'Khung ảnh hoa hồng vĩnh cửu',
        '["Khung ảnh"]',
        '["Sinh nhật", "Ngày phụ nữ"]',
        '["Vợ", "Em yêu", "Mẹ"]',
        '["#FF99FF", "#FF0000", "#FFFFFF"]',
        '[{"url": "https://anh.quatructuyen.com/media/wysiwyg/trang-tri/hop-hoa-hong/khung_anh_hoa_hong_3.jpg", "name": "Khung anh vinh cuu 1"}, {"url": "https://anh.quatructuyen.com/media/catalog/product/cache/1/image/480x480/9df78eab33525d08d6e5fb8d27136e95/_/n/_nh_n_n_2.jpg", "name": "Khung anh vinh cuu 2"}]',
        '"Khung ảnh hoa hồng bất tử như một khu vườn thơ mộng với những bông hoa 100% tự nhiên được xử lý nhằm giữ được độ tươi trong một thời gian dài. Nếu bạn đang loay hoay không biết lựa chọn món quà gì, thì những khung ảnh hoa bắt mắt này chính là một món quà ấn tượng dành cho các phái nữ duyên dáng."',
        '[{"Chất liệu": "Khung ảnh gỗ, mặt mica, hoa", "Kích thước": "17x22cm", "Nguyên liệu": "hoa cẩm tú cầu, hoa baby, hoa hồng, lá dương sỉ,..."}]',
        51,
        480000,
        '2023-06-19 15:55:47.097068'
    ),
    (
        10,
        'Hộp quà hoa hồng sáp 2 ngăn kèm thiệp',
        '["Hoa"]',
        '["Sinh nhật", "valentine", "Ngày phụ nữ"]',
        '["Bạn gái", "Em yêu", "Vợ", "Cô", "Mẹ", "Đồng nghiệp nữ", "Chị gái", "Em gái"]',
        '["#FF99FF", "#FF0000", "#660099"]',
        '[{"url": "https://anh.quatructuyen.com/media/catalog/product/cache/1/image/480x480/9df78eab33525d08d6e5fb8d27136e95/h/o/hop-qua-hoa-hong-sap-2-ngan-kem-thiep-3.jpg", "name": "Hoa hong sap 2 ngan 1"}, {"url": "https://anh.quatructuyen.com/media/wysiwyg/trang-tri/hop-hoa-hong/hop-qua-hoa-hong-sap-2-ngan-kem-thiep-1.jpg", "name": "Hoa hong sap 2 ngan 2"}, {"url": "https://anh.quatructuyen.com/media/wysiwyg/trang-tri/hop-hoa-hong/hop-qua-hoa-hong-sap-2-ngan-kem-thiep-10.jpg", "name": "Hoa hong sap 2 ngan 3"}]',
        '"Hoa hồng là biểu tượng cho tình yêu, cho những ngọt ngào và lãng mạn. Có lẽ bởi thế mà hoa hồng luôn là một trong những món quà hàng đầu dành tặng cho bạn gái, người yêu của các chàng. Hộp quà hoa hồng sáng với vẻ đẹp vĩnh cửu trường tồn cùng thời gian sẽ cùng bạn gửi lời yêu thương đến các nàng nhân các dịp đặc biệt như sinh nhật, ngày kỷ niệm, lễ 8/3, 20/10,..."',
        '[{"Chất liệu": "Sáp thơm cao cấp", "Kích thước": "24.5x12.5x12.5cm"}]',
        53,
        220000,
        '2023-06-19 15:55:47.097068'
    ),
    (
        11,
        'Khung ảnh hoa khô Flower Box',
        '["Khung ảnh"]',
        '["Sinh nhật", "valentine", "Ngày phụ nữ"]',
        '["Bạn gái", "Em yêu", "Vợ", "Cô", "Mẹ", "Chị gái", "Em gái"]',
        '["#FF99FF", "#FF0000", "#FFFFFF"]',
        '[{"url": "https://anh.quatructuyen.com/media/wysiwyg/trang-tri/khung-anh/khung_anh_hoa_kho_3_1.jpg", "name": "Khung anh hoa kho 1"}, {"url": "https://anh.quatructuyen.com/media/wysiwyg/trang-tri/khung-anh/khung_anh_hoa_kho_6_1.jpg", "name": "Khung anh hoa kho"}]',
        '"Khung ảnh hoa bất tử, hoa khô như một khu vườn thơ mộng với những bông hoa 100% tự nhiên được xử lý nhằm giữ được độ tươi trong một thời gian dài. Nếu bạn đang loay hoay không biết lựa chọn món quà gì , thì những khung ảnh hoa bắt mắt này chính là 1 món quà ấn tượng dành cho các phái nữ duyên dáng. Những cánh hoa đan xen vào nhau một cách tinh tế như 1 bức tranh 3D đầy màu sắc, khiến ai nhìn vào cũng phải ngỡ ngàng và thích thú với khung ảnh nghệ thuật. Hoa hồng vĩnh cửu còn được biết đến với tên gọi là hoa hồng bất tử. Như tên gọi, hoa hồng bất tử là loài hoa không tàn mà vẫn giữ được màu sắc tươi thắm qua thời gian, hoa vẫn giữ lại được màu sắc tươi như mới nở, màu không phai và cánh không rụng. Quà tặng khung ảnh hoa khô sẽ cùng bạn trao gửi yêu thương đến người ấy một cách đặc biệt ý nghĩa và trọn vẹn nhất."',
        '[{"Chất liệu": "Hoa hồng thật, khung ảnh gỗ, mặt mica có thể thay ảnh bên trong", "Kích thước": "11x17cm"}]',
        12,
        250000,
        '2023-06-19 15:55:47.097068'
    ),
    (
        12,
        'Hộp quà sinh nhật Mint Dream',
        '["Hộp quà"]',
        '["Sinh nhật", "Ngày phụ nữ"]',
        '["Bạn gái", "Em yêu", "Vợ", "Cô", "Mẹ", "Đồng nghiệp nữ", "Chị gái", "Em gái", "Bé gái"]',
        '["#CCFFFF"]',
        '[{"url": "https://anh.quatructuyen.com/media/catalog/product/cache/1/image/480x480/9df78eab33525d08d6e5fb8d27136e95/q/u/qua_tang_8_3_1_5.jpg", "name": "Mint dream 1"}, {"url": "https://anh.quatructuyen.com/media/wysiwyg/Gift-set/bit-mat-ngu-gel-cute-3_1.jpg", "name": "Mint dream 2"}, {"url": "https://anh.quatructuyen.com/media/wysiwyg/Gift-set/coc-su-hoat-hinh-ngo-nghinh-8.jpg", "name": "Minh dream 3"}, {"url": "https://anh.quatructuyen.com/media/wysiwyg/Gift-set/qua_tang_8_3_4_4.jpg", "name": "Mint dream 4"}, {"url": "https://anh.quatructuyen.com/media/wysiwyg/Gift-set/hop_dung_qua_vuong_kieu_co_dien_chu_huou_2.jpg", "name": "Mint dream 5"}]',
        '"Bộ quà tặng mang gam màu bạc hà Mint xanh mát dành tặng những món hữu ích kèm niềm vui dành cho phái nữ duyên dáng. Hãy ghim ngay set quà Mint Dream này vào list quà tặng để tạo ấn tượng cho người phụ nữ bên cạnh bạn nhé."',
        '[{"Bao gồm": "Khăn, hộp đựng quà mini, cốc hình thú cưng, nước hoa, bó hoa khô, thiệp chúc mừng", "Kích thước": "20x20x6cm"}]',
        15,
        270000,
        '2023-06-19 15:55:47.097068'
    ),
    (
        13,
        'Bộ quà tặng Sunshine',
        '["Hộp quà"]',
        '["Sinh nhật", "valentine", "Ngày phụ nữ"]',
        '["Bạn gái", "Em yêu", "Vợ", "Cô", "Mẹ", "Đồng nghiệp nữ", "Chị gái", "Em gái"]',
        '["#CC6633"]',
        '[{"url": "https://anh.quatructuyen.com/media/catalog/product/cache/1/image/480x480/9df78eab33525d08d6e5fb8d27136e95/q/u/qua_tang_8_3_anh_bia_2_2.jpg", "name": "Sunshine 1"}, {"url": "https://anh.quatructuyen.com/media/wysiwyg/Gift-set/9_2.jpg", "name": "Sunshine 2"}, {"url": "https://anh.quatructuyen.com/media/wysiwyg/Gift-set/guong-kem-luoc-gap-gon-1_1.jpg", "name": "Sunshine 3"}, {"url": "https://anh.quatructuyen.com/media/wysiwyg/Gift-set/243_X_t_th_m_body_mist_50ml_9.jpg", "name": "Sunshine 4"}, {"url": "https://anh.quatructuyen.com/media/wysiwyg/Gift-set/qua_tang_8_3_2_4.jpg", "name": "Sunshine 5"}]',
        '"Món quà mang ánh sáng ảo diệu qua túi trong suốt mơ mộng chắc chắn sẽ làm người nhận phải trầm trồ vì sự đáng yêu này. Hãy cùng bộ quà tặng Sunshine gửi trao lời yêu để người ấy cảm nhận được rằng với bạn họ vẫn luôn là điều đặc biệt ngọt ngào không thể thiếu trong cuộc sống."',
        '[{"Bao gồm": "Son Black Rouge Air Fit Velvet Tint A37, Gương kèm lược gấp gọn màu ngẫu nhiên, Xịt thơm body mist nắp gỗ 50ml, Dây đèn led trang trí 2.5m bóng nhỏ", "Kích thước": "13.8x15x5cm"}]',
        92,
        320000,
        '2023-06-19 15:55:47.097068'
    ),
    (
        14,
        'Hộp quà tặng người yêu Always Happy',
        '["Hộp quà"]',
        '["Sinh nhật", "valentine", "Ngày phụ nữ"]',
        '["Bạn gái", "Em yêu", "Vợ", "Cô", "Mẹ", "Đồng nghiệp nữ", "Chị gái", "Em gái"]',
        '["#FF99FF"]',
        '[{"url": "https://anh.quatructuyen.com/media/catalog/product/cache/1/image/480x480/9df78eab33525d08d6e5fb8d27136e95/q/u/qua_tang_8_3_1.jpg", "name": "Always happy 1"}, {"url": "https://anh.quatructuyen.com/media/wysiwyg/Gift-set/9_1.jpg", "name": "Always happy 2"}, {"url": "https://anh.quatructuyen.com/media/wysiwyg/Gift-set/doa_hong_kieu_sa_14__2.jpg", "name": "Always happy 3"}, {"url": "https://anh.quatructuyen.com/media/wysiwyg/Gift-set/den-ngu-trai-tim-9.jpg", "name": "Always happy 4"}, {"url": "https://anh.quatructuyen.com/media/wysiwyg/Gift-set/qua_tang_8_5.jpg", "name": "Always happy 5"}]',
        '"Bộ quà tặng với sắc hồng dịu dàng đằm thắm như một lời chúc đầy ý nghĩa dành cho nàng thơ của bạn. Đúng như tên gọi, quà tặng Always Happy đem đến những món đồ hữu ích mong muốn nàng luôn hạnh phúc và rạng rỡ như những đoá hoa."',
        '[{"Bao gồm": "Hộp quà kèm túi xách kích thước: 25.5x20.5.9.5cm, Lọ trà hoa hồng organic, Hộp quà hình thỏi son H03 Hồng - bên trong chứa Son Black Rouge Air Fit Velvet Tint A37, Đèn ngủ mini trái Tim kèm hộp trong suốt - hồng, khăn mặt vải cotton hồng, thiệp chúc mừng thông điệp tiếng Anh", "Kích thước": "25.5x20.5x9.5cm"}]',
        16,
        470000,
        '2023-06-19 15:55:47.111051'
    ),
    (
        15,
        'Hộp điều ước hoa hồng bất tử lọ thuỷ tinh',
        '["Hộp quà"]',
        '["Sinh nhật", "valentine"]',
        '["Bạn trai", "Bạn gái", "Anh yêu", "Em yêu", "Vợ", "Chồng", "Bố", "Mẹ"]',
        '["#FF99FF", "#FF9900", "#FF0000", "#660099", "#99FFFF"]',
        '[{"url": "https://anh.quatructuyen.com/media/wysiwyg/do-trang-tri/02-2023-_Hoa_bat_tu_5.jpg", "name": "Lo hoa bat tu 1"}, {"url": "https://anh.quatructuyen.com/media/wysiwyg/do-trang-tri/hoa_hong_bat_tu.jpg", "name": "Lo hoa bat tu 2"}, {"url": "https://anh.quatructuyen.com/media/wysiwyg/do-trang-tri/02-2023-_Hoa_bat_tu_4.jpg", "name": "Lo hoa bat tu 3"}]',
        '"Không biết từ khi nào mà hoa hồng trở thành biểu tượng của tình yêu. Hoa hồng biểu trưng cho sự lãng mạn, niềm đam mê mãnh liệt. Với ý nghĩa đó, hoa hồng bất tử được lựa cọn kỹ lưỡng từ những bông hoa đẹp nhất, qua quá trình gia công để giữ mãi vẻ tươi tắn, chính là món quà thể hiện tình yêu mãi mãi vĩnh cửu dành cho người bạn thương."',
        '[{"Màu sắc": "5 loại", "Chất liệu": "Đế gỗ, hộp thuỷ tinh trong suốt, 100% hoa tự nhiên được đan xen tinh tế giữa hoa hồng , hoa cẩm tú cầu...", "Kích thước": "chiều cao 12.5cm, đường kính đáy 6.5cm"}]',
        42,
        150000,
        '2023-06-19 15:55:47.111051'
    ),
    (
        16,
        'Hộp quà tặng Happy Life',
        '["Hộp quà"]',
        '["Sinh nhật", "valentine", "Ngày phụ nữ"]',
        '["Bạn gái", "Em yêu", "Vợ", "Mẹ", "Chị gái", "Em gái"]',
        '["#F4A460"]',
        '[{"url": "https://anh.quatructuyen.com/media/wysiwyg/Gift-set/qua_tang_8_3_3_2.jpg", "name": "Happy life 1"}, {"url": "https://anh.quatructuyen.com/media/wysiwyg/Gift-set/hoa-nen-thom-nghe-thuat-0_1_1.jpg", "name": "Happy life 2"}, {"url": "https://anh.quatructuyen.com/media/wysiwyg/Gift-set/bit-mat-ngu-gel-cute-3.jpg", "name": "Happy life 3"}, {"url": "https://anh.quatructuyen.com/media/wysiwyg/Gift-set/_-06.jpg", "name": "Happy life 4"}, {"url": "https://anh.quatructuyen.com/media/wysiwyg/Gift-set/4a_1.jpg", "name": "Happy life 5"}]',
        '"Hãy cùng bộ quà tặng Happy Life gửi trao lời yêu thương và quan tâm để người phụ nữ cảm nhận được rằng với bạn họ luôn là 1 đoá hồng, 1 nửa thế giới đáng yêu cần trân trọng trong cuộc sống."',
        '[{"Bao gồm": "Hoa nến thơm nghệ thuật - Miền Nhiệt Đới -  hũ nâu, Bịt mắt gel hoạt hình màu ngẫu nhiên, Hộp Kraft vuông nắp H13 đen S bên trong chứa 1 lọ mật ong + cam lát sấy + sung sấy tự nhiên, Bó hoa khô lavender mini, Thiệp chúc mừng mini", "Kích thước": "25x20x8cm"}]',
        52,
        210000,
        '2023-06-19 15:55:47.111051'
    ),
    (
        17,
        'Hộp quà tặng My Light',
        '["Hộp quà"]',
        '["Sinh nhật", "valentine", "Ngày phụ nữ"]',
        '["Em yêu", "Anh yêu", "Vợ", "Chồng"]',
        '["#FF99FF"]',
        '[{"url": "https://anh.quatructuyen.com/media/wysiwyg/Gift-set/luv11/21.png", "name": "My light 1"}, {"url": "https://anh.quatructuyen.com/media/wysiwyg/Gift-set/luv11/244_X_t_th_m_body_mist_h_p_tr_i_tim_50ml_2.jpg", "name": "My light 2"}, {"url": "https://anh.quatructuyen.com/media/wysiwyg/Gift-set/luv11/son_black_rough_ver_7_a35_8.jpg", "name": "My light 3"}, {"url": "https://anh.quatructuyen.com/media/wysiwyg/Gift-set/luv11/den_trang_tri_ky_lan_q8_.jpeg", "name": "My light 4"}, {"url": "https://anh.quatructuyen.com/media/wysiwyg/Gift-set/luv11/3_1.png", "name": "My light 5"}]',
        '"Một món quà tặng nhỏ nhưng chứa đựng tấm chân tình của bạn dành cho người yêu sẽ là thứ gia vị tuyệt hảo giúp tình yêu luôn tươi đẹp như thuở ban đầu. Hãy cùng bộ quà tặng My Light gửi trao lời yêu để người ấy cảm nhận được rằng với bạn họ vẫn luôn là điều đặc biệt ngọt ngào không thể thiếu trong cuộc sống."',
        '[{"Bao gồm": "1 hộp quà cửa sổ hồng kèm túi đựng, 1 xịt thơm body mist hộp trái Tim 50ml, 1 hộp quà hình thỏi son H03 Hồng - bên trong chứa son Black Rouge, 1 đèn trang trí Kỳ lân hồng, 1 thiệp chúc mừng mẫu mới", "Kích thước": "20.5x20.5x7.5cm"}]',
        12,
        540000,
        '2023-06-19 15:55:47.111051'
    ),
    (
        18,
        'Ví da cầm tay TRITA RVN06',
        '["Bóp ví"]',
        '["Sinh nhật", "valentine", "Kỷ niệm ngày cưới"]',
        '["Bạn trai", "Chồng", "Anh trai", "Em trai"]',
        '["#000000", "#CD853F", "#F4A460"]',
        '[{"url": "https://anh.quatructuyen.com/media/catalog/product/cache/3/image/480x480/9df78eab33525d08d6e5fb8d27136e95/v/i/vi-da-cam-tay-mini-dung-tien-the-trita-rvn06-6.jpg", "name": "Vi cam tay Trita 1"}, {"url": "https://anh.quatructuyen.com/media/catalog/product/cache/3/image/480x480/9df78eab33525d08d6e5fb8d27136e95/v/i/vi-da-cam-tay-mini-dung-tien-the-trita-rvn06-7.jpg", "name": "Vi cam tay Trita 2"}, {"url": "https://anh.quatructuyen.com/media/catalog/product/cache/3/image/480x480/9df78eab33525d08d6e5fb8d27136e95/v/i/vi-da-cam-tay-mini-dung-tien-the-trita-rvn06-3.jpg", "name": "Vi cam tay Trita 3"}, {"url": "https://anh.quatructuyen.com/media/catalog/product/cache/3/image/480x480/9df78eab33525d08d6e5fb8d27136e95/v/i/vi-da-cam-tay-mini-dung-tien-the-trita-rvn06-4.jpg", "name": "Vi cam tay Trita 4"}, {"url": "https://anh.quatructuyen.com/media/catalog/product/cache/3/image/480x480/9df78eab33525d08d6e5fb8d27136e95/v/i/vi-da-cam-tay-mini-dung-tien-the-trita-rvn06-0.jpg", "name": "Vi cam tay Trita 5"}, {"url": "https://anh.quatructuyen.com/media/catalog/product/cache/3/image/480x480/9df78eab33525d08d6e5fb8d27136e95/v/i/vi-da-cam-tay-mini-dung-tien-the-trita-rvn06-2.jpg", "name": "Vi cam tay Trita 6"}]',
        '"Ví da cầm tay đựng tiền, thẻ kiểu dáng đơn giản nhỏ gọn mà vô cùng tinh tế với ngăn đựng rộng rãi, đủ để đựng tiền và các loại thẻ. Ví da bò Trita được làm từ chất liệu da tổng hợp mềm mại, không bong tróc và không thấm nước, với 3 ngăn chính và 3 ngăn phụ gọn gàng, tiện lợi."',
        '[{"Chất liệu": "Da PU", "Kích thước": "Dài 12cm x Rộng 2cm x Cao 9cm"}]',
        53,
        120000,
        '2023-06-19 15:55:47.111051'
    ),
    (
        19,
        'Túi da đeo vai Crazy Horse - Da bò thật',
        '["Túi balo"]',
        '["Sinh nhật", "Ngày doanh nhân", "Kỷ niệm ngày cưới"]',
        '["Bạn trai", "Chồng", "Anh trai"]',
        '["#A0522D"]',
        '[{"url": "https://anh.quatructuyen.com/media/catalog/product/cache/3/image/480x480/9df78eab33525d08d6e5fb8d27136e95/t/u/tui_da_deo_vai_crazy_horse_1_.jpg", "name": "Tui da Crazy Horse 1"}, {"url": "https://anh.quatructuyen.com/media/catalog/product/cache/3/image/480x480/9df78eab33525d08d6e5fb8d27136e95/t/u/tui_da_deo_vai_crazy_horse_6_.jpg", "name": "Tui da Crazy Horse 2"}, {"url": "https://anh.quatructuyen.com/media/catalog/product/cache/3/image/480x480/9df78eab33525d08d6e5fb8d27136e95/t/u/tui_da_deo_vai_crazy_horse_10_.jpg", "name": "Tui da Crazy Horse 3"}, {"url": "https://anh.quatructuyen.com/media/catalog/product/cache/3/image/480x480/9df78eab33525d08d6e5fb8d27136e95/t/u/tui_da_deo_vai_crazy_horse_4_.jpg", "name": "Tui da Crazy Horse 4"}, {"url": "https://anh.quatructuyen.com/media/wysiwyg/vi-da-nam/tui_da_deo_vai_crazy_horse_9_.jpg", "name": "Tui da Crazy Horse 5"}, {"url": "https://anh.quatructuyen.com/media/wysiwyg/vi-da-nam/tui_da_deo_vai_crazy_horse_8_.jpg", "name": "Tui da Crazy Horse 6"}]',
        '"Thật không quá khi nói rằng, một chiếc túi đeo vai bằng da với màu sắc nhã nhặn, kiểu dáng hiện đại góp phần tạo lên bộ trang phục hoàn hảo, mang đậm phong cách thời thượng. Vì vậy đừng bỏ qua chiếc Túi da đeo vai Crazy Horse được làm từ 100% da bò thật phủ lớp sáp đặc biệt tạo lên chất liệu da bò ấn tượng, bền bỉ vượt thời gian, sang trọng, tinh tế đến từng đường kim mũi chỉ. "',
        '[{"Chất liệu": "Da bò truyền thống", "Kích thước": "34cm x 3,5cm x 25cm"}]',
        64,
        1080000,
        '2023-06-19 15:55:47.111051'
    ),
    (
        20,
        'Gạt tàn Lubinski',
        '["Gạt tàn"]',
        '["Ngày doanh nhân"]',
        '["Bạn trai", "Anh yêu", "Chồng", "Sếp nam", "Anh trai"]',
        '["#000000", "#C0C0C0", "#FFAEB9", "#DDC488"]',
        '[{"url": "https://anh.quatructuyen.com/media/wysiwyg/tien-ich/gat-tan/gat_tan_6.jpg", "name": "Gat tan 1"}, {"url": "https://anh.quatructuyen.com/media/wysiwyg/tien-ich/gat-tan/gat_tan_1.jpg", "name": "Gat tan 2"}, {"url": "https://anh.quatructuyen.com/media/wysiwyg/tien-ich/gat-tan/gat_tan_4.jpg", "name": "Gat tan 3"}, {"url": "https://anh.quatructuyen.com/media/wysiwyg/tien-ich/gat-tan/gat_tan8_.jpg", "name": "Gat tan 4"}]',
        '"Gạt tàn xì gà ngoài tác dụng đựng tàn thuốc thì còn được sử dụng như một món đồ trang trí cho căn phòng của bạn thêm sang trọng, đẳng cấp, tạo nên phong cách riêng. Gạt tàn xì gà Lubinski 1 điếu được thiết kế nhỏ gọn, thông minh với những đường nét tinh tế chắn chắn sẽ làm hài lòng những người yêu thích xì gà bởi tính thẩm mỹ và tính tiện dụng cao."',
        '[{"Chất liệu": "Kim loại", "Kích thước": "12cm x 6,5cm x 2,5cm"}]',
        64,
        420000,
        '2023-06-19 15:55:47.111051'
    ),
    (
        21,
        'Tất nam cổ ngắn Caramella',
        '["Vớ tất"]',
        '["Sinh nhật", "valentine", "Kỷ niệm ngày yêu"]',
        '["Bạn trai", "Anh yêu", "Chồng", "Anh trai", "Em trai"]',
        '["#000000"]',
        '[{"url": "https://anh.quatructuyen.com/media/catalog/product/cache/3/image/480x480/9df78eab33525d08d6e5fb8d27136e95/t/a/tat_nam_caramella_3_1.jpg", "name": "Tat nam 1"}, {"url": "https://anh.quatructuyen.com/media/wysiwyg/thoi-trang/tat_nam_caramella_4.jpg", "name": "Tat nam 2"}, {"url": "https://anh.quatructuyen.com/media/wysiwyg/thoi-trang/tat_nam_caramella_1.jpg", "name": "Tat nam 3"}]',
        '"Tất nam cổ ngắn Caramella - Hộp set 4 đôi với chất cotton mềm mịn thấm mồ hôi nhanh, thiết kế tông màu nam tính trẻ trung kèm hộp đựng lịch thiệp."',
        '[{"Chất liệu": "Cotton tự nhiên"}]',
        12,
        160000,
        '2023-06-19 15:55:47.111051'
    ),
    (
        22,
        'Hộp quà tặng Simple Man',
        '["Hộp quà"]',
        '["Sinh nhật", "valentine", "Kỷ niệm ngày yêu", "Kỷ niệm ngày cưới"]',
        '["Bạn trai", "Anh yêu", "Chồng", "Anh trai", "Em trai"]',
        '["#FFEFD5"]',
        '[{"url": "https://anh.quatructuyen.com/media/catalog/product/cache/3/image/480x480/9df78eab33525d08d6e5fb8d27136e95/l/u/luvgift-simpleman-17_14_.jpg", "name": "Simple man 1"}, {"url": "https://anh.quatructuyen.com/media/catalog/product/cache/3/image/480x480/9df78eab33525d08d6e5fb8d27136e95/l/u/luvgift-simpleman-17_13_.jpg", "name": "Simple man 2"}]',
        '"Người ta thường ví von chàng trai có trái tim ấm áp chính là mặt trời nhỏ mang đến những tia nắng sưởi ấm tim ai. Và bất kì cô nàng nào cũng sẽ thật hạnh phúc khi được ở bên chàng trai ấy. Hãy để quà tặng Simple Man giúp bạn gửi ngàn lời yêu trân quý đến chàng trai ấm áp bên mình nhé!"',
        '[{"Bao gồm": "Hộp đựng quà tặng độc quyền, Tất nam cổ ngắn - hộp 4 đôi, Loa bluetooth robot mini, Thiệp + quả thông", "Kích thước": "25.5x20.5x9.5cm"}]',
        52,
        700000,
        '2023-06-19 15:55:47.111051'
    ),
    (
        23,
        'Bộ gậy đánh golf trong nhà',
        '["Giải trí"]',
        '["Sinh nhật", "Kỷ niệm ngày cưới"]',
        '["Anh yêu", "Bạn trai", "Anh trai", "Em trai", "Chồng", "Bố"]',
        '["#C0C0C0"]',
        '[{"url": "https://anh.quatructuyen.com/media/catalog/product/cache/3/image/480x480/9df78eab33525d08d6e5fb8d27136e95/b/o/bo_danh_goft_trong_nha_5_.jpg", "name": "Golf 1"}, {"url": "https://anh.quatructuyen.com/media/catalog/product/cache/3/image/480x480/9df78eab33525d08d6e5fb8d27136e95/b/o/bo_danh_goft_trong_nha_1_.jpg", "name": "Golf 2"}]',
        '"Bạn là người yêu thích chơi Golf nhưng lại không đủ điều kiện để chơi ngoài sân golf chuyên nghiệp hay không có thời gian. Với Bộ gậy đánh Golf trong nhà bạn không cần phải đi đâu xa cả mà ngay tại căn nhà của chính mình cũng có thể thưởng thức chơi golf một cách vui vẻ, giải trí sau những giờ làm việc căng thẳng"',
        '[{"Bao gồm": "1 gậy dài 80cm, 1 đầu gậy, 2 quả bóng golf, 1 khung golf để sử dụng trên thảm", "Chất liệu": "Hợp kim nhôm cao cấp", "Kích thước": "Vali 30.5 x 16.5 x 7 cm"}]',
        73,
        840000,
        '2023-06-19 15:55:47.111051'
    ),
    (
        24,
        'Hộp quà bút Picasso kèm sổ da',
        '["Bút"]',
        '["Ngày doanh nhân", "Ngày nhà giáo"]',
        '["Sếp nam", "Sếp nữ", "Thầy", "Cô", "Đồng nghiệp nam", "Đồng nghiệp nữ"]',
        '["#000000"]',
        '[{"url": "https://anh.quatructuyen.com/media/catalog/product/cache/3/image/480x480/9df78eab33525d08d6e5fb8d27136e95/b/o/bo_qua_tang_but_picasso_908_rb.jpeg", "name": "2 but va so 1"}, {"url": "https://anh.quatructuyen.com/media/catalog/product/cache/3/image/480x480/9df78eab33525d08d6e5fb8d27136e95/b/o/bo_qua_tang_but_picasso_9085.jpeg", "name": "2 but va so 2"}, {"url": "https://anh.quatructuyen.com/media/catalog/product/cache/3/image/480x480/9df78eab33525d08d6e5fb8d27136e95/b/o/bo_qua_tang_but_picasso_9081.jpeg", "name": "2 but va so 3"}]',
        '"Thương hiệu bút Picasso là một trong những thương hiệu bút ký hàng đầu được giới doanh nhân ưu tiên tin dùng. Bút Picasso không chỉ mang đến sự sang trọng đẳng cấp ở thiết kế mà quan trọng hơn hết chính là chất lượng sản phẩm. Bộ quà tặng bút Picasso với bút dạ bi Picasso và cặp ngòi thay thế tiện lợi cùng với sổ da đựng trong hộp quà sang trọng sẽ là món quà tặng tuyệt vời để bạn dành tặng sếp, đối tác, khách hàng, bạn bè, người thân..."',
        '[{"Bao gồm": "1 bút dạ bi Picasso 917RB, 2 ngòi dạ bi, 1 sổ da", "Loại ngòi": "Dạ bi"}]',
        92,
        890000,
        '2023-06-19 15:55:47.111051'
    ),
    (
        25,
        'Hộp quà bút Picasso La Mã kèm lọ mực',
        '["Bút"]',
        '["Ngày doanh nhân", "Ngày nhà giáo"]',
        '["Sếp nam", "Sếp nữ", "Thầy", "Cô", "Đồng nghiệp nam", "Đồng nghiệp nữ"]',
        '["#000000"]',
        '[{"url": "https://anh.quatructuyen.com/media/catalog/product/cache/3/image/480x480/9df78eab33525d08d6e5fb8d27136e95/q/u/qua-tang-but-may-picasso-917_3__1.jpeg", "name": "But la ma 1"}, {"url": "https://anh.quatructuyen.com/media/catalog/product/cache/3/image/480x480/9df78eab33525d08d6e5fb8d27136e95/q/u/qua-tang-but-may-picasso-917_7_.jpeg", "name": "But la ma 2"}]',
        '"Bút máy Picasso 917 là dòng bút máy cao cấp được các doanh nhân ưa chuộng không chỉ bởi thiết kế sang trọng tinh tế mà hơn hết đó là uy tín chất lượng mà thương hiệu bút Picasso này mang đến cho người sử dụng. Bút máy Picasso 917 với phiên bản hộp quà tặng cao cấp sẽ là món quà tặng tuyệt vời để bạn dành tặng sếp, đối tác, người thân, bạn bè."',
        '[{"Bao gồm": "1 bút máy Picasso 917FB, 1 lọ mực đen Picasso 40ml", "Loại ngòi": "Máy", "Kích thước": "Hộp đựng 20 x 20 x 5.5 cm"}]',
        23,
        970000,
        '2023-06-19 15:55:47.111051'
    ),
    (
        26,
        'Hộp quà bút Picasso Thần Thoại Hy Lạp',
        '["Bút"]',
        '["Ngày doanh nhân", "Ngày nhà giáo"]',
        '["Sếp nam", "Sếp nữ", "Thầy", "Cô", "Đồng nghiệp nam", "Đồng nghiệp nữ"]',
        '["#3333FF"]',
        '[{"url": "https://anh.quatructuyen.com/media/catalog/product/cache/3/image/480x480/9df78eab33525d08d6e5fb8d27136e95/b/o/bo-qua-tang-but-picasso-than-thoai-hy-lap-6.jpg", "name": "But hy lap 1"}, {"url": "https://anh.quatructuyen.com/media/catalog/product/cache/3/image/480x480/9df78eab33525d08d6e5fb8d27136e95/b/o/bo-qua-tang-but-picasso-than-thoai-hy-lap-2.jpg", "name": "But hy lap 2"}, {"url": "https://anh.quatructuyen.com/media/catalog/product/cache/3/image/480x480/9df78eab33525d08d6e5fb8d27136e95/b/o/bo-qua-tang-but-picasso-than-thoai-hy-lap-5.jpg", "name": "But hy lap 3"}, {"url": "https://anh.quatructuyen.com/media/catalog/product/cache/3/image/480x480/9df78eab33525d08d6e5fb8d27136e95/b/o/bo-qua-tang-but-picasso-than-thoai-hy-lap-0.jpg", "name": "But hy lap 4"}]',
        '"Được mệnh danh là cái nôi của nền văn minh phương Tây, một quốc gia mang vẻ đẹp kết tinh từ nền văn hoá đậm chất thần thoại huyền bí với những vị thần đầy quyền năng. Và điểm dừng chân tiếp theo của BST Hành Trình Khám Văn Hoá đến từ thương hiệu Bút Picasso gọi tên Thần Thoại Hy Lạp. Quả đúng như tên gọi, hộp quà Picasso phiên bản này được phối màu đầy mê hoặc, đồng bộ với hình ảnh biểu tượng đặc trưng, những vị thần quyền uy... Chắc hẳn, đây sẽ là món quà hoàn hảo tặng sếp, doanh nhân,..."',
        '[{"Bao gồm": "1 bút máy Picasso 917FB, 1 lọ mực đen Picasso 40ml", "Loại ngòi": "Máy", "Kích thước": "Hộp đựng 20 x 20 x 5.5 cm"}]',
        5,
        1250000,
        '2023-06-19 15:55:47.111051'
    ),
    (
        27,
        'Hộp quà bút Picasso Thiên Văn',
        '["Bút"]',
        '["Ngày doanh nhân", "Ngày nhà giáo"]',
        '["Sếp nam", "Sếp nữ", "Thầy", "Cô", "Đồng nghiệp nam", "Đồng nghiệp nữ", "Bố", "Anh trai"]',
        '["#000000"]',
        '[{"url": "https://anh.quatructuyen.com/media/catalog/product/cache/3/image/480x480/9df78eab33525d08d6e5fb8d27136e95/q/u/qua-tang-picasso-717-k.jpg", "name": "But thien van 1"}, {"url": "https://anh.quatructuyen.com/media/catalog/product/cache/3/image/480x480/9df78eab33525d08d6e5fb8d27136e95/q/u/qua-tang-picasso-717-9.jpg", "name": "But thien van 2"}, {"url": "https://anh.quatructuyen.com/media/catalog/product/cache/3/image/480x480/9df78eab33525d08d6e5fb8d27136e95/q/u/qua-tang-picasso-717-6.jpg", "name": "But thien van 3"}, {"url": "https://anh.quatructuyen.com/media/catalog/product/cache/3/image/480x480/9df78eab33525d08d6e5fb8d27136e95/q/u/qua-tang-picasso-717-4.jpg", "name": "But thien van 4"}, {"url": "https://anh.quatructuyen.com/media/catalog/product/cache/3/image/480x480/9df78eab33525d08d6e5fb8d27136e95/q/u/qua-tang-picasso-717-3.jpg", "name": "But thien van 5"}]',
        '"Hộp quà Picasso phiên bản hộp đen quyền lực được phối màu sang trọng, đồng bộ với hình ảnh đậm chất thiên văn... Chắc hẳn, đây sẽ là món quà hoàn hảo tặng sếp, doanh nhân,..."',
        '[{"Bao gồm": "1 bút ký Picasso 717RB, 1 hộp 3 ruột mực xanh Picasso", "Loại ngòi": "Dạ bi", "Kích thước": "Hộp đựng 11.5 x 19 cm"}]',
        6,
        580000,
        '2023-06-19 15:55:47.111051'
    ),
    (
        28,
        'Hộp quà Tết Tân niên vạn phúc',
        '["Hộp quà"]',
        '["Tất niên", "Tết"]',
        '["Sếp nam", "Sếp nữ", "Thầy", "Cô", "Đồng nghiệp nam", "Đồng nghiệp nữ", "Bố", "Anh trai"]',
        '["#FFFF33"]',
        '[{"url": "https://anh.quatructuyen.com/media/catalog/product/cache/3/image/480x480/9df78eab33525d08d6e5fb8d27136e95/q/u/qua-tet-2022-tan-nien-van-phuc-4.jpg", "name": "TNVP 1"}, {"url": "https://anh.quatructuyen.com/media/catalog/product/cache/3/image/480x480/9df78eab33525d08d6e5fb8d27136e95/q/u/qua-tet-2022-tan-nien-van-phuc-5.jpg", "name": "TNVP 2"}, {"url": "https://anh.quatructuyen.com/media/catalog/product/cache/3/image/480x480/9df78eab33525d08d6e5fb8d27136e95/q/u/qua-tet-2022-tan-nien-van-phuc-3.jpg", "name": "TNVP 3"}, {"url": "https://anh.quatructuyen.com/media/catalog/product/cache/3/image/480x480/9df78eab33525d08d6e5fb8d27136e95/q/u/qua-tet-2022-tan-nien-van-phuc-0.jpg", "name": "TNVP 4"}]',
        '"Bộ quà Tết Tân Niên Vạn Phúc gói trọn tinh hoa đất trời với rượu vang, socola ngoại nhập và các loại hạt quả khô organic sẽ là món quà đặc biệt gửi trao ý niệm chân thành đến người bạn trân quý dịp tân xuân sắp tới."',
        '[{"Bao gồm": "1 rượu vang Ý DOLCEVITA, 1 hũ hạt bí xanh sấy chín 100g -1 hũ Cranberry sấy dẻo 100g - 1 hộp kẹo vàng A little present -1 hộp socola Ferrero Rocher nhân hạt dẻ - cành lúa mạch + hoa kim tuyến vàng", "Đóng gói": "Hộp gỗ cao cấp"}]',
        7,
        655000,
        '2023-06-19 15:55:47.123991'
    ),
    (
        29,
        'Bộ lục bình tranh đĩa hươu vàng',
        '["Đồ trang trí"]',
        '["Tân gia", "Ngày doanh nhân", "Khai trương"]',
        '["Sếp nam", "Sếp nữ", "Đồng nghiệp nam", "Đồng nghiệp nữ", "Bố", "Anh trai"]',
        '["#FFFFFF"]',
        '[{"url": "https://anh.quatructuyen.com/media/catalog/product/cache/3/image/480x480/9df78eab33525d08d6e5fb8d27136e95/b/o/bo-luc-binh-huou-vang-2.jpg", "name": "Tranh dia 1"}, {"url": "https://anh.quatructuyen.com/media/catalog/product/cache/3/image/480x480/9df78eab33525d08d6e5fb8d27136e95/b/o/bo-luc-binh-huou-vang-3.jpg", "name": "Tranh dia 2"}]',
        '"Bộ lục bình tranh đĩa Bộ lục bình tranh đĩa hươu vàng với bức tranh hươu sống động mang đến không khí tươi vui như mùa xuân gõ cửa, thêm vào đó bộ lục bình này còn giúp cho căn phòng của bạn sang trọng và ấn tượng hơn. Nếu bạn đang tìm món quà tặng tân gia, khai trương cho người thân bạn bè thì bộ lục bình tranh đĩa Bộ lục bình tranh đĩa hươu vàng chính là sự lựa chọn tuyệt vời."',
        '[{"Bề mặt": "Phủ men", "Chất liệu": "Gốm sứ", "Kích thước": "Bình lớn 16 x 25 cm, Bình nhỏ 14.8 x 16 cm, Đĩa đường kính 20.4 cm", "Phương thức sản xuất": "Thủ công"}]',
        10,
        650000,
        '2023-06-19 15:55:47.123991'
    ),
    (
        30,
        'Bộ 3 bình hoa - Tinh khôi sương mai',
        '["Đồ trang trí"]',
        '["Tân gia", "Ngày doanh nhân", "Khai trương"]',
        '["Sếp nam", "Sếp nữ", "Đồng nghiệp nam", "Đồng nghiệp nữ", "Bố", "Anh trai"]',
        '["#FFFFFF"]',
        '[{"url": "https://anh.quatructuyen.com/media/catalog/product/cache/3/image/480x480/9df78eab33525d08d6e5fb8d27136e95/l/u/luc_binh1a.jpg", "name": "TKSM 1"}, {"url": "https://anh.quatructuyen.com/media/catalog/product/cache/3/image/480x480/9df78eab33525d08d6e5fb8d27136e95/l/u/luc_binh7a.jpg", "name": "TKSM 2"}, {"url": "https://anh.quatructuyen.com/media/catalog/product/cache/3/image/480x480/9df78eab33525d08d6e5fb8d27136e95/l/u/luc_binh8a.jpg", "name": "TKSM 3"}, {"url": "https://anh.quatructuyen.com/media/catalog/product/cache/3/image/480x480/9df78eab33525d08d6e5fb8d27136e95/l/u/luc_binh2a.jpg", "name": "TKSM 4"}]',
        '"Bình hoa gốm sứ vẫn luôn là sự lựa chọn lý tưởng trong trang trí nội thất làm toát lên vẻ sang trọng, hiện đại nhưng vẫn giữ được nét mộc mạc, giản dị cho không gian sống của gia đình bạn. Bộ 3 bình hoa trang trí gốm sứ - Tinh khôi sương mai có kiểu dáng thanh lịch, độc đáo với gam màu trắng tinh khôi, thuần khiết chấm phá thêm những nét vẽ sáng tạo lạ mắt mà rất tinh tế."',
        '[{"Chất liệu": "Gốm sứ", "Kích thước": "Bình cỡ lớn 8 x 35 cm miệng bình 1.5 cm, Bình cỡ trung 13 x 24 cm miệng bình 4 cm, Bình cỡ nhỏ 18 x 15 cm miệng bình 4 cm"}]',
        20,
        1400000,
        '2023-06-19 15:55:47.123991'
    ),
    (
        31,
        'Tranh vải Canvas đèn led - Ánh trăng phản chiếu',
        '["Khung ảnh"]',
        '["Tân gia", "Ngày doanh nhân", "Khai trương"]',
        '["Sếp nam", "Sếp nữ", "Đồng nghiệp nam", "Đồng nghiệp nữ", "Bố", "Anh trai"]',
        '["#000000"]',
        '[{"url": "https://anh.quatructuyen.com/media/catalog/product/cache/3/image/480x480/9df78eab33525d08d6e5fb8d27136e95/t/r/tranh_canvas_den_led_019_.jpg", "name": "Tranh vai 1"}, {"url": "https://anh.quatructuyen.com/media/catalog/product/cache/3/image/480x480/9df78eab33525d08d6e5fb8d27136e95/t/r/tranh_canvas_den_led_02a9_.jpg", "name": "Tranh vai 2"}]',
        '"Tranh canvas đang tạo nên xu hướng trang trí nội thất mới tại Việt Nam khi mang đến một vẻ đẹp sang trọng với hình ảnh chân thực tự nhiên và độ sâu màu sắc. Đặc biệt hơn đó chính là tranh canvas đèn led, bức tranh đã đẹp nay còn sống động và ảo diệu khi có đèn led ánh sáng bên trong. Bạn muốn có một phòng khách thật sang trọng - hiện đại, bạn muốn có một phòng ăn ấm cúng tràn ngập niềm vui cùng gia đình, bạn muốn có một phòng ngủ thật lãng mạn hay một căn phòng theo phong cách của riêng mình thì bức tranh canvas đèn led - Ánh trăng phản chiếu chính là sự lựa chọn tuyệt vời dành cho bạn."',
        '[{"Chất liệu": "Gỗ MDF, Vải Canvas", "Kích thước": "60 x 40 cm"}]',
        30,
        890000,
        '2023-06-19 15:55:47.123991'
    ),
    (
        32,
        'Tất trẻ em Baby Shark Caramella',
        '["Vớ tất"]',
        '["Sinh nhật", "Ngày thiếu nhi"]',
        '["Bé trai", "Bé gái", "Em trai", "Em gái"]',
        '["#FFFF33", "#3333FF", "#006400"]',
        '[{"url": "https://anh.quatructuyen.com/media/catalog/product/cache/3/image/480x480/9df78eab33525d08d6e5fb8d27136e95/t/a/tat_tre_em_caramella18.jpg", "name": "Tat baby shark 1"}, {"url": "https://anh.quatructuyen.com/media/catalog/product/cache/3/image/480x480/9df78eab33525d08d6e5fb8d27136e95/t/a/tat_tre_em_caramella14.jpg", "name": "Tat baby shark 2"}, {"url": "https://anh.quatructuyen.com/media/catalog/product/cache/3/image/480x480/9df78eab33525d08d6e5fb8d27136e95/t/a/tat_tre_em_caramella15.jpg", "name": "Tat baby shark 3"}, {"url": "https://anh.quatructuyen.com/media/catalog/product/cache/3/image/480x480/9df78eab33525d08d6e5fb8d27136e95/t/a/tat_tre_em_caramella17.jpg", "name": "Tat baby shark 4"}]',
        '"Một món quà đặc biệt nâng niu bảo vệ đôi bàn chân bé trong mùa đông giá lạnh với hình chú cá mập con ngộ nghĩnh chắc chắn sẽ khiến bé thích mê mà tíu tít cả ngày. Và đó chính là Tất trẻ em Baby Shark - Túi 3 đôi Caramella dành cho bé từ 3-5 tuổi."',
        '[{"Chất liệu": "Cotton tự nhiên"}]',
        52,
        150000,
        '2023-06-19 15:55:47.123991'
    ),
    (
        33,
        'Heo bông Peppa Pig',
        '["Thú bông"]',
        '["Sinh nhật", "Ngày thiếu nhi"]',
        '["Bé trai", "Bé gái", "Em trai", "Em gái"]',
        '["#FF9900"]',
        '[{"url": "https://anh.quatructuyen.com/media/catalog/product/cache/3/image/480x480/9df78eab33525d08d6e5fb8d27136e95/p/e/peppa_pig_18_.jpg", "name": "Peppa 1"}, {"url": "https://anh.quatructuyen.com/media/catalog/product/cache/3/image/480x480/9df78eab33525d08d6e5fb8d27136e95/p/e/peppa-pig_1_.jpg", "name": "Peppa 2"}, {"url": "https://anh.quatructuyen.com/media/catalog/product/cache/3/image/480x480/9df78eab33525d08d6e5fb8d27136e95/p/e/peppa_pig_10_.jpg", "name": "Peppa 3"}]',
        '"Peppa Pig là phim hoạt hình nổi tiếng trên toàn thế giới được các bạn nhỏ vô cùng yêu thích. Peppa Pig kéo người xem vào những câu chuyện thú vị và ý nghĩa về cuộc sống thường ngày và những thứ xoay quanh bé heo Peppa. Do vậy, những nhân vật Peppa Pig đáng yêu mô phỏng y chang hình ảnh gia đình heo Peppa trong phim hoạt hình dễ dàng trở thành quà tặng rất được các bé yêu thích."',
        '[{"Chất liệu": "Bông PP", "Kích thước": "30 x 40 cm"}]',
        42,
        140000,
        '2023-06-19 15:55:47.123991'
    ),
    (
        34,
        'Gối ôm voi con ngộ nghĩnh',
        '["Thú bông"]',
        '["Sinh nhật", "Ngày thiếu nhi", "Thôi nôi", "Đầy tháng"]',
        '["Bé trai", "Bé gái", "Em trai", "Em gái"]',
        '["#FF33CC", "#BBBBBB", "#3333FF", "#660099"]',
        '[{"url": "https://anh.quatructuyen.com/media/catalog/product/cache/3/image/480x480/9df78eab33525d08d6e5fb8d27136e95/g/o/goi-om-cho-be-hinh-voi_2_.jpg", "name": "Goi voi 1"}, {"url": "https://anh.quatructuyen.com/media/catalog/product/cache/3/image/480x480/9df78eab33525d08d6e5fb8d27136e95/g/o/goi-om-cho-be-hinh-voi_5_-_copy.jpg", "name": "Goi voi 2"}, {"url": "https://anh.quatructuyen.com/media/catalog/product/cache/3/image/480x480/9df78eab33525d08d6e5fb8d27136e95/g/o/goi-om-cho-be-hinh-voi_7_.jpg", "name": "Goi voi 3"}, {"url": "https://anh.quatructuyen.com/media/catalog/product/cache/3/image/480x480/9df78eab33525d08d6e5fb8d27136e95/g/o/goi-om-voi_1__1.jpg", "name": "Goi voi 4"}, {"url": "https://anh.quatructuyen.com/media/catalog/product/cache/3/image/480x480/9df78eab33525d08d6e5fb8d27136e95/g/o/goi-om-voi_2__1.jpg", "name": "Goi voi 5"}]',
        '"Gối ôm chú voi con là chiếc gối ôm vừa giúp bé ngủ ngon, không bị giật mình khi không có mẹ ở bên mà còn là 1 người bạn thân thiết cùng bé chơi đùa. Với chiếc gối ôm hình chú voi ngộ nghĩnh vừa đem lại thích thú cho bé vừa đồng hành cùng bé trong suốt tuổi thơ của mình."',
        '[{"Chất liệu": "Bông PP, vải nhung", "Kích thước": "60 x 45 cm"}]',
        52,
        320000,
        '2023-06-19 15:55:47.123991'
    ),
    (
        35,
        'Búp bê công chúa Sophie',
        '["Búp bê"]',
        '["Sinh nhật", "Ngày thiếu nhi"]',
        '["Bé gái", "Em gái", "Bạn gái"]',
        '["#BBBBBB"]',
        '[{"url": "https://anh.quatructuyen.com/media/catalog/product/cache/3/image/480x480/9df78eab33525d08d6e5fb8d27136e95/b/u/bup_be_cong_chua_sophie_1_.jpg", "name": "Sophie 1"}, {"url": "https://anh.quatructuyen.com/media/catalog/product/cache/3/image/480x480/9df78eab33525d08d6e5fb8d27136e95/b/u/bup_be_cong_chua_sophie_3_.jpg", "name": "Sophie 2"}, {"url": "https://anh.quatructuyen.com/media/catalog/product/cache/3/image/480x480/9df78eab33525d08d6e5fb8d27136e95/b/u/bup_be_cong_chua_sophie_6_.jpg", "name": "Sophie 3"}, {"url": "https://anh.quatructuyen.com/media/catalog/product/cache/3/image/480x480/9df78eab33525d08d6e5fb8d27136e95/b/u/bup_be_cong_chua_sophie_9_.jpg", "name": "Sophie 4"}]',
        '"Bạn đang tìm mua 1 món quà ý nghĩa và thú vị để dành tặng bé yêu, món quà tặng nào mà 99,9% các bé gái nhận được đều reo mừng thích thú ? Đó chính là nàng búp bê công chúa Sophie xinh đẹp với bộ váy lộng lẫy cùng các khớp có thể cử động được dưới đây chắc chắn sẽ là món quà tặng tuyệt vời dành cho bé yêu của bạn. Hãy dành tặng bé người bạn đồng hành xinh đẹp nuôi dưỡng tâm hồn và những ước mơ tươi đẹp này nhé."',
        '[{"Chất liệu": "Nhựa", "Kích thước": "Cao 60cm"}]',
        19,
        750000,
        '2023-06-19 15:55:47.123991'
    ),
    (
        36,
        'Bộ đồ chơi bóng chày',
        '["Đồ chơi"]',
        '["Sinh nhật", "Ngày thiếu nhi"]',
        '["Bé trai", "Em trai"]',
        '["#FFFF33"]',
        '[{"url": "https://anh.quatructuyen.com/media/catalog/product/cache/3/image/480x480/9df78eab33525d08d6e5fb8d27136e95/d/o/do_choi_bong_chay_2_.jpg", "name": "Bong chay 1"}, {"url": "https://anh.quatructuyen.com/media/catalog/product/cache/3/image/480x480/9df78eab33525d08d6e5fb8d27136e95/d/o/do_choi_bong_chay_8_.jpg", "name": "Bong chay 2"}, {"url": "https://anh.quatructuyen.com/media/catalog/product/cache/3/image/480x480/9df78eab33525d08d6e5fb8d27136e95/d/o/do_choi_bong_chay_4_.jpg", "name": "Bong chay 3"}]',
        '"Những trò chơi thể thao giúp phát triển khả năng vận động và sức khỏe cho bé. Bộ đồ chơi bóng chày Baseball sẽ đem lại cho các bé những phút giây vui chơi thật bổ ích sau giờ học căng thẳng."',
        '[{"Bao gồm": "1 đôi găng tay, 1 gậy đánh bóng, 2 bóng", "Chất liệu": "Bông, Da PU"}]',
        20,
        180000,
        '2023-06-19 15:55:47.123991'
    ),
    (
        37,
        'Bộ khung thành đá bóng cho bé',
        '["Đồ chơi"]',
        '["Sinh nhật", "Ngày thiếu nhi"]',
        '["Bé trai", "Em trai"]',
        '["#FFFFFF"]',
        '[{"url": "https://anh.quatructuyen.com/media/catalog/product/cache/3/image/480x480/9df78eab33525d08d6e5fb8d27136e95/b/o/bo-khung-thanh-bong-da_014_.jpg", "name": "Bong da 1"}, {"url": "https://anh.quatructuyen.com/media/wysiwyg/do-choi/bo-khung-thanh-bong-da_15_.jpg", "name": "Bong da 2"}, {"url": "https://anh.quatructuyen.com/media/wysiwyg/do-choi/bo-khung-thanh-bong-da_24_.jpg", "name": "Bong da 3"}]',
        '"Bóng đá – môn thể thao vua mà rất nhiều các ông bố, bà mẹ trên thế giới nói chung và Việt Nam nói riêng mong muốn con mình được tiếp xúc. Với những lợi ích tuyệt vời cho người chơi như cải thiện sức khỏe, nâng cao khả năng tập trung, rèn luyện tinh thần thể thao cho trẻ tham gia vào trò chơi bóng đá là điều nên làm. Nhưng nếu bạn chỉ nghĩ đơn thuần là tạo điều kiện cho bé chơi bóng đá chỉ với 1 quả bóng là một thiếu xót đấy nhé. Hãy trang bị cho bé 1 bộ đồ chơi bóng đá với cả khung thành để bé có những trải nghiệm trọn vẹn nhất với bộ môn này nhé."',
        '[{"Chất liệu": "Nhựa", "Kích thước": "(86x40x55) (106x45x55) cm"}]',
        21,
        180000,
        '2023-06-19 15:55:47.123991'
    ),
    (
        38,
        'Balo hình cú the Heirs',
        '["Túi balo"]',
        '["Sinh nhật", "Ngày thiếu nhi"]',
        '["Bé trai", "Bé gái", "Em trai", "Em gái"]',
        '["#66FFFF"]',
        '[{"url": "https://anh.quatructuyen.com/media/catalog/product/cache/3/image/480x480/9df78eab33525d08d6e5fb8d27136e95/b/a/balohinhcutheheirs01_2je8lmklqd9pb_simg_b5529c_500x500_maxb.jpg", "name": "Balo cu 1"}, {"url": "https://anh.quatructuyen.com/media/catalog/product/cache/3/image/480x480/9df78eab33525d08d6e5fb8d27136e95/b/a/balo-hinh-cu-the-heirs-02.jpg", "name": "Balo cu 2"}, {"url": "https://anh.quatructuyen.com/media/catalog/product/cache/3/image/480x480/9df78eab33525d08d6e5fb8d27136e95/b/a/balo-hinh-cu-the-heirs-06.jpg", "name": "Balo cu 3"}]',
        '"Với thiết kế chiếc Balo hình cú The Heirs vô cùng đáng yêu và thân thiện với người dùng, sản phẩm là sự sáng tạo độc đáo tạo nên nét cá tính tuyệt vời, khơi dậy sự hứng thú, yêu thích ở trẻ."',
        '[{"Xuất xứ": "Thái Lan", "Chất liệu": "Bông, Vải Nỉ", "Kích thước": "cao 23 cm, rộng 21 cm"}]',
        41,
        95000,
        '2023-06-19 15:55:47.123991'
    ),
    (
        39,
        'Bộ cờ tướng bằng gỗ cao cấp',
        '["Giải trí"]',
        '["Sinh nhật"]',
        '["Sếp nam", "Sếp nữ", "Đồng nghiệp nam", "Đồng nghiệp nữ", "Bố", "Anh trai", "Em trai", "Bạn trai"]',
        '["#FFFFFF"]',
        '[{"url": "https://anh.quatructuyen.com/media/catalog/product/cache/3/image/480x480/9df78eab33525d08d6e5fb8d27136e95/b/o/bo_co_tuong_bang_go_cao_cap_5_.jpg", "name": "Co tuong 1"}, {"url": "https://anh.quatructuyen.com/media/catalog/product/cache/3/image/480x480/9df78eab33525d08d6e5fb8d27136e95/b/o/bo_co_tuong_bang_go_cao_cap_3_.jpg", "name": "Co tuong 2"}, {"url": "https://anh.quatructuyen.com/media/catalog/product/cache/3/image/480x480/9df78eab33525d08d6e5fb8d27136e95/b/o/bo_co_tuong_bang_go_cao_cap_1_.jpg", "name": "Co tuong 3"}]',
        '"Cờ Tướng từ lâu đã là trò chơi trí tuệ gắn kết các thế hệ. Đối với nhiều kỳ thủ lâu năm, cờ tướng không đơn giản là một trò chơi, mà còn là một niềm đam mê, một thú vui. Có lẽ bởi vậy mà bộ bàn cờ tướng rất quan trọng với người chơi, vừa là dụng cụ chơi, vừa là một vật thể hiện tình yêu với bộ môn cờ tướng. Bộ cờ tướng bằng gỗ cao cấp với những quân cờ được khắc chìm, cầm chắc tay sẽ khiến trò chơi thêm phầm hấp dẫn, thú vị và thể hiện đẳng cấp người chơi cờ."',
        '[{"Chất liệu": "Gỗ cao cấp", "Kích thước": "Hộp cờ: 19,3*19,3*4,8cm, Quân cờ: 4,5*1,7cm"}]',
        42,
        550000,
        '2023-06-19 15:55:47.123991'
    ),
    (
        40,
        'Bộ đựng gia vị giá gỗ 2 tầng 6 hũ',
        '["Đồ gia dụng"]',
        '["Ngày phụ nữ"]',
        '["Em yêu", "Bạn gái", "Mẹ", "Chị gái", "Em gái", "Cô"]',
        '["#FFFFFF"]',
        '[{"url": "https://anh.quatructuyen.com/media/catalog/product/cache/3/image/480x480/9df78eab33525d08d6e5fb8d27136e95/b/o/bo_6_hu_dung_gia_vi_2_tang.jpg", "name": "Gia vi 1"}, {"url": "https://anh.quatructuyen.com/media/catalog/product/cache/3/image/480x480/9df78eab33525d08d6e5fb8d27136e95/b/o/bo_6_hu_dung_gia_vi_2_tang_2.jpg", "name": "Gia vi 2"}]',
        '"Bếp được coi là một trong những căn phòng quan trọng nhất trong ngôi nhà, bếp thể hiện lối sống của gia đình bạn nhiều và rõ nét hơn bất kỳ căn phòng nào khác. Bộ đựng gia vị 2 tầng giá gỗ sẽ giúp căn bếp của bạn được gọn gàng hơn, giúp bảo quản gia vị tốt hơn và hơn thế nữa đó chính là công năng thẩm mỹ. Bộ đựng gia vị giá gỗ 2 tầng là món đồ trang trí cho căn bếp thêm xinh yêu và đầy cảm hứng."',
        '[{"Bao gồm": "3 hũ đựng hình trụ, 3 khay đựng gia vị ngăn kéo, 3 thìa sứ, 1 khay gỗ", "Chất liệu": "Sứ, gỗ"}]',
        62,
        650000,
        '2023-06-19 15:55:47.123991'
    ),
    (
        41,
        'Hộp quà bút Picasso nghệ thuật Morandi',
        '["Bút"]',
        '["Ngày doanh nhân", "Ngày nhà giáo"]',
        '["Sếp nam", "Sếp nữ", "Thầy", "Cô", "Đồng nghiệp nam", "Đồng nghiệp nữ", "Bố", "Anh trai"]',
        '["#BBBBBB"]',
        '[{"url": "https://anh.quatructuyen.com/media/catalog/product/cache/3/image/480x480/9df78eab33525d08d6e5fb8d27136e95/b/o/bo_qua_but_ky_picasso_717fgray_kem_lo_muc_7_1.jpg", "name": "But Morandi 1"}, {"url": "https://anh.quatructuyen.com/media/catalog/product/cache/3/image/480x480/9df78eab33525d08d6e5fb8d27136e95/b/o/bo_qua_but_ky_picasso_717fgray_kem_lo_muc_3_1.jpg", "name": "But Morandi 2"}, {"url": "https://anh.quatructuyen.com/media/catalog/product/cache/3/image/480x480/9df78eab33525d08d6e5fb8d27136e95/b/u/but_may_picasso_717fgray2.jpg", "name": "But Morandi 3"}, {"url": "https://anh.quatructuyen.com/media/catalog/product/cache/3/image/480x480/9df78eab33525d08d6e5fb8d27136e95/b/u/but_may_picasso_717fgray1.jpg", "name": "But Morandi 4"}]',
        '"Bút máy Picasso mang đậm nét nghệ thuật Morandi với gam màu nhẹ nhàng kết hợp với nét vẽ trừu tượng lấy cảm hứng từ những tác phẩm của danh hoạ Picasso. Bút Picasso sẽ là món quà tặng tinh tế để bạn dành tặng sếp, đối tác, người thân, bạn bè."',
        '[{"Loại ngòi": "Máy", "Chất liệu": "Hợp kim cao cấp", "Kích thước": "Hộp đựng 20 x 7 x 5 cm"}]',
        12,
        380000,
        '2023-06-19 15:55:47.123991'
    ),
    (
        42,
        'Nến thơm nghệ thuật - Miền nhiệt đới',
        '["Nến"]',
        '["Sinh nhật", "Ngày phụ nữ", "Kỷ niệm ngày yêu", "Kỷ niệm ngày cưới"]',
        '["Anh yêu", "Em yêu", "Vợ", "Chồng"]',
        '["#FFFFFF"]',
        '[{"url": "https://anh.quatructuyen.com/media/catalog/product/cache/3/image/480x480/9df78eab33525d08d6e5fb8d27136e95/h/o/hoa-nen-thom-nghe-thuat-0.jpg", "name": "Nen mien nhiet doi 1"}, {"url": "https://anh.quatructuyen.com/media/catalog/product/cache/3/image/480x480/9df78eab33525d08d6e5fb8d27136e95/h/o/hoa-nen-thom-nghe-thuat-3.jpg", "name": "Nen mien nhiet doi 2"}, {"url": "https://anh.quatructuyen.com/media/catalog/product/cache/3/image/480x480/9df78eab33525d08d6e5fb8d27136e95/h/o/hoa-nen-thom-nghe-thuat-2.jpg", "name": "Nen mien nhiet doi 3"}]',
        '"Hoa nến thơm nghệ thuật Miền Nhiệt Đới - món quà từ thiên nhiên mang theo làn gió mát lành ngát hương. Ngắm nhìn cành hoa nhỏ xinh dịu hiền hoà mình trong ánh nến lung linh như lạc bước đến miền nhiệt đới hoang sơ tươi mát, trong lành. Sao phải lặn lội kiếm tìm một món quà hoàn mỹ khi ở đây có Hoa nến thơm nghệ thuật Miền Nhiệt Đới - dễ dàng chạm tới trái tim phái đẹp từ mọi giác quan. Mang cả làn gió miền nhiệt đới hoang sơ đến tặng ai đó thì còn gì hơn."',
        '[{"Mùi hương": "Chanh Sả", "Trọng lượng": "250 g"}]',
        64,
        98000,
        '2023-06-19 15:55:47.123991'
    ),
    (
        43,
        'Nến thơm nghệ thuật - Vũ khúc Paris',
        '["Nến"]',
        '["Sinh nhật", "Ngày phụ nữ", "Kỷ niệm ngày yêu", "Kỷ niệm ngày cưới"]',
        '["Anh yêu", "Em yêu", "Vợ", "Chồng"]',
        '["#FFFFFF"]',
        '[{"url": "https://anh.quatructuyen.com/media/catalog/product/cache/3/image/480x480/9df78eab33525d08d6e5fb8d27136e95/q/u/qua_tang_luvgift_queen_of_heart_10_1.jpg", "name": "Nen vu khuc Paris 1"}, {"url": "https://anh.quatructuyen.com/media/catalog/product/cache/3/image/480x480/9df78eab33525d08d6e5fb8d27136e95/h/o/hoa_nen_thom_nghe_thuat_vu_khuc_paris_4.jpg", "name": "Nen vu khuc Paris 2"}, {"url": "https://anh.quatructuyen.com/media/catalog/product/cache/3/image/480x480/9df78eab33525d08d6e5fb8d27136e95/h/o/hoa_nen_thom_nghe_thuat_vu_khuc_paris_2.jpg", "name": "Nen vu khuc Paris 3"}, {"url": "https://anh.quatructuyen.com/media/catalog/product/cache/3/image/480x480/9df78eab33525d08d6e5fb8d27136e95/q/u/qua_tang_luvgift_queen_of_heart_1.jpg", "name": "Nen vu khuc Paris 4"}]',
        '"Lấy cảm hứng từ Paris - thành phố kiều diễm với ánh đèn hào hoa tráng lệ, từ hương thơm man mát hơi sương đọng trên đoá hồng Pháp buổi sớm. Hoa nến thơm nghệ thuật 20/10 mang theo câu chuyện về một Paris duyên dáng, quyến rũ trong vũ khúc ánh sáng khi trăng lên. Ngắm nhìn những bông hoa thơm ngát hoà mình trong ánh nến lung linh như lạc bước đến chốn hoa lệ, lãng mạn và tuyệt đẹp vô cùng."',
        '[{"Mùi hương": "Hoa hồng", "Trọng lượng": "250 g"}]',
        91,
        179000,
        '2023-06-19 15:55:47.123991'
    );

-- CreateTable
CREATE TABLE "abouts" (
    "id" UUID NOT NULL DEFAULT gen_random_uuid(),
    "image_banner" VARCHAR(255) NOT NULL,
    "information" JSONB NOT NULL,
    "our_team" VARCHAR(255) NOT NULL,
    "member" JSONB NOT NULL,
    CONSTRAINT "abouts_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "banners" (
    "id" UUID NOT NULL DEFAULT gen_random_uuid(),
    "banner" JSONB NOT NULL,
    CONSTRAINT "banners_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "users_email_key" ON "users"("email");

-- CreateIndex
CREATE UNIQUE INDEX "users_user_name_key" ON "users"("user_name");