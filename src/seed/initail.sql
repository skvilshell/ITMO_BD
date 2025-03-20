-- Добавление пользователей
INSERT INTO "User" (id, email, f_name, s_name, date_created) VALUES
  ('user1', 'student@example.com', 'Иван', 'Иванов', NOW()),
  ('user2', 'teacher@example.com', 'Петр', 'Петров', NOW());
-- Добавление учителей
INSERT INTO "Teacher" (id, user_id) VALUES
  ('teacher1', 'user2');

-- Добавление курсов
INSERT INTO "Course" (id, name, description, date_created, teacher_id) VALUES
  ('course1', 'Основы программирования', 'Курс для начинающих', NOW(), 'teacher1');
-- Добавление студентов
INSERT INTO "Student" (id, user_id, courseId) VALUES
  ('student1', 'user1', 'course1');

-- Добавление модулей
INSERT INTO "Module" (id, name, description, serial, "courseId") VALUES
  ('module1', 'Введение', 'Основы программирования', 1, 'course1');

-- Добавление уроков
INSERT INTO "Lesson" (id, name, description, serial, content, "moduleId") VALUES
  ('lesson1', 'Первый урок', 'Что такое переменные?', 1, '{}', 'module1');

-- Добавление тестов
INSERT INTO "Test" (id, name, description, date, "moduleId") VALUES
  ('test1', 'Тест 1', 'Проверка базовых знаний', NOW(), 'module1');

-- Добавление вопросов
INSERT INTO "Question" (id, text, q_1, q_2, q_3, q_4, answer, "testId") VALUES
  ('question1', 'Что такое переменная?', 'Число', 'Контейнер для данных', 'Функция', 'Объект', 'Контейнер для данных', 'test1');

-- Добавление заданий
INSERT INTO "Task" (id, name, description, date, "lessonId", status) VALUES
  ('task1', 'Решить задачу', 'Написать программу вывода "Hello, World!"', NOW(), 'lesson1', false);

-- Привязка студента к заданию
INSERT INTO "_StudentToTask" ("A", "B") VALUES ('student1', 'task1');

-- Привязка студента к вопросу
INSERT INTO "_QuestionToStudent" ("A", "B") VALUES ('question1', 'student1');

-- Выдача сертификата
INSERT INTO "Certificate" (id, course_id, user_id, status, date) VALUES
  ('cert1', 'course1', 'user1', 'IN_PROGRESS', NOW());
