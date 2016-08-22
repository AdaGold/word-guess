require 'colorize'
require_relative 'word'
require_relative 'answer'

class Ascii
    attr_reader :r1, :r2, :r3, :r4, :r5, :r6, :r7, :r8, :r9, :r10,
     :r11, :r12, :r13, :r14, :r15, :r16, :r17, :r18, :r19, :r20,
     :r21, :r22, :r23, :r24, :r25, :r26, :max_wrong

    def initialize
      @r1 = "                               ___".colorize(:black)
      @r2 = "                              /   \\".colorize(:black)
      @r3 = "                             |  o  |".colorize(:black)
      @r4 = "                              \\   / ".colorize(:black)
      @r5 = "                       ________) (________".colorize(:black)
      @r6 = "                      |                   |".colorize(:black)
      @r7 = "                      '------.     .------'".colorize(:black)
      @r8 = "                              |   | ".colorize(:black)
      @r9 = "                              |   | ".colorize(:black)
      @r10 = "                              |   | ".colorize(:black)
      @r11 = "                              |   | ".colorize(:black)
      @r12 = "                   /\\         |   |         /\\ ".colorize(:black)
      @r13 = "                  /_ \\        /   \\        / _\\ ".colorize(:black)
      @r14 = "                    \\ '.    .'     '.    .' / ".colorize(:black)
      @r15 = "                     \\  '--'         '--'  / ".colorize(:black)
      @r16 = "                      '.                 .' ".colorize(:black)
      @r17 = "                        '._           _.' ".colorize(:black)
      @r18 = "                           `'-.   .-'` ".colorize(:black)
      @r19 = "                               \\ / ".colorize(:black)
      @r20 = "                                ` ".colorize(:black)
      @r21 = "~~~~ ~~ ~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~  ~~~~~~~ ~~~~~~~~~~~ ~~~".colorize(:blue)
      @r22 = "~     ~~   ~  ~     ~~~~~~~~~~~~~~~~~~~~~~~~~~     ~~     ~~ ~ ".colorize(:blue)
      @r23 = "~      ~~    ~~ ~~ ~~  ~~~~~~~~~~~~~ ~~~~  ~     ~~~    ~ ~~~  ~ ~ ".colorize(:blue)
      @r24 = "~  ~~     ~       ~      ~~~~~~  ~~ ~~~       ~~ ~ ~~  ~~ ~ ".colorize(:blue)
      @r25 = "~  ~      ~ ~      ~       ~~ ~~~~~~  ~      ~~  ~             ~~ ".colorize(:blue)
      @r26 = "  ~            ~        ~      ~      ~~   ~             ~ ".colorize(:blue)
      @max_wrong = max_wrong

        # @r1 = "(@)(@)(@)(@)(@)"
        # @r2 = "   ~~~~~~~~~   "
        # @r3 = "     ~~~~~     "
        # @r4 = "    |_____|    "
        # @r5 = "     |   |     "
        # @r6 = "     |___|     "
    end

    def wrong(max_wrong) # wrong guess
      case max_wrong
      when @max_wrong == 0
        puts @r1
        puts @r2
        puts @r3
        puts @r4
        puts @r5
        puts @r6
        puts @r7
        puts @r8
        puts @r9
        puts @r10
        puts @r11
        puts @r12
        puts @r13
        puts @r14
        puts @r15
        puts @r16
        puts @r17
        puts @r18
        puts @r19
        puts @r20
        puts @r21
        puts @r22
        puts @r23
        puts @r24
        puts @r25
        puts @r26
      when max_wrong == 1
        puts @r1
        puts @r2
        puts @r3
        puts @r4
        puts @r5
        puts @r6
        puts @r7
        puts @r8
        puts @r9
        puts @r10
        puts @r11
        puts @r12
        puts @r13
        puts @r14
        puts @r15
        puts @r16
        puts @r21
        puts @r22
        puts @r23
        puts @r24
        puts @r25
        puts @r26
      when max_wrong == 2
        puts @r1
        puts @r2
        puts @r3
        puts @r4
        puts @r5
        puts @r6
        puts @r7
        puts @r8
        puts @r9
        puts @r10
        puts @r11
        puts @r12
        puts @r21
        puts @r22
        puts @r23
        puts @r24
        puts @r25
        puts @r26
      when max_wrong == 3
        puts @r1
        puts @r2
        puts @r3
        puts @r4
        puts @r5
        puts @r6
        puts @r7
        puts @r8
        puts @r21
        puts @r22
        puts @r23
        puts @r24
        puts @r25
        puts @r26
      when max_wrong == 4
        puts @r1
        puts @r2
        puts @r3
        puts @r4
        puts @r21
        puts @r22
        puts @r23
        puts @r24
        puts @r25
        puts @r26
      when max_wrong == 5
        puts @r21
        puts @r22
        puts @r23
        puts @r24
        puts @r25
        puts @r26
        puts "Sorry, you lose."
      else
        puts "Whoa! No clue what happened!"
      end




        # puts @r1[0..-4] #delete the whole flower. not just the )
        # puts @r2
        # puts @r3
        # puts @r4
        # puts @r5
        # puts @r6
    end

end
