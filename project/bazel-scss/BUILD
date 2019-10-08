package(default_visibility = ["//visibility:public"])

# https://github.com/bazelbuild/rules_sass
load("@io_bazel_rules_sass//:defs.bzl", "sass_binary")

# Import our shared colors and fonts so we can generate a CSS file.
sass_binary(
    name = "build_css",
    src = "main.scss",
    deps = [
        "//shared",
    ],
)

sass_binary(
    name = "build_css_custom_params",
    src = "main.scss",
    output_dir = "custom_params",
    output_style = "expanded",
    sourcemap = False,
    deps = [
        "//shared",
    ],
)
