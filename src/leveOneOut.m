function out = leaveOneOut(dataSet, svmParams)
% out = leaveOneOut(dataSet, svmParams)
% Tworzenie i testowanie modelu metodą leave-one-out
%	dataSet - zbiór danych, który będzie wykorzystany
%	svmParams - parametry wykorzystywane podczas tworzenia klasyfikatora
%	out - wektor kolumnowy z wynikami klasyfikacji dla poszczególnych wierszy

	% TODO
	out(i) = buildSVM(trainSet,testSet,svmParams);
	% TODO

end
