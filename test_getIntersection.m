%Raytracing concepts demo
%Victor Frenkel

Xcaster = 1:200;
Ycaster = 1:200;
imgOut = zeros(Xcaster(2), Ycaster(2));

s_dist = input("Enter distance of sphere from camera (recommend testing -100, -40, and 100 to compare to correct images provided in folder): ");


for X = Xcaster
	for Y = Ycaster
		Xpix = X - size(Xcaster)(2)/2;
		Ypix = Y - size(Ycaster)(2)/2;
		
		[h n] = getIntersection([Xpix Ypix 0], [0 0 1], [0 0 s_dist], 50);
		if isnan(h)	%normal must also be null if this is true
			imgOut(X, Y) = 0;
		else
			imgOut(X, Y) = 255; %to test getIntersection, just use two colors (found it or not),
		end				    %in real raytracer, we would replace 0 and 255 with a function that
						    %calculates the emitted light/reflection/etc contributions.
	end
end

imagesc(imgOut);
set(gca,'DataAspectRatio',[1 1 1]); %correct aspect ratio

printf("colormap is not important, just see that the shape is there and its the same size as the correct image.")
