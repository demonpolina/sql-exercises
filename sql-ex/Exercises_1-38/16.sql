-- Задание: 16 (Serge I: 2003-02-03)
-- Найдите пары моделей PC, имеющих одинаковые скорость и RAM. В результате каждая пара указывается только один раз, т.е. (i,j), но не (j,i), Порядок вывода: модель с большим номером, модель с меньшим номером, скорость и RAM.

SELECT DISTINCT pc_1.model, pc_2.model, pc_2.speed, pc_2.ram
FROM PC pc_1, PC pc_2
WHERE (pc_1.model > pc_2.model) AND
	  (pc_1.speed = pc_2.speed) AND
	  (pc_1.ram = pc_2.ram)
