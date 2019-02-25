/* Добавляем новый тест */
INSERT INTO Tests(Name) VALUES(N'Тестовые вопросы для проверки знаний по вопросам ОТ по профессии «Токарь»');
GO

/*Добавляем 1 вопрос*/
INSERT INTO Questions(Condition, TestId) VALUES(N'Какие подкладки должны подкладываться под патрон или планшайбу на станок у случае установки патрона или планшайбы на шпиндель?', 1);
GO
	
/*Добавляем ответы к 1 вопросу*/
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'Войлочные подкладки', 0, 1);
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'Деревянные подкладки, которые выступают за патрон на 50 мм', 0, 1);
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'Деревянные подкладки с выемкой по форме патрона', 1, 1);
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'Металлические подкладки', 0, 1); 
GO

/*Добавляем 2 вопрос*/
INSERT INTO Questions(Condition, TestId) VALUES(N'Каким образом необходимо удалять стружку из отверстий?', 1);
GO

/*Добавляем ответы к 2 вопросу*/
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'Выдувать, стряхивать', 0, 2);
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'Смывать струей  эмульсии', 0, 2);
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'Руками', 0, 2);
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'Гидравлическим способом, магнитами, металлическими крючками только после остановки станка и отведения инструмента', 1, 2);
GO

/*Добавляем 3 вопрос*/
INSERT INTO Questions(Condition, TestId) VALUES(N'Какие детали допускаются закреплять  в кулачковом патроне без подпора центром задней бабки?', 1);
GO

/*Добавляем ответы к 3 вопросу*/
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'Уравновешенные детали длиной не более 2-х диаметров', 1, 3);
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'Уравновешенные детали длиной не более 6-х диаметров', 0, 3);
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'Уравновешенные детали длиной не более 4-х диаметров', 0, 3);
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'Уравновешенные детали длиной не более 3-х диаметров', 0, 3); 
GO

/*Добавляем 4 вопрос*/
INSERT INTO Questions(Condition, TestId) VALUES(N'Для обработки, каких деталей необходимо применить дополнительные опоры (люнеты)?', 1);
GO

/*Добавляем ответы к 4 вопросу*/
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'Для обработки в центрах деталей длиной 10 диаметров и более, в случае скоростного и силового резания деталей длиной 6 диаметров и более', 0, 4);
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'Для обработки в центрах деталей длиной 20 диаметров и более, в случае скоростного и силового резания деталей длиной 15 диаметров и более', 0, 4);
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'Для обработки в центрах деталей длиной 18 диаметров и более, в случае скоростного и силового резания деталей длиной 8 диаметров и более', 0, 4);
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'Для обработки в центрах деталей длиной 12 диаметров и более, в случае скоростного и силового резания деталей длиной 8 диаметров и более', 1, 4); 
GO

/*Добавляем 5 вопрос*/
INSERT INTO Questions(Condition, TestId) VALUES(N'В каких случаях станки должны быть оснащены индивидуальным подъемным устройством?', 1);
GO

/*Добавляем ответы к 5 вопросу*/
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'Для установки заготовок массой больше 10кг, а также инструментов и приспособлений массой больше 25 кг', 0, 5);
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'Для установки заготовок массой больше 8кг, а также инструментов и приспособлений массой больше 20 кг', 1, 5);
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'Для установки заготовок массой больше 5кг, а также инструментов и приспособлений массой больше 15 кг', 0, 5);
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'Для установки заготовок массой больше 8кг, а также инструментов и приспособлений массой больше 25 кг', 0, 5); 
GO

/*Добавляем 6 вопрос*/
INSERT INTO Questions(Condition, TestId) VALUES(N'Какие  опасные производственные факторы воздействуют на токаря в процессе повседневной производственной деятельности?', 1);
GO

/*Добавляем ответы к 6 вопросу*/
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'Высокое напряжение электрической цепи; опасность травмирования движущимися деталями станков и механизмов, материалов; опасность травмирования падающими деталями, заготовками, инструментом и т.д.', 0, 6);
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'Опасность травмирования движущимися деталями станков и механизмов, материалов; опасность травмирования падающими деталями, заготовками, инструментом и т.д.', 1, 6);
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'Высокое напряжение электрической цепи; опасность травмирования движущимися деталями станков и механизмов, материалов', 0, 6);
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'Высокое напряжение электрической цепи; опасность травмирования движущимися деталями станков и механизмов, материалов; загазованность; опасность травмирования падающими деталями, заготовками и т.д.', 0, 6); 
GO

/*Добавляем 7 вопрос*/
INSERT INTO Questions(Condition, TestId) VALUES(N'В каком случае станочник не должен приступать к работе?', 1);
GO

/*Добавляем ответы к 7 вопросу*/
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'Станочник не должен приступать к работе, предварительно не проверив исправность станка в целом. Запрещается дотрагиваться до вращающихся частей оборудования или детали', 0, 7);
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'Станочник не должен приступать  к  работе, предварительно  не проверив  исправность отдельных  механизмов, приспособлений  и станка в целом', 1, 7);
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'Станочник не должен приступать  к  работе, предварительно  не проверив  исправность отдельных  механизмов, приспособлений  и станка в целом. Запрещается дотрагиваться до вращающихся частей оборудования или детали', 0, 7);
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'Станочник не должен приступать  к  работе не имея на руках утвержденного технологического процесса на обработку. Запрещается дотрагиваться до вращающихся частей оборудования или детали', 0, 7); 
GO

/*Добавляем 8 вопрос*/
INSERT INTO Questions(Condition, TestId) VALUES(N'При каких обстоятельствах станочник должен остановить станок и выключить электродвигатель?', 1);
GO

/*Добавляем ответы к 8 вопросу*/
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'При выявлении неисправности освещения станка, несоответствии заготовок, согласно техпроцесса', 0, 8);
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'При выявлении неисправности оборудования и электродвигателя; при прекращении подачи электроэнергии; при осмотре, уборке, чистке и смазке станка; при установке и снятии заготовок; для измерения обрабатываемых изделий; при подтягивании болтов, гаек и других соединительных деталей станка', 1, 8);
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'При выявлении неисправности оборудования и электродвигателя;  при подтягивании болтов, гаек и других соединительных деталей станка', 0, 8);
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'При прекращении подачи электроэнергии', 0, 8); 
GO

/*Добавляем 9 вопрос*/
INSERT INTO Questions(Condition, TestId) VALUES(N'Для обработки каких  металлов необходимо применять резцы с выкружками, накладными стружколамачами или стружкозавивателями?', 1);
GO

/*Добавляем ответы к 9 вопросу*/
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'Для обработки стали и чугуна', 0, 9);
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'Для обработки сталей', 1, 9);
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'Для обработки чугуна', 0, 9);
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'Для обработки бронзы', 0, 9); 
GO

/*Добавляем 10 вопрос*/
INSERT INTO Questions(Condition, TestId) VALUES(N'Для обработки каких  металлов необходимо применять защитные приспособления?', 1);
GO

/*Добавляем ответы к 10 вопросу*/
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'Для обработки чугуна и бронзы', 1, 10);
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'Для обработки сталей', 0, 10);
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'Для обработки латуни', 0, 10);
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'Для обработки стали и чугуна', 0, 10); 
GO

/*Добавляем 11 вопрос*/
INSERT INTO Questions(Condition, TestId) VALUES(N'Какой высоты должны быть стопы (штабеля, пакеты), в которые укладываются материалы, заготовки и изделия возле станков и рабочих мест?', 1);
GO

/*Добавляем ответы к 11 вопросу*/
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'До 2 м от уровня пола', 0, 11);
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'До 0,5 м от уровня пола', 0, 11);
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'До 1,7 м от уровня пола', 1, 11);
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'До 0,7 м от уровня пола', 0, 11); 
GO

/*Добавляем 12 вопрос*/
INSERT INTO Questions(Condition, TestId) VALUES(N'Можно ли устанавливать, и снимать резцы во время работы?', 1);
GO

/*Добавляем ответы к 12 вопросу*/
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'Нельзя', 1, 12);
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'Можно', 0, 12);
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'Возможно иногда', 0, 12);
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'В экстренном случаи', 0, 12); 
GO

/*Добавляем 13 вопрос*/
INSERT INTO Questions(Condition, TestId) VALUES(N'О чем работник обязан немедленно известить своего руководителя?', 1);
GO

/*Добавляем ответы к 13 вопросу*/
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'О любой ситуации, угрожающей жизни и здоровью людей', 0, 13);
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'О нарушениях правил техники безопасности', 0, 13);
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'Об ухудшении состояния своего здоровья', 0, 13);
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'Обо всем перечисленном', 1, 13); 
GO

/*Добавляем 14 вопрос*/
INSERT INTO Questions(Condition, TestId) VALUES(N'С помощью чего удаляется стружка со станка?', 1);
GO

/*Добавляем ответы к 14 вопросу*/
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'Стружку со станка  удалять при помощи метлы, доступных заготовок. Возможно использование  для удаления стружки специальных крючков', 0, 14);
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'Стружку со станка удалять инструментом (штангенциркуль, линейка металлическая)', 0, 14);
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'Стружку со станка непосредственно руками и инструментом не удалять, пользоваться для этого специальными крючками и щетками-сметками. Не допускать уборщицу к уборке у станка во время его работы', 1, 14);
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'Стружку со станка удалять щетками-сметками', 0, 14); 
GO

/*Добавляем 15 вопрос*/
INSERT INTO Questions(Condition, TestId) VALUES(N'Для чего на станке предназначена красная кнопка?', 1);
GO

/*Добавляем ответы к 15 вопросу*/
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'Для аварийного включения станка', 0, 15);
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'Для запуска станка в авторежиме', 0, 15);
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'Для ускоренного перемещения суппорта', 0, 15);
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'Для аварийного отключения станка', 1, 15); 
GO

/*Добавляем 16 вопрос*/
INSERT INTO Questions(Condition, TestId) VALUES(N'Какую ответственность несет работник за невыполнение инструкции по охране труда?', 1);
GO

/*Добавляем ответы к 16 вопросу*/
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'Законодательством ответственность не предусмотрена', 0, 16);
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'Дисциплинарная', 1, 16);
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'Дисциплинарная Административная ', 0, 16);
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'Дисциплинарная Административная Уголовная', 0, 16); 
GO

/*Добавляем 17 вопрос*/
INSERT INTO Questions(Condition, TestId) VALUES(N'Что должен проверить станочник перед началом работ?', 1);
GO

/*Добавляем ответы к 17 вопросу*/
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'Наличие и исправность ограждений', 0, 17);
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'Наличие и исправность заземляющих проводов', 1, 17);
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'Проверить заземление', 0, 17);
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'Наличие и исправность предохранительных устройств для защиты от стружки и охлаждающей жидкости', 0, 17); 
GO

/*Добавляем 18 вопрос*/
INSERT INTO Questions(Condition, TestId) VALUES(N'Что работник обязан сделать  перед началом работ?', 1);
GO

/*Добавляем ответы к 18 вопросу*/
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'Сообщить в пожарную охраны о наличии средств первичного пожаротушения', 0, 18);
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'Привести в порядок и надеть СИЗ, осмотреть рабочее место, убрать посторонние предметы, проверить исправность инструмента', 1, 18);
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'Сообщить  в службу охраны труда данные о наличии инструмента ', 0, 18);
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'Ждать распоряжения руководителя подразделения', 0, 18); 
GO

/*Добавляем 19 вопрос*/
INSERT INTO Questions(Condition, TestId) VALUES(N'Какие действия работника, получившего травму на производстве?', 1);
GO

/*Добавляем ответы к 19 вопросу*/
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'Направиться срочно домой и при плохом самочувствии обратится врачу', 0, 19);
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'Направиться в медсанчасть предприятия', 1, 19);
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'Срочно сообщить мастеру и в службу охраны труда', 1, 19);
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'Попросить оказать помощь рядом работающего токаря', 0, 19); 
GO

/*Добавляем 20 вопрос*/
INSERT INTO Questions(Condition, TestId) VALUES(N'Для чего служит видимый контур заземления?', 1);
GO

/*Добавляем ответы к 20 вопросу*/
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'Для снятия напряжения, если произошло пробивка напряжения на корпус', 1, 20);
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'Чтобы не украли оборудования', 0, 20);
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'Низковольтовая  подача напряжения на оборудование', 0, 20);
INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES (N'Для визуального осмотра', 0, 20); 
GO
