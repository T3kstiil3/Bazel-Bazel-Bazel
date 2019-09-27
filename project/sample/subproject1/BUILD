genrule(
  name = "copy_of_main",
  visibility = ["//visibility:public"],
  srcs = ["foo.txt"],
  outs = ["foo.upper.txt"],
  cmd = "tr '[:lower:]' '[:upper:]' < \"$<\" > \"$@\"",
)