using Documenter
using NumericalMethods

DocMeta.setdocmeta!(NumericalMethods, :DocTestSetup, :(using NumericalMethods); recursive=false)

makedocs(;
    modules=[NumericalMethods],
    authors="Joby M. Anthony III",
    repo="https://github.com/jmanthony3/NumericalMethods.jl/blob/{commit}{path}#{line}",
    sitename="NumericalMethods.jl",
    doctest=false,
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://jmanthony3.github.io/NumericalMethods.jl",
        edit_link="master",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
        "Single-Variable Iteration" => "singlevariableiteration.md",
        "Initial-Value Problem" => "initialvalueproblem.md",
        "Numerical Differentiation" => "numericaldifferentiation.md",
        "Numerical Integration" => "numericalintegration.md",
        "Multi-Variable Iteration" => "multivariableiteration.md"
    ],
)

deploydocs(;
    repo="github.com/jmanthony3/NumericalMethods.jl",
    devbranch="master",
)
