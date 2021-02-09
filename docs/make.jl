using MedicalTransforms
using Documenter

makedocs(;
    modules=[MedicalTransforms],
    authors="Dale <djblack@uci.edu> and contributors",
    repo="https://github.com/Dale-Black/MedicalTransforms.jl/blob/{commit}{path}#L{line}",
    sitename="MedicalTransforms.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://Dale-Black.github.io/MedicalTransforms.jl",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/Dale-Black/MedicalTransforms.jl",
)
