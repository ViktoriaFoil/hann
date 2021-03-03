-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Хост: db
-- Время создания: Мар 03 2021 г., 11:53
-- Версия сервера: 10.3.28-MariaDB-1:10.3.28+maria~focal
-- Версия PHP: 7.4.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `hann`
--

-- --------------------------------------------------------

--
-- Структура таблицы `country`
--

CREATE TABLE `country` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `country`
--

INSERT INTO `country` (`id`, `name`) VALUES
(1, 'Россия'),
(2, 'Египет'),
(3, 'Израиль'),
(4, 'Киргинезия'),
(5, 'Македония'),
(6, 'Чили'),
(7, 'Китай'),
(8, 'Иран'),
(9, 'Азербайджан'),
(10, 'Мексика'),
(11, 'Турция'),
(12, 'Кения'),
(13, 'Тайланд'),
(14, 'Скандинавия'),
(15, 'Азия'),
(16, 'Италия'),
(17, 'Аргентина'),
(18, 'Украина'),
(19, 'Испания'),
(20, 'Марокко'),
(21, 'Австралия'),
(22, 'Сербия'),
(23, 'Узбекистан'),
(24, 'Сирия'),
(25, 'Голландия'),
(26, 'Бразилия'),
(27, 'Индия'),
(28, 'Таивань'),
(29, 'Бразилия'),
(30, 'Вьетнам'),
(31, 'США'),
(32, 'Белорусь'),
(33, 'Франция');

-- --------------------------------------------------------

--
-- Структура таблицы `fruit`
--

CREATE TABLE `fruit` (
  `id` int(11) NOT NULL,
  `img` text NOT NULL,
  `name` varchar(150) NOT NULL,
  `id_country` int(11) NOT NULL,
  `description` text NOT NULL,
  `id_type` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `fruit`
--

INSERT INTO `fruit` (`id`, `img`, `name`, `id_country`, `description`, `id_type`) VALUES
(1, '', 'Груша', 17, 'В груше содержатся витамины A, B1, B2, C, E, а также железо, медь, йод, цинк, фосфор, калий, магний и натрий.', 2),
(2, '', 'Груша (Конференц)', 1, 'Она не нанесет вреда худеющей фигуре. Фрукт этот полезен людям, страдающим болями в сердце, а кроме того, показан к употреблению для повышения иммунитета. Груша \"конференц\", калорийность которой составляет всего 40 ккал, содержит много питательных волокон.', 2),
(3, '', 'Груша (Китайская)', 1, 'Груши Китайские — это особый сорт, отличающийся своим внешним видом, текстурой и вкусом. Они довольно жесткие, сочные и умеренно сладкие. в них содержатся необходимые для здоровья человека витамины, минералы и полезные вещества.', 2),
(4, '', 'Груша (Анжу)', 18, 'Эфирные масла, входящие в состав груши, укрепляют иммунитет, борются с инфекциями и воспалениями, и даже способствуют выходу из депрессии. Органические вещества улучшают пищеварение и обмен веществ, а клетчатка снижает уровень холестерина.', 2),
(5, '', 'Груша Аббат', 19, 'Главное назначение груш сорта Аббат - десертные плоды. Их можно использовать в свежем виде для Фруктовых салатов или нарезок и делать из них джемы, повидло, варенье.', 2),
(6, '', 'Груша Санта Мария ', 1, 'Употребление груши очень полезно беременным и детям. Сок груши помогает справиться с некоторыми заболеваниями ЖКТ. Пожилым людям рекомендовано проводить 2 раза в неделю разгрузочные дни на грушах..', 2),
(7, '', 'Яблоко(красное) ', 20, ' Яблоки восстанавливают кровь. Они богаты железом, и регулярное употребление яблок повышает уровень гемоглобина, что полезно при малокровии и после большой кровопотери.', 2),
(8, '', 'Яблоко (сезонное)', 20, 'Яблоки восстанавливают кровь. Они богаты железом, и регулярное употребление яблок повышает уровень гемоглобина, что полезно при малокровии и после большой кровопотери.', 2),
(9, '', 'Яблоко Голден', 20, 'Яблоки восстанавливают кровь. Они богаты железом, и регулярное употребление яблок повышает уровень гемоглобина, что полезно при малокровии и после большой кровопотери.', 2),
(10, '', 'Яблоко (Семеренко) ', 20, 'Яблоки восстанавливают кровь. Они богаты железом, и регулярное употребление яблок повышает уровень гемоглобина, что полезно при малокровии и после большой кровопотери.', 2),
(11, '', 'Яблоко (Глостер) ', 20, 'Яблоки восстанавливают кровь. Они богаты железом, и регулярное употребление яблок повышает уровень гемоглобина, что полезно при малокровии и после большой кровопотери.', 2),
(12, '', 'Яблоко (Экстра)', 1, 'В яблоке главным образом ценится присутствие железа и витамина С, но плод содержит: бета-каротин, витамины А. ві, В2, В5, В6, В9, Н и РP. а также необходимые организму человека минеральные вещества: калий, кальций, магний, никель, молибден, фосфор и натрий.', 2),
(13, '', 'Яблоко Моди ', 1, 'Яблоки восстанавливают кровь. Они богаты железом, и регулярное употребление яблок повышает уровень гемоглобина, что полезно при малокровии и после большой кровопотери.', 2),
(14, '', 'Яблоко (Зеленое) ', 1, 'Яблоки восстанавливают кровь. Они богаты железом, и регулярное употребление яблок повышает уровень гемоглобина, что полезно при малокровии и после большой кровопотери.', 2),
(15, '', 'Яблоко (Крис пинк)', 20, 'Яблоки восстанавливают кровь. Они богаты железом, и регулярное употребление яблок повышает уровень гемоглобина, что полезно при малокровии и после большой кровопотери.', 2),
(16, '', 'Яблоко Пинк Леди ', 1, 'Плоды с кремовой сочной мякотью, вкус кисло-сладкий с приятным. нотками ванили и лесных ягод. Они содержат 96% углеводов по 2% белков и жиров. В их состав входят калий, кальций фосфор, железо, йод, витамины А, В, С. Калорийность 55 ккал в 100 граммах мякоти.', 2),
(17, '', 'Яблоки МИКС (Фас.)', 22, 'Яблоки – замечательный̆ пищевой̆ продукт, они полезны практически всем - и здоровым людям, и тем, кто страдает различными заболеваниями. Яблоко на 80% состоит из воды, но остальные 20% - это настоящий̆ кладезь полезных веществ', 2),
(18, '', 'Яблоки Голден (Фас.) ', 20, 'Яблоки восстанавливают кровь. Они богаты железом, и регулярное употребление яблок повышает уровень гемоглобина, что полезно при малокровии и после большой кровопотери.', 2),
(19, '', 'Абрикос ', 9, 'Абрикос является источником калия, который важен для поддержания водного и кислотно-щелочного баланса. Также он полезен для работы сердечно-сосудистой системы.', 3),
(20, '', 'Персик ', 9, 'В персиках содержатся такие минералы как кальций, железо, магний, фосфор, калий, натрий, цинк, марганец, фтор и сален. Специалисты по аромотерапии утверждают, что аромат персиков способен действовать как антидепрессант.', 3),
(21, '', 'Персик (Плоские)', 7, 'В их состав входят: бета-каротин, витамины С, Е, К., Н и группа В (5 витаминов); макроэлементы-калий, фосфор, натрий, кальций, магний, сера и хлор; микроэлементы- кремний, железо, цинк, медь, хром, фтор, марганец. йод.', 3),
(22, '', 'Авакадо', 1, 'Отличное средство для очищения кишечника, желчегонное и мочегонное средство. Сливы содержат большое количество витамина А, С, В, РР, микроэлементов (калий, магний, железо).', 3),
(23, '', 'Слива (Крупная)', 1, 'Отличное средство для очищения кишечника, желчегонное и мочегонное средство. Сливы содержат большое количество витамина А, С, В, Р., микроэлементов (калий, магний, железо)', 3),
(24, '', 'Слива (Желтая) ', 1, 'Мякоть сливы по составу богаче, чем яблоки или груши. В ней высоко содержание цинка, меди, кальция, натрия, йода, фосфора, железа, калия, пектинов, витаминов РР, С, Е, бета-каротина и витаминов группы В.', 3),
(25, '', 'Нектарин ', 3, 'Фрукт содержит бета-каротин, витамины группы В, А, С, Н и РР, а также необходимые минеральные вещества: калий, кальций, железо, сера, пектин, природные сахара, пищевые волокна, которые мягко очищают организм от ненужных шлаков и токсинов.', 3),
(26, '', 'Арбуз', 9, 'Арбуз почти на 90% состоит из воды, поэтому он так хорошо утоляет жажду. В мякоти практически нет белков и жиров, но много углеводов, которые быстро расщепляются и дают энергию.', 4),
(27, '', 'Дыня (Колхозница) ', 11, 'Благодаря большому содержанию воды в 160 г дыни содержится всего 55 калорий, способен обеспечить суточной потребностью в витамине А', 4),
(28, '', 'Дыня (Эфиопка) ', 1, 'Дыня содержит 25-29 ккал и может использоваться в диетическом питании. В составе плода имеется практически полный набор витаминов и все основные микроэлементы: медь, железо, фосфор и другие.', 4),
(29, '', 'Дыня (Гуляби) ', 23, ' Плоды содержат практически все известные витамины, минералы и микроэлементы, необходимые для полноценного функционирования организма человека.', 4),
(30, '', 'Папая люкс ', 10, 'Папайя богата витаминами А и С. В одном свежем плоде средних размеров содержится 3 суточных нормы витамина С и около 60% суточной нормы витамина А. Кроме того, в папайе присутствуют витамины группы В, кальций, калий, железо, магний, фосфор.', 4);

-- --------------------------------------------------------

--
-- Структура таблицы `type`
--

CREATE TABLE `type` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `type`
--

INSERT INTO `type` (`id`, `name`) VALUES
(2, 'семечковые'),
(3, 'косточковые'),
(4, 'бахчевые'),
(5, 'цитрусовые'),
(6, 'тропические'),
(7, 'экзотика'),
(8, 'соленья'),
(9, 'фруктовые П/ф'),
(10, 'корнеплоды'),
(11, 'капустные'),
(12, 'луковые пряные'),
(13, 'тыквенные'),
(14, 'томатные'),
(15, 'бобовые'),
(16, 'зерновые'),
(17, 'грибы'),
(18, 'листовые'),
(19, 'овощные П/ф');

-- --------------------------------------------------------

--
-- Структура таблицы `vegetables`
--

CREATE TABLE `vegetables` (
  `id` int(11) NOT NULL,
  `img` text NOT NULL,
  `name` varchar(150) NOT NULL,
  `id_country` int(11) NOT NULL,
  `description` text NOT NULL,
  `id_type` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `fruit`
--
ALTER TABLE `fruit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_country` (`id_country`),
  ADD KEY `id_type` (`id_type`);

--
-- Индексы таблицы `type`
--
ALTER TABLE `type`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `vegetables`
--
ALTER TABLE `vegetables`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_country` (`id_country`),
  ADD KEY `id_type` (`id_type`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `country`
--
ALTER TABLE `country`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT для таблицы `fruit`
--
ALTER TABLE `fruit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT для таблицы `type`
--
ALTER TABLE `type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT для таблицы `vegetables`
--
ALTER TABLE `vegetables`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `fruit`
--
ALTER TABLE `fruit`
  ADD CONSTRAINT `fruit_ibfk_1` FOREIGN KEY (`id_country`) REFERENCES `country` (`id`),
  ADD CONSTRAINT `fruit_ibfk_2` FOREIGN KEY (`id_type`) REFERENCES `type` (`id`);

--
-- Ограничения внешнего ключа таблицы `vegetables`
--
ALTER TABLE `vegetables`
  ADD CONSTRAINT `vegetables_ibfk_1` FOREIGN KEY (`id_country`) REFERENCES `country` (`id`),
  ADD CONSTRAINT `vegetables_ibfk_2` FOREIGN KEY (`id_type`) REFERENCES `type` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
