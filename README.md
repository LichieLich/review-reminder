# Review Reminder

Сервис для оповещений, который будет напоминать пользователям о том, что пора бы уже взять задачу на ревью. 

## Требования

### Авторизация

Авторизация по паре логин/пароль. Для аккаунта можно привязать идентификаторы тех платформ, где будет происходит работа (например, Gitlab).
 Должна быть роль администратора, управляющая всеми разделами, и пользователя. Пользователь может просматривать общую сводку и статистику, но не может управлять чужими проектами. Пользователь может настраивать свой аккаунт.

### Функционал

В системе можно создавать проекты. Каждый проект имеет связь с проектом в платформе, где ведётся разработка. При создании проекта необходимо указать его адрес и токен авториции для работы с ним. 
Система показывает сводку по текущему состоянию ревью (то есть все текущие открытие МР и их ответственных). Система позволяет отправлять пользователям уведомления по различным канлам в зависимости от настроек этих уведомлений. 
Уведомления направлены на то, чтобы напоминать человеку о том, что у него есть задачи по проведению ревью.

Система должна учитывать возможность различных процессов ревью: одноэтапный, двухэтапный с различными конфигурациями. Например, когда есть наборы людей, имеющих право проводить ревью 1 и 2 этапа. 

Система должна собирать статистику по ревью: кто сколько и кого ревьюил.

Система должна уметь назначить ревьюера, исходя из уровня его загруженности по его статистике.

### Поддерживаемые системы

Gitlab

TBD...

### Каналы оповещений

Telegram

Email

### Описание экранных форм

#### Главный экран

На главном экране отображается текущая ситуация с открытми МР. Показан список, ответственные, сколько уже открыт. 

#### Создание и управление проектом

Экран создания/редактирования проекта, на котором необходимо заполнить информацию по проекту, включая его адрес и токен доступа. Не должно быть проектов с одинакоым адресом.

#### Управление профилем

Форма управления профилем пользователя, где можно настроить уведомления по каждому проекту, привязать свои аккаунты из платформ разработки, указать свои каналы связи.

#### Экран статистики

Форма, на которой можно посмотреть статистику по проекту и по каждому пользователю индивидуально. Статистика пользователя заключается в его количестве задач, которые он ревьюил, которые он отправлял на ревью. Среднее количество
замечаний, частота выбираемых ревьюеров, частота тех, кто назначал ревью на этого пользователя.