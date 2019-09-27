load("//:rules.bzl", "convert_to_uppercase")

convert_to_uppercase(
    name = "make_uppercase",
    srcs = ["file1.txt", "//subproject1:copy_of_main"],
    output = "final_foo.txt",
)
