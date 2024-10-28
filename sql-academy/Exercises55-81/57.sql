-- Перенести расписание всех занятий на 30 мин. вперед.

UPDATE Timepair
SET start_pair = ADDTIME(start_pair, '00:30:00'),
    end_pair   = ADDTIME(end_pair, '00:30:00');