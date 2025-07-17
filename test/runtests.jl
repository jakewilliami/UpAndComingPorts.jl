using UpAndComingPorts
using Test

@testset "UpAndComingPorts.jl" begin
    A = up_and_coming_ports()
    @test length(A) == 100
    @test eltype(A) == UInt16  # RFC 793
end
