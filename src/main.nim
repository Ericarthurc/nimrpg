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

type
  Race = object
    health: int
    attack: int

var statMap = initTable[string, Race]()
statMap["warrior"] = Race(health: 100, attack: 10)
statMap["wizard"] = Race(health: 80, attack: 15)

echo statMap

proc getRaces(): seq[string] =
  var raceSeq: seq[string]
  for k in statMap.keys:
    raceSeq.add(k)
  return raceSeq

echo getRaces()

echo "candy" in getRaces()


type
  Skill = object
    id: int
    name: string
    damage: int

# proc `$`(s: Skill): string =
#   result = fmt"{s.name}"

var skillMap = initTable[string, seq[Skill]]()
skillMap["warrior"] = @[Skill(id: 1, name: "head butt", damage: 100)]
skillMap["warrior"].add(Skill(id: 2, name: "slash", damage: 80))

echo skillMap["warrior"]
