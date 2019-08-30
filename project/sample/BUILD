load(":rules.bzl", "convert_to_uppercase")

genrule(
  name = "copy_of_main",
  srcs = ["foo.txt"],
  outs = ["foo.copy.txt"],
  cmd = "cp $< $@",
)

convert_to_uppercase(
    name = "make_uppercase",
    input = "foo.copy.txt",
    output = "upper_foo.txt",
)
