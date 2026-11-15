$cards = @(
    @{
        id = 1
        pic = "images/pic1.jpg"
        num = "01"
        title = "Uống nước dưới trời nóng 35°C"
        topic = "Thời tiết & Nước uống"
        char_count = 39
        sentence_count = 3
        keywords = @(
            @{ zh = "今天"; py = "jīntiān"; vn = "hôm nay" },
            @{ zh = "天气"; py = "tiānqì"; vn = "thời tiết" },
            @{ zh = "太热了"; py = "tài rè le"; vn = "quá nóng rồi" },
            @{ zh = "在外面"; py = "zài wàimiàn"; vn = "ở bên ngoài" },
            @{ zh = "想喝水"; py = "xiǎng hē shuǐ"; vn = "muốn uống nước" },
            @{ zh = "高兴"; py = "gāoxìng"; vn = "vui vẻ" }
        )
        prompt_hints = @(
            "1. Thời tiết hôm nay thế nào? Ai đang ở đâu?",
            "2. Cô ấy cảm thấy thế nào? Muốn uống gì?",
            "3. Uống nước xong cô ấy cảm thấy ra sao?"
        )
        sentences = @(
            @{
                step = "Câu 1: Bối cảnh"
                zh = "今天天气太热了，李小姐在外面。"
                py = "Jīntiān tiānqì tài rè le, Lǐ xiǎojiě zài wàimiàn."
                vn = "Hôm nay thời tiết nóng quá rồi, cô Lý đang ở bên ngoài."
                chars = 14
            },
            @{
                step = "Câu 2: Hành động"
                zh = "她现在很热，很想喝一杯大杯的水。"
                py = "Tā xiànzài hěn rè, hěn xiǎng hē yì bēi dà bēi de shuǐ."
                vn = "Bây giờ cô ấy rất nóng, rất muốn uống một ly nước lớn."
                chars = 14
            },
            @{
                step = "Câu 3: Cảm xúc"
                zh = "喝了水，她很高兴，也觉得很好。"
                py = "Hē le shuǐ, tā hěn gāoxìng, yě juéde hěn hǎo."
                vn = "Uống nước xong, cô ấy rất vui vẻ và cảm thấy dễ chịu."
                chars = 11
            }
        )
        full_zh = "今天天气太热了，李小姐在外面。她现在很热，很想喝一杯大杯的水。喝了水，她很高兴，也觉得很好。"
        full_py = "Jīntiān tiānqì tài rè le, Lǐ xiǎojiě zài wàimiàn. Tā xiànzài hěn rè, hěn xiǎng hē yì bēi dà bēi de shuǐ. Hē le shuǐ, tā hěn gāoxìng, yě juéde hěn hǎo."
        full_vn = "Hôm nay thời tiết nóng quá rồi, cô Lý đang ở bên ngoài. Bây giờ cô ấy rất nóng, rất muốn uống một ly nước lớn. Uống nước xong, cô ấy rất vui vẻ và cảm thấy dễ chịu."
        grammar_notes = "Cấu trúc '太...了' (quá... rồi), '在 + địa điểm' (ở đâu), '想 + Động từ' (muốn làm gì)."
    },
    @{
        id = 2
        pic = "images/pic2.jpg"
        num = "02"
        title = "Mua táo ở cửa hàng hoa quả"
        topic = "Mua sắm & Trái cây"
        char_count = 40
        sentence_count = 3
        keywords = @(
            @{ zh = "下午"; py = "xiàwǔ"; vn = "buổi chiều" },
            @{ zh = "商店"; py = "shāngdiàn"; vn = "cửa hàng" },
            @{ zh = "买水果"; py = "mǎi shuǐguǒ"; vn = "mua hoa quả" },
            @{ zh = "很大"; py = "hěn dà"; vn = "rất to" },
            @{ zh = "苹果"; py = "píngguǒ"; vn = "quả táo" },
            @{ zh = "朋友"; py = "péngyou"; vn = "bạn bè" }
        )
        prompt_hints = @(
            "1. Lúc nào cô ấy đi đâu mua gì?",
            "2. Táo ở đây trông như thế nào? Cô ấy muốn mua mấy quả?",
            "3. Mua xong cô ấy tặng cho ai?"
        )
        sentences = @(
            @{
                step = "Câu 1: Bối cảnh"
                zh = "今天下午李小姐去商店买水果。"
                py = "Jīntiān xiàwǔ Lǐ xiǎojiě qù shāngdiàn mǎi shuǐguǒ."
                vn = "Chiều hôm nay cô Lý đi cửa hàng mua hoa quả."
                chars = 14
            },
            @{
                step = "Câu 2: Hành động"
                zh = "这里的苹果很大，她想买六个。"
                py = "Zhèlǐ de píngguǒ hěn dà, tā xiǎng mǎi liù ge."
                vn = "Táo ở đây rất to, cô ấy muốn mua sáu quả."
                chars = 13
            },
            @{
                step = "Câu 3: Đánh giá & Cảm xúc"
                zh = "她买了六个大苹果给她的好朋友。"
                py = "Tā mǎi le liù ge dà píngguǒ gěi tā de hǎo péngyou."
                vn = "Cô ấy đã mua sáu quả táo to tặng cho người bạn tốt của mình."
                chars = 13
            }
        )
        full_zh = "今天下午李小姐去商店买水果。这里的苹果很大，她想买六个。她买了六个大苹果给她的好朋友。"
        full_py = "Jīntiān xiàwǔ Lǐ xiǎojiě qù shāngdiàn mǎi shuǐguǒ. Zhèlǐ de píngguǒ hěn dà, tā xiǎng mǎi liù ge. Tā mǎi le liù ge dà píngguǒ gěi tā de hǎo péngyou."
        full_vn = "Chiều hôm nay cô Lý đi cửa hàng mua hoa quả. Táo ở đây rất to, cô ấy muốn mua sáu quả. Cô ấy đã mua sáu quả táo to tặng cho người bạn tốt của mình."
        grammar_notes = "Câu chữ '去 + địa điểm + Động từ', số từ + lượng từ (六个, 六个大苹果), giới từ '给' (cho/tặng ai)."
    },
    @{
        id = 3
        pic = "images/pic3.jpg"
        num = "03"
        title = "Nấu ăn làm món trong bếp"
        topic = "Nấu ăn & Tiếp đãi bạn bè"
        char_count = 40
        sentence_count = 3
        keywords = @(
            @{ zh = "中午"; py = "zhōngwǔ"; vn = "buổi trưa" },
            @{ zh = "在家里"; py = "zài jiālǐ"; vn = "ở nhà" },
            @{ zh = "做菜"; py = "zuò cài"; vn = "làm món/nấu ăn" },
            @{ zh = "很多菜"; py = "hěn duō cài"; vn = "nhiều món ăn" },
            @{ zh = "喜欢做饭"; py = "xǐhuan zuò fàn"; vn = "thích nấu cơm" },
            @{ zh = "请朋友"; py = "qǐng péngyou"; vn = "mời bạn bè" }
        )
        prompt_hints = @(
            "1. Buổi trưa cô ấy đang ở đâu và làm gì?",
            "2. Trên bàn có những gì? Cô ấy có thích nấu ăn không?",
            "3. Cô ấy muốn mời ai đến nhà ăn cơm?"
        )
        sentences = @(
            @{
                step = "Câu 1: Bối cảnh"
                zh = "今天中午李老师在家里做菜。"
                py = "Jīntiān zhōngwǔ Lǐ lǎoshī zài jiālǐ zuò cài."
                vn = "Trưa hôm nay cô giáo Lý ở nhà nấu món ăn."
                chars = 13
            },
            @{
                step = "Câu 2: Hành động"
                zh = "桌子上有很多菜，她很喜欢做饭。"
                py = "Zhuōzi shàng yǒu hěn duō cài, tā hěn xǐhuan zuò fàn."
                vn = "Trên bàn có rất nhiều rau củ, cô ấy rất thích nấu ăn."
                chars = 14
            },
            @{
                step = "Câu 3: Dự định & Cảm xúc"
                zh = "她想请三个好朋友来家里吃饭。"
                py = "Tā xiǎng qǐng sān ge hǎo péngyou lái jiālǐ chī fàn."
                vn = "Cô ấy muốn mời ba người bạn tốt đến nhà cùng ăn cơm."
                chars = 13
            }
        )
        full_zh = "今天中午李老师在家里做菜。桌子上有很多菜，她很喜欢做饭。她想请三个好朋友来家里吃饭。"
        full_py = "Jīntiān zhōngwǔ Lǐ lǎoshī zài jiālǐ zuò cài. Zhuōzi shàng yǒu hěn duō cài, tā hěn xǐhuan zuò fàn. Tā xiǎng qǐng sān ge hǎo péngyou lái jiālǐ chī fàn."
        full_vn = "Trưa hôm nay cô giáo Lý ở nhà nấu món ăn. Trên bàn có rất nhiều rau củ, cô ấy rất thích nấu ăn. Cô ấy muốn mời ba người bạn tốt đến nhà cùng ăn cơm."
        grammar_notes = "Câu tồn hiện '桌子上 + 有...', động từ năng nguyện '想' (muốn), câu kiêm ngữ '请 + Tân ngữ + Động từ'."
    },
    @{
        id = 4
        pic = "images/pic4.jpg"
        num = "04"
        title = "Đọc sách ở thư viện / trường học"
        topic = "Học tập & Đọc sách"
        char_count = 40
        sentence_count = 3
        keywords = @(
            @{ zh = "星期一"; py = "xīngqīyī"; vn = "thứ Hai" },
            @{ zh = "在学校"; py = "zài xuéxiào"; vn = "ở trường" },
            @{ zh = "看书"; py = "kàn shū"; vn = "đọc sách" },
            @{ zh = "桌子上"; py = "zhuōzi shàng"; vn = "trên bàn" },
            @{ zh = "汉语书"; py = "Hànyǔ shū"; vn = "sách tiếng Trung" },
            @{ zh = "好学生"; py = "hǎo xuésheng"; vn = "học sinh tốt" }
        )
        prompt_hints = @(
            "1. Hôm nay thứ mấy? Cô ấy đang ở đâu làm gì?",
            "2. Trên bàn có những gì? Cô ấy đang đọc sách gì?",
            "3. Cô ấy có thích học không? Là một học sinh thế nào?"
        )
        sentences = @(
            @{
                step = "Câu 1: Bối cảnh"
                zh = "今天星期一，王小姐在学校看书。"
                py = "Jīntiān xīngqīyī, Wáng xiǎojiě zài xuéxiào kàn shū."
                vn = "Hôm nay là thứ Hai, cô Vương đang đọc sách ở trường."
                chars = 15
            },
            @{
                step = "Câu 2: Hành động"
                zh = "桌子上有很多书，这是她的汉语书。"
                py = "Zhuōzi shàng yǒu hěn duō shū, zhè shì tā de Hànyǔ shū."
                vn = "Trên bàn có rất nhiều sách, đây là cuốn sách tiếng Trung của cô ấy."
                chars = 15
            },
            @{
                step = "Câu 3: Đánh giá"
                zh = "她很喜欢学习汉语，是个好学生。"
                py = "Tā hěn xǐhuan xuéxí Hànyǔ, shì ge hǎo xuésheng."
                vn = "Cô ấy rất thích học tiếng Trung, là một học sinh chăm ngoan."
                chars = 10
            }
        )
        full_zh = "今天星期一，王小姐在学校看书。桌子上有很多书，这是她的汉语书。她很喜欢学习汉语，是个好学生。"
        full_py = "Jīntiān xīngqīyī, Wáng xiǎojiě zài xuéxiào kàn shū. Zhuōzi shàng yǒu hěn duō shū, zhè shì tā de Hànyǔ shū. Tā hěn xǐhuan xuéxí Hànyǔ, shì ge hǎo xuésheng."
        full_vn = "Hôm nay là thứ Hai, cô Vương đang đọc sách ở trường. Trên bàn có rất nhiều sách, đây là cuốn sách tiếng Trung của cô ấy. Cô ấy rất thích học tiếng Trung, là một học sinh chăm ngoan."
        grammar_notes = "Phương vị từ '桌子上', cấu trúc chữ 的 '她的汉语书', câu chữ 是 '是个好学生'."
    },
    @{
        id = 5
        pic = "images/pic5.jpg"
        num = "05"
        title = "Đi taxi buổi sáng lúc 7:00"
        topic = "Đi lại & Thời gian"
        char_count = 40
        sentence_count = 3
        keywords = @(
            @{ zh = "上午七点"; py = "shàngwǔ qī diǎn"; vn = "7 giờ sáng" },
            @{ zh = "天气很好"; py = "tiānqì hěn hǎo"; vn = "thời tiết rất đẹp" },
            @{ zh = "坐出租车"; py = "zuò chūzūchē"; vn = "đi taxi" },
            @{ zh = "去学校"; py = "qù xuéxiào"; vn = "đến trường" },
            @{ zh = "看老师"; py = "kàn lǎoshī"; vn = "gặp thầy cô" },
            @{ zh = "很高兴"; py = "hěn gāoxìng"; vn = "rất vui vẻ" }
        )
        prompt_hints = @(
            "1. Bây giờ là mấy giờ? Thời tiết thế nào?",
            "2. Cô ấy đi đâu bằng phương tiện gì? Đi gặp ai?",
            "3. Ngồi trên xe tâm trạng cô ấy thế nào?"
        )
        sentences = @(
            @{
                step = "Câu 1: Bối cảnh"
                zh = "现在是上午七点，今天天气很好。"
                py = "Xiànzài shì shàngwǔ qī diǎn, jīntiān tiānqì hěn hǎo."
                vn = "Bây giờ là bảy giờ sáng, hôm nay thời tiết rất đẹp."
                chars = 14
            },
            @{
                step = "Câu 2: Hành động"
                zh = "王小姐坐出租车去学校看老师。"
                py = "Wáng xiǎojiě zuò chūzūchē qù xuéxiào kàn lǎoshī."
                vn = "Cô Vương đi xe taxi đến trường để gặp cô giáo."
                chars = 13
            },
            @{
                step = "Câu 3: Cảm xúc"
                zh = "她坐在出租车里，心里觉得很高兴。"
                py = "Tā zuò zài chūzūchē lǐ, xīnlǐ juéde hěn gāoxìng."
                vn = "Cô ấy ngồi trong xe taxi, trong lòng cảm thấy rất vui vẻ."
                chars = 13
            }
        )
        full_zh = "现在是上午七点，今天天气很好。王小姐坐出租车去学校看老师。她坐在出租车里，心里觉得很高兴。"
        full_py = "Xiànzài shì shàngwǔ qī diǎn, jīntiān tiānqì hěn hǎo. Wáng xiǎojiě zuò chūzūchē qù xuéxiào kàn lǎoshī. Tā zuò zài chūzūchē lǐ, xīnlǐ juéde hěn gāoxìng."
        full_vn = "Bây giờ là bảy giờ sáng, hôm nay thời tiết rất đẹp. Cô Vương đi xe taxi đến trường để gặp cô giáo. Cô ấy ngồi trong xe taxi, trong lòng cảm thấy rất vui vẻ."
        grammar_notes = "Cách nói giờ '上午七点', phương thức di chuyển '坐出租车去...', kết cấu bổ ngữ nơi chốn '坐在...里'."
    },
    @{
        id = 6
        pic = "images/pic6.jpg"
        num = "06"
        title = "Lái xe ngày 26/10 lúc 14:30"
        topic = "Lái xe & Bệnh viện"
        char_count = 41
        sentence_count = 3
        keywords = @(
            @{ zh = "十月二十六号"; py = "shí yuè èrshíliù hào"; vn = "ngày 26/10" },
            @{ zh = "下午两点半"; py = "xiàwǔ liǎng diǎn bàn"; vn = "2h30 chiều" },
            @{ zh = "开车"; py = "kāi chē"; vn = "lái xe ô tô" },
            @{ zh = "去医院"; py = "qù yīyuàn"; vn = "đến bệnh viện" },
            @{ zh = "看朋友"; py = "kàn péngyou"; vn = "thăm bạn bè" }
        )
        prompt_hints = @(
            "1. Hôm nay là ngày tháng nào? Mấy giờ?",
            "2. Anh ấy biết lái xe không? Đang lái xe đi đâu?",
            "3. Anh ấy đến bệnh viện để làm gì?"
        )
        sentences = @(
            @{
                step = "Câu 1: Bối cảnh"
                zh = "今天是十月二十六号下午两点半。"
                py = "Jīntiān shì shí yuè èrshíliù hào xiàwǔ liǎng diǎn bàn."
                vn = "Hôm nay là ngày 26 tháng 10 lúc hai giờ rưỡi chiều."
                chars = 15
            },
            @{
                step = "Câu 2: Hành động"
                zh = "张先生会开车，他开车去医院。"
                py = "Zhāng xiānsheng huì kāi chē, tā kāi chē qù yīyuàn."
                vn = "Ông Trương biết lái xe, ông ấy đang lái xe đến bệnh viện."
                chars = 13
            },
            @{
                step = "Câu 3: Mục đích"
                zh = "他想去医院看他的一个好朋友。"
                py = "Tā xiǎng qù yīyuàn kàn tā de yí ge hǎo péngyou."
                vn = "Ông ấy muốn đến bệnh viện thăm một người bạn tốt."
                chars = 13
            }
        )
        full_zh = "今天是十月二十六号下午两点半。张先生会开车，他开车去医院。他想去医院看他的一个好朋友。"
        full_py = "Jīntiān shì shí yuè èrshíliù hào xiàwǔ liǎng diǎn bàn. Zhāng xiānsheng huì kāi chē, tā kāi chē qù yīyuàn. Tā xiǎng qù yīyuàn kàn tā de yí ge hǎo péngyou."
        full_vn = "Hôm nay là ngày 26 tháng 10 lúc hai giờ rưỡi chiều. Ông Trương biết lái xe, ông ấy đang lái xe đến bệnh viện. Ông ấy muốn đến bệnh viện thăm một người bạn tốt."
        grammar_notes = "Trật tự thời gian (Tháng -> Ngày -> Buổi -> Giờ), động từ năng nguyện '会' (kỹ năng) và '想' (dự định)."
    },
    @{
        id = 7
        pic = "images/pic7.jpg"
        num = "07"
        title = "Đi ngủ lúc 11:00 đêm"
        topic = "Sinh hoạt & Giấc ngủ"
        char_count = 41
        sentence_count = 3
        keywords = @(
            @{ zh = "晚上十一点"; py = "wǎnshang shíyī diǎn"; vn = "11 giờ đêm" },
            @{ zh = "在家里"; py = "zài jiālǐ"; vn = "ở nhà" },
            @{ zh = "睡觉"; py = "shuìjiào"; vn = "đi ngủ" },
            @{ zh = "做了工作"; py = "zuò le gōngzuò"; vn = "đã làm việc" },
            @{ zh = "明天上午"; py = "míngtiān shàngwǔ"; vn = "sáng mai" },
            @{ zh = "去学校"; py = "qù xuéxiào"; vn = "đến trường" }
        )
        prompt_hints = @(
            "1. Bây giờ là mấy giờ? Cô ấy chuẩn bị làm gì ở đâu?",
            "2. Hôm nay cô ấy đã học tập và làm việc như thế nào?",
            "3. Ngày mai mấy giờ cô ấy phải đến trường?"
        )
        sentences = @(
            @{
                step = "Câu 1: Bối cảnh"
                zh = "现在是晚上十一点，她在家里睡觉。"
                py = "Xiànzài shì wǎnshang shíyī diǎn, tā zài jiālǐ shuìjiào."
                vn = "Bây giờ là mười một giờ đêm, cô ấy chuẩn bị đi ngủ ở nhà."
                chars = 15
            },
            @{
                step = "Câu 2: Nguyên nhân"
                zh = "今天她在学校学习，做了很多工作。"
                py = "Jīntiān tā zài xuéxiào xuéxí, zuò le hěn duō gōngzuò."
                vn = "Hôm nay cô ấy đã học ở trường và làm rất nhiều bài tập, công việc."
                chars = 14
            },
            @{
                step = "Câu 3: Dự định ngày mai"
                zh = "明天上午八点她还要去学校。"
                py = "Míngtiān shàngwǔ bā diǎn tā hái yào qù xuéxiào."
                vn = "Tám giờ sáng mai cô ấy còn phải tiếp tục đến trường."
                chars = 12
            }
        )
        full_zh = "现在是晚上十一点，她在家里睡觉。今天她在学校学习，做了很多工作。明天上午八点她还要去学校。"
        full_py = "Xiànzài shì wǎnshang shíyī diǎn, tā zài jiālǐ shuìjiào. Jīntiān tā zài xuéxiào xuéxí, zuò le hěn duō gōngzuò. Míngtiān shàngwǔ bā diǎn tā hái yào qù xuéxiào."
        full_vn = "Bây giờ là mười một giờ đêm, cô ấy chuẩn bị đi ngủ ở nhà. Hôm nay cô ấy đã học ở trường và làm rất nhiều bài tập, công việc. Tám giờ sáng mai cô ấy còn phải tiếp tục đến trường."
        grammar_notes = "Trợ từ động thái '了' biểu thị hành động hoàn thành (做了很多工作), phó từ '还' (còn, vẫn)."
    },
    @{
        id = 8
        pic = "images/pic14.jpg"
        num = "08"
        title = "Xem đồ ở cửa hàng quần áo"
        topic = "Mua sắm & Quần áo"
        char_count = 40
        sentence_count = 3
        keywords = @(
            @{ zh = "昨天下午"; py = "zuótiān xiàwǔ"; vn = "chiều hôm qua" },
            @{ zh = "大商店"; py = "dà shāngdiàn"; vn = "cửa hàng to" },
            @{ zh = "买东西"; py = "mǎi dōngxi"; vn = "mua đồ" },
            @{ zh = "漂亮衣服"; py = "piàoliang yīfu"; vn = "quần áo đẹp" },
            @{ zh = "想买一件"; py = "xiǎng mǎi yí jiàn"; vn = "muốn mua một bộ" },
            @{ zh = "女儿"; py = "nǚ'ér"; vn = "con gái" }
        )
        prompt_hints = @(
            "1. Hôm qua cô ấy đi đâu mua sắm?",
            "2. Trong cửa hàng có những bộ quần áo như thế nào?",
            "3. Cô ấy muốn mua một bộ cho ai?"
        )
        sentences = @(
            @{
                step = "Câu 1: Bối cảnh"
                zh = "昨天下午李小姐去大商店买东西。"
                py = "Zuótiān xiàwǔ Lǐ xiǎojiě qù dà shāngdiàn mǎi dōngxi."
                vn = "Chiều hôm qua cô Lý đến một cửa hàng lớn để mua đồ."
                chars = 14
            },
            @{
                step = "Câu 2: Quan sát"
                zh = "商店里有很多漂亮的衣服。"
                py = "Shāngdiàn lǐ yǒu hěn duō piàoliang de yīfu."
                vn = "Bên trong cửa hàng có rất nhiều quần áo đẹp."
                chars = 11
            },
            @{
                step = "Câu 3: Quyết định"
                zh = "她想买一件漂亮的衣服给她的女儿。"
                py = "Tā xiǎng mǎi yí jiàn piàoliang de yīfu gěi tā de nǚ'ér."
                vn = "Cô ấy muốn mua một bộ quần áo đẹp tặng cho con gái của mình."
                chars = 15
            }
        )
        full_zh = "昨天下午李小姐去大商店买东西。商店里有很多漂亮的衣服。她想买一件漂亮的衣服给她的女儿。"
        full_py = "Zuótiān xiàwǔ Lǐ xiǎojiě qù dà shāngdiàn mǎi dōngxi. Shāngdiàn lǐ yǒu hěn duō piàoliang de yīfu. Tā xiǎng mǎi yí jiàn piàoliang de yīfu gěi tā de nǚ'ér."
        full_vn = "Chiều hôm qua cô Lý đến một cửa hàng lớn để mua đồ. Bên trong cửa hàng có rất nhiều quần áo đẹp. Cô ấy muốn mua một bộ quần áo đẹp tặng cho con gái của mình."
        grammar_notes = "Lượng từ cho quần áo '件' (一件衣服), trợ từ kết cấu '的' miêu tả định ngữ (漂亮的衣服)."
    },
    @{
        id = 9
        pic = "images/pic15.jpg"
        num = "09"
        title = "Chiếc áo đẹp giá 10 đồng"
        topic = "Giá cả & Tiền bạc"
        char_count = 39
        sentence_count = 3
        keywords = @(
            @{ zh = "商店"; py = "shāngdiàn"; vn = "cửa hàng" },
            @{ zh = "很漂亮"; py = "hěn piàoliang"; vn = "rất đẹp" },
            @{ zh = "不贵"; py = "bú guì"; vn = "không đắt" },
            @{ zh = "十块钱"; py = "shí kuài qián"; vn = "10 đồng" },
            @{ zh = "买了一件"; py = "mǎi le yí jiàn"; vn = "đã mua một chiếc" },
            @{ zh = "心里高兴"; py = "xīnlǐ gāoxìng"; vn = "trong lòng rất vui" }
        )
        prompt_hints = @(
            "1. Đồ đạc trong cửa hàng này trông thế nào? Có đắt không?",
            "2. Chiếc áo này giá bao nhiêu đồng?",
            "3. Cô ấy đã mua nó và tâm trạng thế nào?"
        )
        sentences = @(
            @{
                step = "Câu 1: Đánh giá"
                zh = "商店里的东西都很漂亮，不贵。"
                py = "Shāngdiàn lǐ de dōngxi dōu hěn piàoliang, bú guì."
                vn = "Đồ dùng trong cửa hàng đều rất đẹp, không hề đắt."
                chars = 13
            },
            @{
                step = "Câu 2: Chi tiết giá cả"
                zh = "这件衣服太漂亮了，只要十块钱。"
                py = "Zhè jiàn yīfu tài piàoliang le, zhǐ yào shí kuài qián."
                vn = "Chiếc áo này đẹp quá, giá chỉ có mười đồng thôi."
                chars = 13
            },
            @{
                step = "Câu 3: Hành động & Cảm xúc"
                zh = "王小姐买了一件，她心里很高兴。"
                py = "Wáng xiǎojiě mǎi le yí jiàn, tā xīnlǐ hěn gāoxìng."
                vn = "Cô Vương đã mua một chiếc, trong lòng cảm thấy rất vui."
                chars = 13
            }
        )
        full_zh = "商店里的东西都很漂亮，不贵。这件衣服太漂亮了，只要十块钱。王小姐买了一件，她心里很高兴。"
        full_py = "Shāngdiàn lǐ de dōngxi dōu hěn piàoliang, bú guì. Zhè jiàn yīfu tài piàoliang le, zhǐ yào shí kuài qián. Wáng xiǎojiě mǎi le yí jiàn, tā xīnlǐ hěn gāoxìng."
        full_vn = "Đồ dùng trong cửa hàng đều rất đẹp, không hề đắt. Chiếc áo này đẹp quá, giá chỉ có mười đồng thôi. Cô Vương đã mua một chiếc, trong lòng cảm thấy rất vui."
        grammar_notes = "Phó từ '都' (đều), đơn vị tiền tệ '块' (十块钱), trạng từ cảm xúc '心里很高兴'."
    },
    @{
        id = 10
        pic = "images/pic16.jpg"
        num = "10"
        title = "Học tiếng Trung bằng máy tính tại nhà"
        topic = "Học tập & Máy tính"
        char_count = 41
        sentence_count = 3
        keywords = @(
            @{ zh = "上午"; py = "shàngwǔ"; vn = "buổi sáng" },
            @{ zh = "在家里"; py = "zài jiālǐ"; vn = "ở nhà" },
            @{ zh = "用电脑"; py = "yòng diànnǎo"; vn = "dùng máy tính" },
            @{ zh = "学习汉语"; py = "xuéxí Hànyǔ"; vn = "học tiếng Hán" },
            @{ zh = "桌子上"; py = "zhuōzi shàng"; vn = "trên bàn" },
            @{ zh = "去北京"; py = "qù Běijīng"; vn = "đến Bắc Kinh" }
        )
        prompt_hints = @(
            "1. Buổi sáng cô ấy đang ở đâu và dùng gì để học?",
            "2. Trên bàn của cô ấy có những đồ vật gì?",
            "3. Cô ấy thích tiếng Hán không? Muốn đi đâu làm việc?"
        )
        sentences = @(
            @{
                step = "Câu 1: Bối cảnh"
                zh = "今天上午李小姐在家里用电脑学习。"
                py = "Jīntiān shàngwǔ Lǐ xiǎojiě zài jiālǐ yòng diànnǎo xuéxí."
                vn = "Sáng hôm nay cô Lý ở nhà sử dụng máy tính để học tập."
                chars = 15
            },
            @{
                step = "Câu 2: Quan sát"
                zh = "桌子上有一本书和一个大杯子。"
                py = "Zhuōzi shàng yǒu yì běn shū hé yí ge dà bēizi."
                vn = "Ở trên bàn có một cuốn sách và một chiếc cốc lớn."
                chars = 13
            },
            @{
                step = "Câu 3: Dự định tương lai"
                zh = "她很喜欢汉语，想去北京工作。"
                py = "Tā hěn xǐhuan Hànyǔ, xiǎng qù Běijīng gōngzuò."
                vn = "Cô ấy rất yêu thích tiếng Trung, mong muốn đến Bắc Kinh làm việc."
                chars = 13
            }
        )
        full_zh = "今天上午李小姐在家里用电脑学习。桌子上有一本书和一个大杯子。她很喜欢汉语，想去北京工作。"
        full_py = "Jīntiān shàngwǔ Lǐ xiǎojiě zài jiālǐ yòng diànnǎo xuéxí. Zhuōzi shàng yǒu yì běn shū hé yí ge dà bēizi. Tā hěn xǐhuan Hànyǔ, xiǎng qù Běijīng gōngzuò."
        full_vn = "Sáng hôm nay cô Lý ở nhà sử dụng máy tính để học tập. Ở trên bàn có một cuốn sách và một chiếc cốc lớn. Cô ấy rất yêu thích tiếng Trung, mong muốn đến Bắc Kinh làm việc."
        grammar_notes = "Giới từ công cụ '用电脑 + Động từ', liên từ '和' (và), lượng từ '本' cho sách và '个' cho cốc."
    },
    @{
        id = 11
        pic = "images/pic18.jpg"
        num = "11"
        title = "Bác sĩ và Thầy giáo đang làm việc"
        topic = "Nghề nghiệp & Nơi làm việc"
        char_count = 41
        sentence_count = 3
        keywords = @(
            @{ zh = "好医生"; py = "hǎo yīshēng"; vn = "bác sĩ giỏi" },
            @{ zh = "在医院"; py = "zài yīyuàn"; vn = "ở bệnh viện" },
            @{ zh = "老师"; py = "lǎoshī"; vn = "thầy giáo" },
            @{ zh = "在学校"; py = "zài xuéxiào"; vn = "ở trường học" },
            @{ zh = "中国人"; py = "Zhōngguó rén"; vn = "người Trung Quốc" },
            @{ zh = "好朋友"; py = "hǎo péngyou"; vn = "bạn tốt" }
        )
        prompt_hints = @(
            "1. Cô Lý làm nghề gì và làm việc ở đâu?",
            "2. Thầy Vương làm nghề gì và công tác ở đâu?",
            "3. Họ là người nước nào và có mối quan hệ gì với tôi?"
        )
        sentences = @(
            @{
                step = "Câu 1: Nghề nghiệp 1"
                zh = "李小姐是好医生，她在医院里工作。"
                py = "Lǐ xiǎojiě shì hǎo yīshēng, tā zài yīyuàn lǐ gōngzuò."
                vn = "Cô Lý là một bác sĩ giỏi, cô ấy làm việc ở trong bệnh viện."
                chars = 15
            },
            @{
                step = "Câu 2: Nghề nghiệp 2"
                zh = "王先生是老师，他在学校工作。"
                py = "Wáng xiānsheng shì lǎoshī, tā zài xuéxiào gōngzuò."
                vn = "Thầy Vương là giáo viên, thầy ấy làm việc ở trường học."
                chars = 12
            },
            @{
                step = "Câu 3: Quan hệ & Đánh giá"
                zh = "他们是中国人，也都是我的好朋友。"
                py = "Tāmen shì Zhōngguó rén, yě dōu shì wǒ de hǎo péngyou."
                vn = "Họ là người Trung Quốc, và đều là những người bạn tốt của tôi."
                chars = 14
            }
        )
        full_zh = "李小姐是好医生，她在医院里工作。王先生是老师，他在学校工作。他们是中国人，也都是我的好朋友。"
        full_py = "Lǐ xiǎojiě shì hǎo yīshēng, tā zài yīyuàn lǐ gōngzuò. Wáng xiānsheng shì lǎoshī, tā zài xuéxiào gōngzuò. Tāmen shì Zhōngguó rén, yě dōu shì wǒ de hǎo péngyou."
        full_vn = "Cô Lý là một bác sĩ giỏi, cô ấy làm việc ở trong bệnh viện. Thầy Vương là giáo viên, thầy ấy làm việc ở trường học. Họ là người Trung Quốc, và đều là những người bạn tốt của tôi."
        grammar_notes = "Câu vị ngữ danh từ với '是', kết cấu vị trí '在...工作', phó từ kết hợp '也都是'."
    }
)

$json = $cards | ConvertTo-Json -Depth 6
$json | Out-File -FilePath "C:\Users\ADMIN\.gemini\antigravity\scratch\hsk1-practice\cards.json" -Encoding utf8
Write-Output "Generated cards.json with $($cards.Count) cards."
