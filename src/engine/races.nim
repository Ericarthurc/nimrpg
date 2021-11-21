import tables

type
  Race* = object
    health*: int
    mana*: int
    attack*: int
    armor*: int
    evade*: int
    speed*: int
    luck*: int

var raceTable* = initTable[string, Race]()
raceTable["human"] = Race(
  health: 15,
    mana: 10,
    attack: 6,
    armor: 0,
    evade: 2,
    speed: 2,
    luck: 2,
  )
raceTable["elf"] = Race(
    health: 10,
    mana: 20,
    attack: 8,
    armor: 3,
    evade: 5,
    speed: 5,
    luck: 3,
  )
raceTable["darkelf"] = Race(
    health: 15,
    mana: 15,
    attack: 8,
    armor: 4,
    evade: 2,
    speed: 4,
    luck: 1,
  )
raceTable["undead"] = Race(
    health: -5,
    mana: 15,
    attack: 10,
    armor: 0,
    evade: 0,
    speed: 0,
    luck: 0,
  )
raceTable["char"] = Race(
    health: 20,
    mana: 5,
    attack: 3,
    armor: 5,
    evade: 0,
    speed: 0,
    luck: 10,
  )
raceTable["dwarf"] = Race(
    health: 7,
    mana: 7,
    attack: 4,
    armor: 3,
    evade: 2,
    speed: 2,
    luck: 5,
  )
raceTable["orc"] = Race(
    health: 17,
    mana: 8,
    attack: 10,
    armor: 5,
    evade: 0,
    speed: 0,
    luck: 0,
  )

proc getRacesName*(): seq[string] =
  var raceSeq: seq[string]
  for k in raceTable.keys:
    raceSeq.add(k)
  return raceSeq

proc getRace*(race: string): Race =
  return raceTable[race]
