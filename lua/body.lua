function full_body()
    print(" _____")
    print("|     |")
    print("|     O")
    print("|    /|\\")
    print("|     |")
    print("|    / \\")
    print("|_______")
end

function body_without_legs()
    print("  _____")
    print(" |     |")
    print(" |     O")
    print(" |    /|\\")
    print(" |     |")
    print(" |")
    print("_|________")
end

function body_without_hands()
    print(" _____")
    print("|     |")
    print("|     O")
    print("|     |")
    print("|")
    print("|")
    print("|_______")
end

function body_without_head()
    print("  _____")
    print(" |     |")
    print(" |")
    print(" |")
    print(" |")
    print(" |")
    print("_|________")
end

if game_stage == 1 then
    full_body()
elseif game_stage == 2 then
    body_without_legs()
elseif game_stage == 3 then
    body_without_hands()
elseif game_stage == 4 then
    body_without_head()
end