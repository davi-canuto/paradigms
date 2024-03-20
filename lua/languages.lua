languages = {
  lua = {
    "Multi-paradigm (procedural, object-oriented, functional)",
    "Dynamically typed",
    "Satelite"
  },
  python = {
    "Multi-paradigm (procedural, object-oriented, functional)",
    "Dynamically typed",
    "Snake"
  },
  fortram = {
    "Procedural",
    "Statically typed",
    "Four"
  },
  basic = {
    "Procedural",
    "Dynamically typed",
    "Not compliqued"
  },
  haskell = {
    "Procedural",
    "Statically typed",
    "Savage and Lazy"
  },
  sql = {
    "Declarative",
    "Not applicable",
    "place for sit"
  },
  perl = {
    "Multi-paradigm (procedural, object-oriented, functional)",
    "Dynamically typed",
    "the 'perfect' language"
  },
  postscript = {
    "Declarative",
    "Dynamically typed",
    "Scripting language derived from the 201 response to a request"
  },
  eiffel = {
    "Object-oriented",
    "Dynamically typed",
    "It is an iconic tower of France"
  },
  java = {
    "Object-oriented",
    "Statically typed",
    "Comes with a cup"
  },
  ruby = {
    "Multi-paradigm (procedural, object-oriented, functional)",
    "Statically typed",
    "The most elegant language ever made"
  },
  swift = {
    "Multi-paradigm (procedural, object-oriented, functional)",
    "Statically typed",
    "Relative of taylor"
  }
}

local keys = {}

for key, _ in pairs(languages) do
    table.insert(keys, key)
end

local sw = keys[math.random(#keys)]
local sw_values = languages[sw]

sorted_word = sw
sorted_word_tips = sw_values