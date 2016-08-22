require 'colorize'
require_relative 'word'
require_relative 'answer'

class Ascii
    attr_reader :anchor, :max_wrong

    def initialize
      @anchor = {
      r1: "                               ___".colorize(:black),
      r2: "                              /   \\".colorize(:black),
      r3: "                             |  o  |".colorize(:black),
      r4: "                              \\   / ".colorize(:black),
      r5: "                       ________) (________".colorize(:black),
      r6: "                      |                   |".colorize(:black),
      r7: "                      '------.     .------'".colorize(:black),
      r8: "                              |   | ".colorize(:black),
      r9: "                              |   | ".colorize(:black),
      r10: "                              |   | ".colorize(:black),
      r11: "                              |   | ".colorize(:black),
      r12: "                   /\\         |   |         /\\ ".colorize(:black),
      r13: "                  /_ \\        /   \\        / _\\ ".colorize(:black),
      r14: "                    \\ '.    .'     '.    .' / ".colorize(:black),
      r15: "                     \\  '--'         '--'  / ".colorize(:black),
      r16: "                      '.                 .' ".colorize(:black),
      r17: "                        '._           _.' ".colorize(:black),
      r18: "                           `'-.   .-'` ".colorize(:black),
      r19: "                               \\ / ".colorize(:black),
      r20: "                                ` ".colorize(:black),
      r21: "~~~~ ~~ ~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~  ~~~~~~~ ~~~~~~~~~~~ ~~~".colorize(:blue),
      r22: "~     ~~   ~  ~     ~~~~~~~~~~~~~~~~~~~~~~~~~~     ~~     ~~ ~ ".colorize(:blue),
      r23: "~      ~~    ~~ ~~ ~~  ~~~~~~~~~~~~~ ~~~~  ~     ~~~    ~ ~~~  ~ ~ ".colorize(:blue),
      r24: "~  ~~     ~       ~      ~~~~~~  ~~ ~~~       ~~ ~ ~~  ~~ ~ ".colorize(:blue),
      r25: "~  ~      ~ ~      ~       ~~ ~~~~~~  ~      ~~  ~             ~~ ".colorize(:blue),
      r26: "  ~            ~        ~      ~      ~~   ~             ~ ".colorize(:blue)
      }
      @max_wrong = max_wrong

    end

    def wrong(max_wrong) # wrong guess
      case max_wrong
      when 0
        puts @anchor

      when 1
        @anchor = {
          r1: "                               ___".colorize(:black),
          r2: "                              /   \\".colorize(:black),
          r3: "                             |  o  |".colorize(:black),
          r4: "                              \\   / ".colorize(:black),
          r5: "                       ________) (________".colorize(:black),
          r6: "                      |                   |".colorize(:black),
          r7: "                      '------.     .------'".colorize(:black),
          r8: "                              |   | ".colorize(:black),
          r9: "                              |   | ".colorize(:black),
          r10: "                              |   | ".colorize(:black),
          r11: "                              |   | ".colorize(:black),
          r12: "                   /\\         |   |         /\\ ".colorize(:black),
          r13: "                  /_ \\        /   \\        / _\\ ".colorize(:black),
          r14: "                    \\ '.    .'     '.    .' / ".colorize(:black),
          r15: "                     \\  '--'         '--'  / ".colorize(:black),
          r16: "                      '.                 .' ".colorize(:black),
          r21: "~~~~ ~~ ~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~  ~~~~~~~ ~~~~~~~~~~~ ~~~".colorize(:blue),
          r22: "~     ~~   ~  ~     ~~~~~~~~~~~~~~~~~~~~~~~~~~     ~~     ~~ ~ ".colorize(:blue),
          r23: "~      ~~    ~~ ~~ ~~  ~~~~~~~~~~~~~ ~~~~  ~     ~~~    ~ ~~~  ~ ~ ".colorize(:blue),
          r24: "~  ~~     ~       ~      ~~~~~~  ~~ ~~~       ~~ ~ ~~  ~~ ~ ".colorize(:blue),
          r25: "~  ~      ~ ~      ~       ~~ ~~~~~~  ~      ~~  ~             ~~ ".colorize(:blue),
          r26: "  ~            ~        ~      ~      ~~   ~             ~ ".colorize(:blue)
          }
        puts @anchor

      when 2
        @anchor = {
          r1: "                               ___".colorize(:black),
          r2: "                              /   \\".colorize(:black),
          r3: "                             |  o  |".colorize(:black),
          r4: "                              \\   / ".colorize(:black),
          r5: "                       ________) (________".colorize(:black),
          r6: "                      |                   |".colorize(:black),
          r7: "                      '------.     .------'".colorize(:black),
          r8: "                              |   | ".colorize(:black),
          r9: "                              |   | ".colorize(:black),
          r10: "                              |   | ".colorize(:black),
          r11: "                              |   | ".colorize(:black),
          r12: "                   /\\         |   |         /\\ ".colorize(:black),
          r21: "~~~~ ~~ ~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~  ~~~~~~~ ~~~~~~~~~~~ ~~~".colorize(:blue),
          r22: "~     ~~   ~  ~     ~~~~~~~~~~~~~~~~~~~~~~~~~~     ~~     ~~ ~ ".colorize(:blue),
          r23: "~      ~~    ~~ ~~ ~~  ~~~~~~~~~~~~~ ~~~~  ~     ~~~    ~ ~~~  ~ ~ ".colorize(:blue),
          r24: "~  ~~     ~       ~      ~~~~~~  ~~ ~~~       ~~ ~ ~~  ~~ ~ ".colorize(:blue),
          r25: "~  ~      ~ ~      ~       ~~ ~~~~~~  ~      ~~  ~             ~~ ".colorize(:blue),
          r26: "  ~            ~        ~      ~      ~~   ~             ~ ".colorize(:blue)
          }
        puts @anchor
      when 3
        @anchor = {
          r1: "                               ___".colorize(:black),
          r2: "                              /   \\".colorize(:black),
          r3: "                             |  o  |".colorize(:black),
          r4: "                              \\   / ".colorize(:black),
          r5: "                       ________) (________".colorize(:black),
          r6: "                      |                   |".colorize(:black),
          r7: "                      '------.     .------'".colorize(:black),
          r8: "                              |   | ".colorize(:black),
          r21: "~~~~ ~~ ~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~  ~~~~~~~ ~~~~~~~~~~~ ~~~".colorize(:blue),
          r22: "~     ~~   ~  ~     ~~~~~~~~~~~~~~~~~~~~~~~~~~     ~~     ~~ ~ ".colorize(:blue),
          r23: "~      ~~    ~~ ~~ ~~  ~~~~~~~~~~~~~ ~~~~  ~     ~~~    ~ ~~~  ~ ~ ".colorize(:blue),
          r24: "~  ~~     ~       ~      ~~~~~~  ~~ ~~~       ~~ ~ ~~  ~~ ~ ".colorize(:blue),
          r25: "~  ~      ~ ~      ~       ~~ ~~~~~~  ~      ~~  ~             ~~ ".colorize(:blue),
          r26: "  ~            ~        ~      ~      ~~   ~             ~ ".colorize(:blue)
          }
        puts @anchor
      when 4
        @anchor = {
          r1: "                               ___".colorize(:black),
          r2: "                              /   \\".colorize(:black),
          r3: "                             |  o  |".colorize(:black),
          r4: "                              \\   / ".colorize(:black),
          r21: "~~~~ ~~ ~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~  ~~~~~~~ ~~~~~~~~~~~ ~~~".colorize(:blue),
          r22: "~     ~~   ~  ~     ~~~~~~~~~~~~~~~~~~~~~~~~~~     ~~     ~~ ~ ".colorize(:blue),
          r23: "~      ~~    ~~ ~~ ~~  ~~~~~~~~~~~~~ ~~~~  ~     ~~~    ~ ~~~  ~ ~ ".colorize(:blue),
          r24: "~  ~~     ~       ~      ~~~~~~  ~~ ~~~       ~~ ~ ~~  ~~ ~ ".colorize(:blue),
          r25: "~  ~      ~ ~      ~       ~~ ~~~~~~  ~      ~~  ~             ~~ ".colorize(:blue),
          r26: "  ~            ~        ~      ~      ~~   ~             ~ ".colorize(:blue)
          }
        puts @anchor
      when 5
        @anchor = {
          r21: "~~~~ ~~ ~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~  ~~~~~~~ ~~~~~~~~~~~ ~~~".colorize(:blue),
          r22: "~     ~~   ~  ~     ~~~~~~~~~~~~~~~~~~~~~~~~~~     ~~     ~~ ~ ".colorize(:blue),
          r23: "~      ~~    ~~ ~~ ~~  ~~~~~~~~~~~~~ ~~~~  ~     ~~~    ~ ~~~  ~ ~ ".colorize(:blue),
          r24: "~  ~~     ~       ~      ~~~~~~  ~~ ~~~       ~~ ~ ~~  ~~ ~ ".colorize(:blue),
          r25: "~  ~      ~ ~      ~       ~~ ~~~~~~  ~      ~~  ~             ~~ ".colorize(:blue),
          r26: "  ~            ~        ~      ~      ~~   ~             ~ ".colorize(:blue)
          }
        puts @anchor
        puts "Sorry, you lose."
      else
        puts "Whoa! No clue what happened!"
      end

    end

end
