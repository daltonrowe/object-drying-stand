$fn = 100;
union()
{
  difference()
  {
    difference()
    {
      translate(v = [0, 0, -5])
      {
        linear_extrude(height = 10, center = false, convexity = undef, twist = undef, slices = undef, scale = 1, $fn = 20)
        {
          polygon(points = [[-50, -100], [50, -100], [0, 100]], paths = undef, convexity = 1);
        }
      }
    }
    translate(v = [0, -5, 0])
    {
      scale(v = [1, 1, 2])
      {
        scale(v = 0.9)
        {
          difference()
          {
            translate(v = [0, 0, -5])
            {
              linear_extrude(height = 10, center = false, convexity = undef, twist = undef, slices = undef, scale = 1, $fn = 20)
              {
                polygon(points = [[-50, -100], [50, -100], [0, 100]], paths = undef, convexity = 1);
              }
            }
          }
        }
      }
    }
    translate(v = [0, 90, 0])
    {
      cube(size = [6, 30, 40], center = true);
    }
  }
  translate(v = [0, 78, 0])
  {
    cube(size = [6, 10, 10], center = true);
  }
}
