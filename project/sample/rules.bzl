def _convert_to_uppercase_impl(ctx):
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

convert_to_uppercase = rule(
    implementation = _convert_to_uppercase_impl,
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
