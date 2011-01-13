function val = calcMse(yExpected,y)
	dY = yExpected-y;
	val = mean(dY.*dY);
end
