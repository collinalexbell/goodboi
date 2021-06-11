$fn = 20;
mirror(v = [0, 0, 1])
{
  union()
  {
    translate(v = [-150, -100, 0])
    {
      union()
      {
        translate(v = [75.75, 0, 0])
        {
          difference()
          {
            difference()
            {
              cube(size = [148.5, 15, 15], center = true);
              translate(v = [0, 0, 5.5])
              {
                cube(size = [149.5, 3, 7], center = true);
              }
            }
            rotate(a = [-90, 0, 0], v = undef)
            {
              translate(v = [0, 0, 5.5])
              {
                cube(size = [149.5, 3, 7], center = true);
              }
            }
          }
        }
        translate(v = [0, 50.75, 0])
        {
          rotate(a = [90, 0, 90], v = undef)
          {
            difference()
            {
              difference()
              {
                cube(size = [98.5, 15, 15], center = true);
                translate(v = [0, 0, 5.5])
                {
                  cube(size = [99.5, 3, 7], center = true);
                }
              }
              rotate(a = [-90, 0, 0], v = undef)
              {
                translate(v = [0, 0, 5.5])
                {
                  cube(size = [99.5, 3, 7], center = true);
                }
              }
            }
          }
        }
        translate(v = [-2.95, -2.95, 0])
        {
          cube(size = [9.1, 9.1, 15], center = true);
        }
        translate(v = [0, 0, 10.75])
        {
          rotate(a = [0, 90, 0], v = undef)
          {
            difference()
            {
              difference()
              {
                cube(size = [18.5, 15, 15], center = true);
                translate(v = [0, 0, 5.5])
                {
                  cube(size = [19.5, 3, 7], center = true);
                }
              }
              rotate(a = [-90, 0, 0], v = undef)
              {
                translate(v = [0, 0, 5.5])
                {
                  cube(size = [19.5, 3, 7], center = true);
                }
              }
            }
          }
        }
      }
    }
    translate(v = [150, -100, 0])
    {
      rotate(a = [0, 0, 90], v = undef)
      {
        union()
        {
          translate(v = [50.75, 0, 0])
          {
            difference()
            {
              difference()
              {
                cube(size = [98.5, 15, 15], center = true);
                translate(v = [0, 0, 5.5])
                {
                  cube(size = [99.5, 3, 7], center = true);
                }
              }
              rotate(a = [-90, 0, 0], v = undef)
              {
                translate(v = [0, 0, 5.5])
                {
                  cube(size = [99.5, 3, 7], center = true);
                }
              }
            }
          }
          translate(v = [0, 75.75, 0])
          {
            rotate(a = [90, 0, 90], v = undef)
            {
              difference()
              {
                difference()
                {
                  cube(size = [148.5, 15, 15], center = true);
                  translate(v = [0, 0, 5.5])
                  {
                    cube(size = [149.5, 3, 7], center = true);
                  }
                }
                rotate(a = [-90, 0, 0], v = undef)
                {
                  translate(v = [0, 0, 5.5])
                  {
                    cube(size = [149.5, 3, 7], center = true);
                  }
                }
              }
            }
          }
          translate(v = [-2.95, -2.95, 0])
          {
            cube(size = [9.1, 9.1, 15], center = true);
          }
          translate(v = [0, 0, 10.75])
          {
            rotate(a = [0, 90, 0], v = undef)
            {
              difference()
              {
                difference()
                {
                  cube(size = [18.5, 15, 15], center = true);
                  translate(v = [0, 0, 5.5])
                  {
                    cube(size = [19.5, 3, 7], center = true);
                  }
                }
                rotate(a = [-90, 0, 0], v = undef)
                {
                  translate(v = [0, 0, 5.5])
                  {
                    cube(size = [19.5, 3, 7], center = true);
                  }
                }
              }
            }
          }
        }
      }
    }
    translate(v = [-150, 6, 0])
    {
      rotate(a = [0, 0, -90], v = undef)
      {
        union()
        {
          difference()
          {
            difference()
            {
              cube(size = [12, 15, 15], center = true);
              translate(v = [0, 0, 5.5])
              {
                cube(size = [13, 3, 7], center = true);
              }
            }
            rotate(a = [-90, 0, 0], v = undef)
            {
              translate(v = [0, 0, 5.5])
              {
                cube(size = [13, 3, 7], center = true);
              }
            }
          }
          translate(v = [-5, 0, -3])
          {
            rotate(a = [0, 130, 0], v = undef)
            {
              union()
              {
                rotate(a = [-90, 0, 0], v = undef)
                {
                  translate(v = [10.75, 0, 0])
                  {
                    difference()
                    {
                      difference()
                      {
                        cube(size = [18.5, 15, 15], center = true);
                        translate(v = [0, 0, 5.5])
                        {
                          cube(size = [19.5, 3, 7], center = true);
                        }
                      }
                      rotate(a = [-90, 0, 0], v = undef)
                      {
                        translate(v = [-5, 0, 5.5])
                        {
                          cube(size = [28.5, 3, 7], center = true);
                        }
                      }
                    }
                  }
                }
                rotate(a = [0, 90, 0], v = undef)
                {
                  translate(v = [0, 10.75, 0])
                  {
                    rotate(a = [0, 0, 90], v = undef)
                    {
                      difference()
                      {
                        cube(size = [18.5, 15, 15], center = true);
                        translate(v = [0, 0, 5.5])
                        {
                          cube(size = [19.5, 3, 7], center = true);
                        }
                      }
                    }
                  }
                }
                translate(v = [-2.95, -4.45, 0])
                {
                  cube(size = [9.1, 6.1, 15], center = true);
                }
              }
            }
          }
        }
      }
    }
    translate(v = [150, 6, 0])
    {
      mirror(v = [1, 0, 0])
      {
        rotate(a = [0, 0, -90], v = undef)
        {
          union()
          {
            difference()
            {
              difference()
              {
                cube(size = [12, 15, 15], center = true);
                translate(v = [0, 0, 5.5])
                {
                  cube(size = [13, 3, 7], center = true);
                }
              }
              rotate(a = [-90, 0, 0], v = undef)
              {
                translate(v = [0, 0, 5.5])
                {
                  cube(size = [13, 3, 7], center = true);
                }
              }
            }
            translate(v = [-5, 0, -3])
            {
              rotate(a = [0, 130, 0], v = undef)
              {
                union()
                {
                  rotate(a = [-90, 0, 0], v = undef)
                  {
                    translate(v = [10.75, 0, 0])
                    {
                      difference()
                      {
                        difference()
                        {
                          cube(size = [18.5, 15, 15], center = true);
                          translate(v = [0, 0, 5.5])
                          {
                            cube(size = [19.5, 3, 7], center = true);
                          }
                        }
                        rotate(a = [-90, 0, 0], v = undef)
                        {
                          translate(v = [-5, 0, 5.5])
                          {
                            cube(size = [28.5, 3, 7], center = true);
                          }
                        }
                      }
                    }
                  }
                  rotate(a = [0, 90, 0], v = undef)
                  {
                    translate(v = [0, 10.75, 0])
                    {
                      rotate(a = [0, 0, 90], v = undef)
                      {
                        difference()
                        {
                          cube(size = [18.5, 15, 15], center = true);
                          translate(v = [0, 0, 5.5])
                          {
                            cube(size = [19.5, 3, 7], center = true);
                          }
                        }
                      }
                    }
                  }
                  translate(v = [-2.95, -4.45, 0])
                  {
                    cube(size = [9.1, 6.1, 15], center = true);
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}
