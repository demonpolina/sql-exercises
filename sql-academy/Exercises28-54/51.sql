-- Добавьте товар с именем "Cheese" и типом "food" в список товаров (Goods).

INSERT INTO Goods
SET good_id   = (
    SELECT COUNT(*) + 1
    FROM Goods AS gs
),
    good_name = 'Cheese',
    type  = (
        SELECT good_type_id
        FROM GoodTypes
        WHERE good_type_name = 'food'
    );