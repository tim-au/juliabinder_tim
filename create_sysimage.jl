using PackageCompiler
create_sysimage([:Pluto, :PlutoUI,
                 :Plots, :LaTeXStrings,
                 :DataFrames, :Unitful,
                 :LinearAlgebra];
                #precompile_execution_file = "warmup.jl",
                precompile_statements_file = "combined_trace.jl",
                #replace_default = true,
                sysimage_path="/home/jovyan/sysimage.so",
                cpu_target = PackageCompiler.default_app_cpu_target())
