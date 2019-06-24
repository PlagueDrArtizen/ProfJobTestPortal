/* Добавляем тест 1*/
INSERT INTO Tests(Name) VALUES(N'Тестовые вопросы для проверки знаний по вопросам ОТ по профессии «Токарь»');
GO

/*Добавляем 1 вопрос к тест 1*/
INSERT INTO Questions(Condition, TestId) VALUES(N'Какие подкладки должны подкладываться под патрон или планшайбу на станок у случае установки патрона или планшайбы на шпиндель?', 1);
GO
	
/*Добавляем ответы к 1 вопросу к тест 1*/
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'Войлочные подкладки', 0, 1);
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'Деревянные подкладки, которые выступают за патрон на 50 мм', 0, 1);
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'Деревянные подкладки с выемкой по форме патрона', 1, 1);
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'Металлические подкладки', 0, 1); 
GO

/*Добавляем 2 вопрос к тест 1*/
INSERT INTO Questions(Condition, TestId) VALUES(N'Каким образом необходимо удалять стружку из отверстий?', 1);
GO

/*Добавляем ответы к 2 вопросу к тест 1*/
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'Выдувать, стряхивать', 0, 2);
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'Смывать струей  эмульсии', 0, 2);
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'Руками', 0, 2);
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'Гидравлическим способом, магнитами, металлическими крючками только после остановки станка и отведения инструмента', 1, 2);
GO

/*Добавляем 3 вопрос к тест 1*/
INSERT INTO Questions(Condition, TestId) VALUES(N'Какие детали допускаются закреплять  в кулачковом патроне без подпора центром задней бабки?', 1);
GO

/*Добавляем ответы к 3 вопросу к тест 1*/
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'Уравновешенные детали длиной не более 2-х диаметров', 1, 3);
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'Уравновешенные детали длиной не более 6-х диаметров', 0, 3);
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'Уравновешенные детали длиной не более 4-х диаметров', 0, 3);
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'Уравновешенные детали длиной не более 3-х диаметров', 0, 3); 
GO

/*Добавляем 4 вопрос к тест 1*/
INSERT INTO Questions(Condition, TestId) VALUES(N'Для обработки, каких деталей необходимо применить дополнительные опоры (люнеты)?', 1);
GO

/*Добавляем ответы к 4 вопросу к тест 1*/
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'Для обработки в центрах деталей длиной 10 диаметров и более, в случае скоростного и силового резания деталей длиной 6 диаметров и более', 0, 4);
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'Для обработки в центрах деталей длиной 20 диаметров и более, в случае скоростного и силового резания деталей длиной 15 диаметров и более', 0, 4);
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'Для обработки в центрах деталей длиной 18 диаметров и более, в случае скоростного и силового резания деталей длиной 8 диаметров и более', 0, 4);
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'Для обработки в центрах деталей длиной 12 диаметров и более, в случае скоростного и силового резания деталей длиной 8 диаметров и более', 1, 4); 
GO

/*Добавляем 5 вопрос к тест 1*/
INSERT INTO Questions(Condition, TestId) VALUES(N'В каких случаях станки должны быть оснащены индивидуальным подъемным устройством?', 1);
GO

/*Добавляем ответы к 5 вопросу к тест 1*/
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'Для установки заготовок массой больше 10кг, а также инструментов и приспособлений массой больше 25 кг', 0, 5);
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'Для установки заготовок массой больше 8кг, а также инструментов и приспособлений массой больше 20 кг', 1, 5);
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'Для установки заготовок массой больше 5кг, а также инструментов и приспособлений массой больше 15 кг', 0, 5);
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'Для установки заготовок массой больше 8кг, а также инструментов и приспособлений массой больше 25 кг', 0, 5); 
GO

/*Добавляем 6 вопрос к тест 1*/
INSERT INTO Questions(Condition, TestId) VALUES(N'Какие  опасные производственные факторы воздействуют на токаря в процессе повседневной производственной деятельности?', 1);
GO

/*Добавляем ответы к 6 вопросу к тест 1*/
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'Высокое напряжение электрической цепи; опасность травмирования движущимися деталями станков и механизмов, материалов; опасность травмирования падающими деталями, заготовками, инструментом и т.д.', 0, 6);
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'Опасность травмирования движущимися деталями станков и механизмов, материалов; опасность травмирования падающими деталями, заготовками, инструментом и т.д.', 1, 6);
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'Высокое напряжение электрической цепи; опасность травмирования движущимися деталями станков и механизмов, материалов', 0, 6);
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'Высокое напряжение электрической цепи; опасность травмирования движущимися деталями станков и механизмов, материалов; загазованность; опасность травмирования падающими деталями, заготовками и т.д.', 0, 6); 
GO

/*Добавляем 7 вопрос к тест 1*/
INSERT INTO Questions(Condition, TestId) VALUES(N'В каком случае станочник не должен приступать к работе?', 1);
GO

/*Добавляем ответы к 7 вопросу к тест 1*/
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'Станочник не должен приступать к работе, предварительно не проверив исправность станка в целом. Запрещается дотрагиваться до вращающихся частей оборудования или детали', 0, 7);
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'Станочник не должен приступать  к  работе, предварительно  не проверив  исправность отдельных  механизмов, приспособлений  и станка в целом', 1, 7);
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'Станочник не должен приступать  к  работе, предварительно  не проверив  исправность отдельных  механизмов, приспособлений  и станка в целом. Запрещается дотрагиваться до вращающихся частей оборудования или детали', 0, 7);
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'Станочник не должен приступать  к  работе не имея на руках утвержденного технологического процесса на обработку. Запрещается дотрагиваться до вращающихся частей оборудования или детали', 0, 7); 
GO

/*Добавляем 8 вопрос к тест 1*/
INSERT INTO Questions(Condition, TestId) VALUES(N'При каких обстоятельствах станочник должен остановить станок и выключить электродвигатель?', 1);
GO

/*Добавляем ответы к 8 вопросу к тест 1*/
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'При выявлении неисправности освещения станка, несоответствии заготовок, согласно техпроцесса', 0, 8);
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'При выявлении неисправности оборудования и электродвигателя; при прекращении подачи электроэнергии; при осмотре, уборке, чистке и смазке станка; при установке и снятии заготовок; для измерения обрабатываемых изделий; при подтягивании болтов, гаек и других соединительных деталей станка', 1, 8);
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'При выявлении неисправности оборудования и электродвигателя;  при подтягивании болтов, гаек и других соединительных деталей станка', 0, 8);
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'При прекращении подачи электроэнергии', 0, 8); 
GO

/*Добавляем 9 вопрос к тест 1*/
INSERT INTO Questions(Condition, TestId) VALUES(N'Для обработки каких  металлов необходимо применять резцы с выкружками, накладными стружколамачами или стружкозавивателями?', 1);
GO

/*Добавляем ответы к 9 вопросу к тест 1*/
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'Для обработки стали и чугуна', 0, 9);
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'Для обработки сталей', 1, 9);
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'Для обработки чугуна', 0, 9);
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'Для обработки бронзы', 0, 9); 
GO

/*Добавляем 10 вопрос к тест 1*/
INSERT INTO Questions(Condition, TestId) VALUES(N'Для обработки каких  металлов необходимо применять защитные приспособления?', 1);
GO

/*Добавляем ответы к 10 вопросу к тест 1*/
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'Для обработки чугуна и бронзы', 1, 10);
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'Для обработки сталей', 0, 10);
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'Для обработки латуни', 0, 10);
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'Для обработки стали и чугуна', 0, 10); 
GO

/*Добавляем 11 вопрос к тест 1*/
INSERT INTO Questions(Condition, TestId) VALUES(N'Какой высоты должны быть стопы (штабеля, пакеты), в которые укладываются материалы, заготовки и изделия возле станков и рабочих мест?', 1);
GO

/*Добавляем ответы к 11 вопросу к тест 1*/
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'До 2 м от уровня пола', 0, 11);
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'До 0,5 м от уровня пола', 0, 11);
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'До 1,7 м от уровня пола', 1, 11);
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'До 0,7 м от уровня пола', 0, 11); 
GO

/*Добавляем 12 вопрос к тест 1*/
INSERT INTO Questions(Condition, TestId) VALUES(N'Можно ли устанавливать, и снимать резцы во время работы?', 1);
GO

/*Добавляем ответы к 12 вопросу к тест 1*/
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'Нельзя', 1, 12);
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'Можно', 0, 12);
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'Возможно иногда', 0, 12);
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'В экстренном случаи', 0, 12); 
GO

/*Добавляем 13 вопрос к тест 1*/
INSERT INTO Questions(Condition, TestId) VALUES(N'О чем работник обязан немедленно известить своего руководителя?', 1);
GO

/*Добавляем ответы к 13 вопросу к тест 1*/
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'О любой ситуации, угрожающей жизни и здоровью людей', 0, 13);
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'О нарушениях правил техники безопасности', 0, 13);
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'Об ухудшении состояния своего здоровья', 0, 13);
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'Обо всем перечисленном', 1, 13); 
GO

/*Добавляем 14 вопрос к тест 1*/
INSERT INTO Questions(Condition, TestId) VALUES(N'С помощью чего удаляется стружка со станка?', 1);
GO

/*Добавляем ответы к 14 вопросу к тест 1*/
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'Стружку со станка  удалять при помощи метлы, доступных заготовок. Возможно использование  для удаления стружки специальных крючков', 0, 14);
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'Стружку со станка удалять инструментом (штангенциркуль, линейка металлическая)', 0, 14);
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'Стружку со станка непосредственно руками и инструментом не удалять, пользоваться для этого специальными крючками и щетками-сметками. Не допускать уборщицу к уборке у станка во время его работы', 1, 14);
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'Стружку со станка удалять щетками-сметками', 0, 14); 
GO

/*Добавляем 15 вопрос к тест 1*/
INSERT INTO Questions(Condition, TestId) VALUES(N'Для чего на станке предназначена красная кнопка?', 1);
GO

/*Добавляем ответы к 15 вопросу к тест 1*/
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'Для аварийного включения станка', 0, 15);
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'Для запуска станка в авторежиме', 0, 15);
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'Для ускоренного перемещения суппорта', 0, 15);
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'Для аварийного отключения станка', 1, 15); 
GO

/*Добавляем 16 вопрос к тест 1*/
INSERT INTO Questions(Condition, TestId) VALUES(N'Какую ответственность несет работник за невыполнение инструкции по охране труда?', 1);
GO

/*Добавляем ответы к 16 вопросу к тест 1*/
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'Законодательством ответственность не предусмотрена', 0, 16);
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'Дисциплинарная', 1, 16);
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'Дисциплинарная Административная ', 0, 16);
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'Дисциплинарная Административная Уголовная', 0, 16); 
GO

/*Добавляем 17 вопрос к тест 1*/
INSERT INTO Questions(Condition, TestId) VALUES(N'Что должен проверить станочник перед началом работ?', 1);
GO

/*Добавляем ответы к 17 вопросу к тест 1*/
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'Наличие и исправность ограждений', 0, 17);
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'Наличие и исправность заземляющих проводов', 1, 17);
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'Проверить заземление', 0, 17);
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'Наличие и исправность предохранительных устройств для защиты от стружки и охлаждающей жидкости', 0, 17); 
GO

/*Добавляем 18 вопрос к тест 1*/
INSERT INTO Questions(Condition, TestId) VALUES(N'Что работник обязан сделать  перед началом работ?', 1);
GO

/*Добавляем ответы к 18 вопросу к тест 1*/
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'Сообщить в пожарную охраны о наличии средств первичного пожаротушения', 0, 18);
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'Привести в порядок и надеть СИЗ, осмотреть рабочее место, убрать посторонние предметы, проверить исправность инструмента', 1, 18);
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'Сообщить  в службу охраны труда данные о наличии инструмента ', 0, 18);
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'Ждать распоряжения руководителя подразделения', 0, 18); 
GO

/*Добавляем 19 вопрос к тест 1*/
INSERT INTO Questions(Condition, TestId) VALUES(N'Какие действия работника, получившего травму на производстве?', 1);
GO

/*Добавляем ответы к 19 вопросу к тест 1*/
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'Направиться срочно домой и при плохом самочувствии обратится врачу', 0, 19);
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'Направиться в медсанчасть предприятия', 1, 19);
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'Срочно сообщить мастеру и в службу охраны труда', 1, 19);
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'Попросить оказать помощь рядом работающего токаря', 0, 19); 
GO

/*Добавляем 20 вопрос к тест 1*/
INSERT INTO Questions(Condition, TestId) VALUES(N'Для чего служит видимый контур заземления?', 1);
GO

/*Добавляем ответы к 20 вопросу к тест 1*/
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'Для снятия напряжения, если произошло пробивка напряжения на корпус', 1, 20);
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'Чтобы не украли оборудования', 0, 20);
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'Низковольтовая  подача напряжения на оборудование', 0, 20);
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'Для визуального осмотра', 0, 20); 
GO

/* Добавляем тест 2*/
INSERT INTO Tests(Name) VALUES(N'Тесты по технике безопасности на предприятии');
GO

/*Добавляем 1 вопрос к тест 2*/
INSERT INTO Questions(Condition, TestId) VALUES(N'На работах с повышенной опасностью работники проходят обучение и проверку знаний по вопросам охраны труда:', 2);
GO
	
/*Добавляем ответы к 1 вопросу к тест 2*/
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'До начала выполнения должностных обязанностей и в дальнейшем один раз в год.', 1, 21);
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'Периодически раз в 3 года.', 0, 21);
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'Периодически раз в 5 лет.', 0, 21);
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'По указанию администрации.', 0, 21); 
GO

/*Добавляем 2 вопрос к тест 2*/
INSERT INTO Questions(Condition, TestId) VALUES(N'Вводный инструктаж по охране труда с вновь принятыми работниками проводит:', 2);
GO

/*Добавляем ответы к 2 вопросу к тест 2*/
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'Специалист по охране труда.', 1, 22);
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'Сотрудник отдела кадров.', 0, 22);
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'Непосредственный руководитель.', 0, 22);
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'Председатель профкома.', 0, 22);
GO

/*Добавляем 3 вопрос к тест 2*/
INSERT INTO Questions(Condition, TestId) VALUES(N'Повторный инструктаж по охране труда на работах без повышенной опасности проводится один раз:', 2);
GO

/*Добавляем ответы к 3 вопросу к тест 2*/
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'В полугодие.', 1, 23);
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'В месяц.', 0, 23);
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'На квартал.', 0, 23);
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'По указанию государственного инспектора.', 0, 23); 
GO

/*Добавляем 4 вопрос к тест 2*/
INSERT INTO Questions(Condition, TestId) VALUES(N'Когда проводится целевой инструктаж по охране труда?', 2);
GO

/*Добавляем ответы к 4 вопросу к тест 2*/
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'При изменении технологии или после несчастного случая.', 0, 24);
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'После выхода из перерыва.', 0, 24);
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'При переводе работника из одного цеха в другой.', 0, 24);
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'При направлении на выполнение разовой или временной работы', 1, 24); 
GO

/*Добавляем 5 вопрос к тест 2*/
INSERT INTO Questions(Condition, TestId) VALUES(N'Кто может отменить предписание специалиста по охране труда?', 2);
GO

/*Добавляем ответы к 5 вопросу к тест 2*/
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'Руководитель предприятия.', 1, 25);
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'Профсоюзный комитет.', 0, 25);
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'Суд.', 0, 25);
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'Прокуратура.', 0, 25); 
GO

/*Добавляем 6 вопрос к тест 2*/
INSERT INTO Questions(Condition, TestId) VALUES(N'Кем осуществляется расследование несчастных случаев на производстве?', 2);
GO

/*Добавляем ответы к 6 вопросу к тест 2*/
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'Комиссией, назначенной руководителем предприятия.', 1, 26);
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'Отделом охраны труда.', 0, 26);
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'Профсоюзным комитетом.', 0, 26);
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'Отделом внутренних дел.', 0, 26); 
GO

/*Добавляем 7 вопрос к тест 2*/
INSERT INTO Questions(Condition, TestId) VALUES(N'Расследуется несчастный случай, о котором пострадавший своевременно не сообщил?', 2);
GO

/*Добавляем ответы к 7 вопросу к тест 2*/
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'В случае смерти потерпевшего.', 0, 27);
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'Расследуется, если с момента происшествия прошло не более одного месяца.', 0, 27);
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'Не расследуется.', 0, 27);
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'Расследуется по заявлению потерпевшего.', 1, 27); 
GO

/*Добавляем 8 вопрос к тест 2*/
INSERT INTO Questions(Condition, TestId) VALUES(N'В каком размере предприятие платит штраф в случае установления попытки сокрытия работодателем несчастного случая?', 2);
GO

/*Добавляем ответы к 8 вопросу к тест 2*/
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'В 5-кратном размере.', 0, 28);
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'В 10-кратном размере.', 1, 28);
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'В 20-кратном размере.', 0, 28);
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'В 15-кратном размере.', 0, 28); 
GO

/*Добавляем 9 вопрос к тест 2*/
INSERT INTO Questions(Condition, TestId) VALUES(N'Кто подтверждает (устанавливает) право работников на льготное пенсионное обеспечение, дополнительный отпуск, сокращенный рабочий день?', 2);
GO

/*Добавляем ответы к 9 вопросу к тест 2*/
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'Отдел охраны труда.', 0, 29);
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'Профком предприятия.', 0, 29);
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'Комиссия по аттестации рабочих мест.', 1, 29);
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'Органы соцстраха.', 0, 29); 
GO

/*Добавляем 10 вопрос к тест 2*/
INSERT INTO Questions(Condition, TestId) VALUES(N'С увеличением силы тока, проходящего через тело человека, поражения человека:', 2);
GO

/*Добавляем ответы к 10 вопросу к тест 2*/
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'В зависимости от ситуации', 0, 30);
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'Увеличивается', 1, 30);
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'Уменьшается.', 0, 30);
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'Не изменяется.', 0, 30); 
GO