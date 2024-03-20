dofile("languages.lua")

game_stage = 1
local tips_size = 3

function playGame()
    print("<---------- Hangman ---------->")

    local bool = true
    while bool == true do
        print("_____________________________________________________________")
        print("Tips remainings: " .. tips_size)
        dofile('body.lua')
        print("WORD:     " .. get_incognit_word())
        io.write("please enter a word (lowercase without spaces): ")

        local word = io.read()

        if word == sorted_word then
            print("Congratulations! You won!")
            bool = false
        elseif game_stage == 3 then
            game_stage = game_stage + 1
            print("You lost! The word was: " .. sorted_word)
            bool = false
        else
            game_stage = game_stage + 1

            if tips_size > 0 then
                print("WRONGGGGGGG")
                io.write("You want a tip? (yes/no): ")
                local tip_request = io.read()
                if tip_request == "yes" or tip_request == "YES" then
                    print("\n TIP:     " .. get_tip())
                    tips_size = tips_size - 1
                end
            end
        end
    end
end

function get_tip()
    local index = math.random(#sorted_word_tips)
    local value = sorted_word_tips[index]
    table.remove(sorted_word_tips, index)
    return value
end

function get_incognit_word()
    local new_string = ""
    for i = 1, #sorted_word do
        new_string = new_string .. "_ "
    end
    return new_string
end

playGame()