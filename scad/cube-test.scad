$fn = 20;
union()
{
  translate(v = [11.5, 0, 0])
  {
    difference()
    {
      difference()
      {
        cube(size = [20, 15, 15], center = true);
        translate(v = [0, 0, 5.5])
        {
          cube(size = [21, 3, 7], center = true);
        }
      }
      rotate(a = [-90, 0, 0], v = undef)
      {
        translate(v = [0, 0, 5.5])
        {
          cube(size = [21, 3, 7], center = true);
        }
      }
    }
  }
  translate(v = [0, 11.5, 0])
  {
    rotate(a = [90, 0, 90], v = undef)
    {
      difference()
      {
        difference()
        {
          cube(size = [20, 15, 15], center = true);
          translate(v = [0, 0, 5.5])
          {
            cube(size = [21, 3, 7], center = true);
          }
        }
        rotate(a = [-90, 0, 0], v = undef)
        {
          translate(v = [0, 0, 5.5])
          {
            cube(size = [21, 3, 7], center = true);
          }
        }
      }
    }
  }
  translate(v = [-2.95, -2.95, 0])
  {
    cube(size = [9.1, 9.1, 15], center = true);
  }
  translate(v = [0, 0, 11.5])
  {
    rotate(a = [0, 90, 0], v = undef)
    {
      difference()
      {
        difference()
        {
          cube(size = [20, 15, 15], center = true);
          translate(v = [0, 0, 5.5])
          {
            cube(size = [21, 3, 7], center = true);
          }
        }
        rotate(a = [-90, 0, 0], v = undef)
        {
          translate(v = [0, 0, 5.5])
          {
            cube(size = [21, 3, 7], center = true);
          }
        }
      }
    }
  }
}
