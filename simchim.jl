#!/Applications/Julia-0.5.app/Contents/Resources/julia/bin/jul‌​ia
using ArgParse

# parse options on command line when started
function parse_command_line()
    settings = ArgParseSettings(prog="simchim",
        version="0.0.1",
        add_version = true)
    @add_arg_table settings begin
        "--sam", "-s"
        nargs = '+'
        help = "samfile"
        arg_type = String
        "--bam", "-b"
        arg_type = String
        "--gff", "-g"
        nargs = '+'     # eats up as many arguments as found (at least 1)
        help = "gfffile"
        arg_type = String
        "--out", "-o"
        help = "outfile"
    end
    return parse_args(settings)
end