module UpAndComingPorts

using DelimitedFiles
using Downloads

export up_and_coming_ports

"""
    up_and_coming_ports() -> Vector{UInt16}

SANS periodically releases the top 100 up and coming ports, whatever that means.  The present package exposes this single function that pulls these data from SANS.  The resulting vector is sorted in descending order of trendiness.
"""
function up_and_coming_ports()
    f = Downloads.download("https://isc.sans.edu/trendascii.html")
    data = readdlm(f, Int, comments=true)

    # First column is the up and coming ports
    ports = data[axes(data, 1)]
    return UInt16.(ports)
end

end
