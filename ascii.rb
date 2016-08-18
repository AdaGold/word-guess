class Ascii
    attr_reader :r1, :r2, :r3, :r4, :r5, :r6

    def initialize
        @r1 = "(@)(@)(@)(@)(@)"
        @r2 = "  ,\,\,|,/,/,  "
        @r3 = "     _\|/_     "
        @r4 = "    |_____|    "
        @r5 = "     |   |     "
        @r6 = "     |___|     "
    end

    def wrong(input) # wrong guess
        puts @r1.delete[-3..-1] #delete the whole flower. not just the )
        puts @r2
        puts @r3
        puts @r4
        puts @r5
        puts @r6
    end

end
