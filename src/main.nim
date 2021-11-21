import std/strformat, tables, sequtils

type
  Player = ref object
    name: string
    race: string
    role: string
    playerExperience: int
    playerLevel: int
    health: int
    mana: int
    attack: int
    armor: int
    evade: int
    speed: int
    luck: int
    skills: seq[int]

proc newPlayer: Player =
  new result
  result.name = "Eric"
  result.race = "elf"
  result.role = "warrior"

proc `$`(p: Player): string =
  result = &"{p.name}\n{p.role}\n{p.race}"

var PlayerOne = newPlayer()
echo PlayerOne
