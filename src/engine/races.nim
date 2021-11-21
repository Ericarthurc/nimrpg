import tables

type
  Role* = object
    health*: int
    mana*: int
    attack*: int
    armor*: int
    evade*: int
    speed*: int
    luck*: int

var roleTable = initTable[string, Role]()
roleTable["human"] = Role(
  health: 15,
    mana: 10,
    attack: 6,
    armor: 0,
    evade: 2,
    speed: 2,
    luck: 2,
  )
roleTable["elf"] = Role(
    health: 10,
    mana: 20,
    attack: 8,
    armor: 3,
    evade: 5,
    speed: 5,
    luck: 3,
  )
roleTable["darkelf"] = Role(
    health: 15,
    mana: 15,
    attack: 8,
    armor: 4,
    evade: 2,
    speed: 4,
    luck: 1,
  )
roleTable["undead"] = Role(
    health: -5,
    mana: 15,
    attack: 10,
    armor: 0,
    evade: 0,
    speed: 0,
    luck: 0,
  )
roleTable["char"] = Role(
    health: 20,
    mana: 5,
    attack: 3,
    armor: 5,
    evade: 0,
    speed: 0,
    luck: 10,
  )
roleTable["dwarf"] = Role(
    health: 7,
    mana: 7,
    attack: 4,
    armor: 3,
    evade: 2,
    speed: 2,
    luck: 5,
  )
roleTable["orc"] = Role(
    health: 17,
    mana: 8,
    attack: 10,
    armor: 5,
    evade: 0,
    speed: 0,
    luck: 0,
  )

proc getRolesName*(): seq[string] =
  var raceSeq: seq[string]
  for k in roleTable.keys:
    raceSeq.add(k)
  return raceSeq

proc getRole*(race: string): Role =
  return roleTable[race]

echo getRolesName()
