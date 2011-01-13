function mseValue = redWineTest()
	[redData,whiteData] = loadWines();
	params = struct();
	out = leaveOneOut(redData,params);
	[x,y] = xySplit(redData);
	mseValue = calcMse(out,y);
end
