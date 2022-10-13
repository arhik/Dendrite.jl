using Dendrite
using Documenter

DocMeta.setdocmeta!(Dendrite, :DocTestSetup, :(using Dendrite); recursive=true)

makedocs(;
    modules=[Dendrite],
    authors="arhik <arhik23@gmail.com> and contributors",
    repo="https://github.com/arhik/Dendrite.jl/blob/{commit}{path}#{line}",
    sitename="Dendrite.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://arhik.github.io/Dendrite.jl",
        edit_link="main",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/arhik/Dendrite.jl",
    devbranch="main",
)
