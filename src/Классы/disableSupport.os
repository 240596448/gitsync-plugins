
#Использовать logos

Перем ВерсияПлагина;
Перем Лог;
Перем КомандыПлагина;
Перем Описание;
Перем Обработчик;

#Область Интерфейс_плагина

// Возвращает версию плагина
//
//  Возвращаемое значение:
//   Строка - текущая версия плагина
//
Функция Версия() Экспорт
	Возврат "1.2.0";
КонецФункции

// Возвращает приоритет выполнения плагина
//
//  Возвращаемое значение:
//   Число - приоритет выполнения плагина
//
Функция Приоритет() Экспорт
	Возврат 0;
КонецФункции

// Возвращает описание плагина
//
//  Возвращаемое значение:
//   Строка - описание функциональности плагина
//
Функция Описание() Экспорт
	Возврат "Плагин снимает конфигурацию с поддержки перед выгрузкой в исходники";
КонецФункции

// Возвращает подробную справку к плагину 
//
//  Возвращаемое значение:
//   Строка - подробная справка для плагина
//
Функция Справка() Экспорт
	Возврат "Справка плагина";
КонецФункции

// Возвращает имя плагина
//
//  Возвращаемое значение:
//   Строка - имя плагина при подключении
//
Функция Имя() Экспорт
	Возврат "disable-support";
КонецФункции 

// Возвращает имя лога плагина
//
//  Возвращаемое значение:
//   Строка - имя лога плагина
//
Функция ИмяЛога() Экспорт
	Возврат "oscript.lib.gitsync.plugins.disable-support";
КонецФункции

#КонецОбласти

Процедура ПриАктивизации(СтандартныйОбработчик) Экспорт

	Обработчик = СтандартныйОбработчик;

КонецПроцедуры

Процедура ПередВыгрузкойКонфигурациюВИсходники(Конфигуратор,
												КаталогРабочейКопии,
												КаталогВыгрузки,
												ПутьКХранилищу,
												НомерВерсииФормат) Экспорт

	Конфигуратор.СнятьКонфигурациюСПоддержки(Истина);

КонецПроцедуры

Процедура Инициализация()

	ВерсияПлагина = "1.2.0";
	Лог = Логирование.ПолучитьЛог(ИмяЛога());

КонецПроцедуры

Инициализация();
