-- Добавить отзыв с рейтингом 5 на жилье, находящиеся по адресу "11218, Friel Place, New York", от имени "George Clooney

INSERT INTO Reviews
SET Reviews.id = (
        SELECT COUNT(*)+1 FROM Reviews rev),
    reservation_id = (SELECT res.id FROM Reservations res
        JOIN Rooms r on res.room_id = r.id
        JOIN Users u ON res.user_id = u.id
        WHERE u.name = 'George Clooney' AND r.address = '11218, Friel Place, New York'),
    rating = '5';