function [x,y] = xySplit(data)
% [x,y] = xySplit(data)
% Oddziela atrybuty wejściowe od atrybutu wyjściowego (klasy).
%	data - macierz z danymi - poszczególne obserwacje w wierszach
%	x - dane wejściowe
%	y - klasa

	len = size(data,2);
	x = data(:,1:len-1);
	y = data(:,len);
end
	