using Plots
using Unitful
using LaTeXStrings
using DataFrames
using Unitful: N, mm, cm, m, inch, MPa

θ = LinRange(0, 2π, 100)
y = sin.(θ)

p = plot(θ, y, 
	title = L"sin(\theta)",
	xlabel = L"\theta",
	ylabel = L"Amplitude",
	xlim = [0, 2π],
	ylim = [-1, 1],
	legend = false
)

display(p)

F = [1000, 3200, -4000, 4300, -2750, 6630]N
r = [300mm, 400mm, 10inch, 15cm, 0.188m, 27cm] .|> mm

df = DataFrame(r=r, F=F)



