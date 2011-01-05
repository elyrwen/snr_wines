function [redDataSet, whiteDataSet] = loadWines()
% [redDataSet, whiteDataSet] = loadWines()
% Funkcja wczytująca zbiór danych i przekształcająca go do odpowiedniej postaci:
% - poszczególne elementy zbioru w wierszach
% - ostatnia kolumna z atrybutem klasy
% - tylko dwie klasy {0,1}
% - skalowanie poszczególnych atrybutów do przedziału [-0.5,0.5]

	redDataSet = prepareDataSet('data/winequality-red.csv');
	whiteDataSet = prepareDataSet('data/winequality-red.csv');
end

function dataSet = prepareDataSet(dataPath)
	dataSet = readFile(dataPath);
	dataSet = prepareClassColumn(dataSet);
	dataSet = scale(dataSet);
end

function data = readFile(filePath)
	data = dlmread(filePath,';');	
end

function dataSet = prepareClassColumn(dataSet)
	idx = size(dataSet,2);
	middleValue = median(unique(dataSet(:,idx)));
	
	firstClassIndices = dataSet(:,idx) <= middleValue;
	secondClassIndices = dataSet(:,idx) > middleValue;
	
	dataSet(firstClassIndices,idx) = 0;
	dataSet(secondClassIndices,idx) = 1;
end

function dataSet = scale(dataSet)
	for i=1:size(dataSet,2)-1
		col = dataSet(:,i);
		col = col-min(col);
		
		if max(col) > 0
			col = col / max(col);
		end
		col = col - 0.5;
		
		dataSet(:,i) = col;
	end
end
