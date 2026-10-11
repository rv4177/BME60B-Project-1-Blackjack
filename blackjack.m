weight = [60, 50, 55, 80, 90];
height = [1.7, 1.7, 1.6, 1.8, 1.7];

function index = BMI2(weight, height)

  index = weight./(height.*height);

end

index = BMI2(weight, height);
