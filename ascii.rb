class Ascii
    attr_reader :r1, :r2, :r3, :r4, :r5, :r6

    def initialize
        @r1 = "(@)(@)(@)(@)(@)"
        @r2 = "   ~~~~~~~~~   "
        @r3 = "     ~~~~~     "
        @r4 = "    |_____|    "
        @r5 = "     |   |     "
        @r6 = "     |___|     "
    end

    def wrong # wrong guess
        puts @r1[0..-4] #delete the whole flower. not just the )
        puts @r2
        puts @r3
        puts @r4
        puts @r5
        puts @r6
    end

end
