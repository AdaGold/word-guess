class Ascii
    attr_reader :r1, :r2, :r3, :r4, :r5, :r6

    def intialize
        @r1 = "(@)(@)(@)(@)(@)"
        @r2 = "  ,\,\,|,/,/,  "
        @r3 = "     _\|/_     "
        @r4 = "    |_____|    "
        @r5 = "     |   |     "
        @r6 = "     |___|     "
    end

    def wrong(input) # wrong guess
        puts @r1.delete[-1]
        puts @r2
        puts @r3
        puts @r4
        puts @r5
        puts @r6
    end

end
