function bestParams = rbfKernelGridSearch()
% Wyszukiwanie najlepszych parametrów jądra RBF zgodnie z metodą opisaną 
% http://www.csie.ntu.edu.tw/~cjlin/papers/guide/guide.pdf

	dataSet = loadWines();

	% TODO
	out = leaveOneOut(dataSet,currentParams);
	% TODO

end
