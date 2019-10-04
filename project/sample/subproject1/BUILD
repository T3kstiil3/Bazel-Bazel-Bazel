load("//:rules.bzl", "compile_license")

package(default_visibility=["//visibility:public"])

compile_license(
    name = "subproject1",
    srcs = ["subproject1.ts"], 
    tsconfig = ":tsconfig.json",
)
