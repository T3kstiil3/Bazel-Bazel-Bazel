load("//:rules.bzl", "merge_file", "compile_license")
load("@npm_bazel_typescript//:index.bzl", "ts_library")

package(default_visibility=["//visibility:public"])

compile_license(
    name = "subproject2_js",
    srcs = ["subproject2.ts"], 
    tsconfig = ":tsconfig.json",
)

merge_file(
    name = "subproject2",
    srcs = ["//subproject1", "subproject2_js"],
    output = "subproject2.out.js"
)
