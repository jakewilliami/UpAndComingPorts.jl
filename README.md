<h1 align="center">UpAndComingPorts.jl</h1>

[![Build Status](https://github.com/jakewilliami/UpAndComingPorts.jl/actions/workflows/CI.yml/badge.svg?branch=master)](https://github.com/jakewilliami/UpAndComingPorts.jl/actions/workflows/CI.yml?query=branch%3Amaster)

SANS periodically publishes a list of 100 "up-and-coming ports" as part of their [public feeds](https://isc.sans.edu/xml.html).

Idea by [Finn Sargisson](https://github.com/sarrgi).

## Quick Start

```julia-repl
julia> import Pkg; Pkg.add(url="https://github.com/jakewilliami/UpAndComingPorts.jl")

julia> using UpAndComingPorts

julia> up_and_coming_ports()
100-element Vector{UInt16}:
 0x96af
 0x04a7
      ⋮
```
