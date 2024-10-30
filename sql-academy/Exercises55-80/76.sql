-- Вывести имена всех пользователей сервиса бронирования жилья, а также два признака: является ли пользователь собственником какого-либо жилья (is_owner) и является ли пользователь арендатором (is_tenant). В случае наличия у пользователя признака необходимо вывести в соответствующее поле 1, иначе 0.
-- Поля в результирующей таблице:
-- name
-- is_owner
-- is_tenant

SELECT name,
    IF (id IN (SELECT owner_id FROM Rooms), 1, 0) AS is_owner,
    IF(id IN (SELECT user_id FROM Reservations),1, 0) AS is_tenant
FROM Users