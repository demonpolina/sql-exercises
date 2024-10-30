-- Создайте представление «Verified_Users» с полями id, name и email, которое будет показывает только тех пользователей, у которых подтвержден адрес электронной почты.

CREATE VIEW Verified_Users AS 
SELECT id, name, email FROM Users
WHERE email_verified_at IS NOT NULL;