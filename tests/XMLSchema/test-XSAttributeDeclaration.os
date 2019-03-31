Перем ЮнитТест;

#Область ОбработчикиСобытийМодуля

Функция Версия() Экспорт
	Возврат "1.0";
КонецФункции

Функция ПолучитьСписокТестов(МенеджерТестирования) Экспорт
	
	ЮнитТест = МенеджерТестирования;

	СписокТестов = Новый Массив;
	СписокТестов.Добавить("ТестКонструктор");
	СписокТестов.Добавить("TestConstructor");
	СписокТестов.Добавить("ТестИмя");
	СписокТестов.Добавить("ТестИмяБазовогоТипа");

	Возврат СписокТестов;

КонецФункции

#КонецОбласти

#Область ОбработчикиТестирования

Процедура ТестКонструктор() Экспорт

	Атрибут = Новый ОбъявлениеАтрибутаXS;
	
	ЮнитТест.ПроверитьРавенство(ТипЗнч(Атрибут), Тип("ОбъявлениеАтрибутаXS"));
	ЮнитТест.ПроверитьРавенство(Атрибут.ТипКомпоненты, ТипКомпонентыXS.ОбъявлениеАтрибута);
	ЮнитТест.ПроверитьРавенство(Атрибут.Ограничение, ОграничениеЗначенияXS.ПоУмолчанию);

КонецПроцедуры

Procedure TestConstructor() Export

	Attribute = New XSAttributeDeclaration;

	ЮнитТест.ПроверитьРавенство(TypeOf(Attribute), Type("XSAttributeDeclaration"));
	ЮнитТест.ПроверитьРавенство(TypeDefinition.ComponentType, XSComponentType.AttributeDeclaration);

EndProcedure

Процедура ТестИмя() Экспорт

	Атрибут = Новый ОбъявлениеАтрибутаXS;
	Атрибут.Имя = "test";
	
	ЮнитТест.ПроверитьРавенство(Атрибут.Имя, "test");

КонецПроцедуры

Процедура ТестИмяБазовогоТипа() Экспорт

	Атрибут = Новый ОбъявлениеАтрибутаXS;
	ИмяТипа = Новый РасширенноеИмяXML("http://www.w3.org/2001/XMLSchema", "string");
	
	ОпределениеТипа.ИмяТипа = ИмяТипа;
	
	ЮнитТест.ПроверитьРавенство(Атрибут.ИмяТипа, ИмяТипа);

КонецПроцедуры

#КонецОбласти