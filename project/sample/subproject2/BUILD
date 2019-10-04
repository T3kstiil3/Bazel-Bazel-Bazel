load("//:rules.bzl", "merge_file")
load("@npm_bazel_typescript//:index.bzl", "ts_library")

package(default_visibility=["//visibility:public"])

ts_library(
    name = "typescript",
    srcs = glob(["*.ts"]),
    tsconfig = ":tsconfig.json",
)

merge_file(
    name = "subproject2",
    srcs = ["//subproject1:prod", "subproject2.ts"],
    output = "subproject2.out.js"
)
