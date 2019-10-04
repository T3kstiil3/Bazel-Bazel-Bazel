load("@npm_bazel_typescript//:index.bzl", "ts_library")

def compile_license(name, **kwargs):
    ts_library(
        name = "_%s_compile" % name,
        **kwargs
    )

    native.filegroup(
        name = name,
        srcs = ["_%s_compile" % name],
        output_group = "es5_sources",
    )

    native.genrule(
        name = "%s_with_license" % name,
        visibility = ["//visibility:public"],
        srcs = [name],
        outs = ["%s.out.js" % name],
        cmd = "echo '//@EmmanuelDemey and @AurelienLoyer - 2019' | cat - \"$<\" > \"$@\"",
    )

def _merge_file_impl(ctx):
    # Both the input and output files are specified by the BUILD file.
    in_file = ctx.files.srcs
    out_file = ctx.outputs.output

    args = ctx.files.srcs 
    ctx.actions.run_shell(
        inputs = in_file,
        outputs = [out_file],
        command = "cat %s %s > %s" % (in_file[0].path, in_file[1].path,  out_file.path)
    )
    # No need to return anything telling Bazel to build `out_file` when
    # building this target -- It's implied because the output is declared
    # as an attribute rather than with `declare_file()`.

merge_file = rule(
    implementation = _merge_file_impl,
    attrs = {
        "srcs": attr.label_list(
            allow_files = True,
            mandatory = True,
            doc = "The file to transform",
        ),
        "output": attr.output(doc = "The generated file"),
    },
    doc = "Transforms a text file by changing its characters to uppercase.",
)
