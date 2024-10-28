-- Добавьте в список типов товаров (GoodTypes) новый тип "auto".

INSERT INTO GoodTypes
SET good_type_id = (
    SELECT COUNT(*)+1 FROM GoodTypes AS gt),
    good_type_name = 'auto';