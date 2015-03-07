#include <ruby.h>

static VALUE fast_loop(VALUE self)
{
  long long int i;

  double mult=0;

  for (i = 0; i < 500000; ++i)
  {
    mult += 4*4;
  }

  return self;
}

void Init_cgem()
{
  VALUE mCGem = rb_define_module("CGem");
  rb_define_singleton_method(mCGem, "fast_loop", fast_loop, 0);
}