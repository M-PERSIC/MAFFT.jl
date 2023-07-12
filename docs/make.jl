using MAFFT
using Documenter

DocMeta.setdocmeta!(MAFFT, :DocTestSetup, :(using MAFFT); recursive=true)

makedocs(;
    modules=[MAFFT],
    authors="Michael Persico <michael.a.persico@gmail.com> and contributors",
    repo="https://github.com/M-PERSIC/MAFFT.jl/blob/{commit}{path}#{line}",
    sitename="MAFFT.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://M-PERSIC.github.io/MAFFT.jl",
        edit_link="main",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="https://github.com/M-PERSIC/MAFFT.git",
    devbranch="main",
    push_preview = true,
    deps = nothing,
    make = nothing
)
