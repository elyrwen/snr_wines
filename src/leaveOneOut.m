function out = leaveOneOut(dataSet, svmParams)
% out = leaveOneOut(dataSet, svmParams)
% Tworzenie i testowanie modelu metodą leave-one-out
%	dataSet - zbiór danych, który będzie wykorzystany
%	svmParams - parametry wykorzystywane podczas tworzenia klasyfikatora
%	out - wektor kolumnowy z wynikami klasyfikacji dla poszczególnych wierszy


	len = size(dataSet,1);
	out = zeros(len,1);
	for rowNum = 1:len
		fprintf('Row %d\n',rowNum);
		mask = zeros(len,1);
		mask(rowNum) = 1;
		
		trainSet = dataSet (mask==0,:);
		testSet = dataSet(mask==1,:);
		
		out(rowNum) = buildSVM(trainSet,testSet,svmParams);
		
	end
end
