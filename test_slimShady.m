%Raytracing concepts demo
%Victor Frenkel
tic;

Xcaster = 1:200;
Ycaster = 1:200;
imgOut = zeros(Xcaster(2), Ycaster(2));

s_dist = input("Enter distance of sphere from camera: ");

lightPos = [-100 50 -5];

for X = Xcaster
	for Y = Ycaster
		Xpix = X - size(Xcaster)(2)/2;
		Ypix = Y - size(Ycaster)(2)/2;
		
		[h n] = getIntersection([Xpix Ypix 0], [0 0 1], [0 0 s_dist], 50);
		if isnan(h)	%normal must also be NaN if this is true
			imgOut(X, Y) = 0;
		else
			imgOut(X, Y) = slimShady(lightPos, h, n); %to test getIntersection, just use two colors (found it or not),
		end				    %in real raytracer, we would replace 0 and 255 with a function that
						    %calculates the emitted light/reflection/etc contributions.
	end
end

printf("Every pixel is a test of the slimShady function, if the sphere is correctly shaded, you will notice. You can move light vector around to be extra sure. Correct shading for this light position can be found in the provided folder, correct_slimShady");

imagesc(imgOut);
set(gca,'DataAspectRatio',[1 1 1]); %correct aspect ratio
colormap(bone()); %provide correct colormap

toc;