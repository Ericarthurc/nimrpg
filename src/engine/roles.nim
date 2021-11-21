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

var roleTable* = initTable[string, Role]()
roleTable["warrior"] = Role(
    health: 100,
    mana: 50,
    attack: 10,
    armor: 15,
    evade: 5,
    speed: 5,
    luck: 5,
  )
roleTable["wizard"] = Role(
    health: 80,
    mana: 100,
    attack: 15,
    armor: 5,
    evade: 10,
    speed: 8,
    luck: 10,
  )
roleTable["ranger"] = Role(
    health: 70,
    mana: 70,
    attack: 8,
    armor: 5,
    evade: 15,
    speed: 15,
    luck: 13,
  )
roleTable["thief"] = Role(
    health: 60,
    mana: 60,
    attack: 12,
    armor: 10,
    evade: 25,
    speed: 20,
    luck: 17,
  )
roleTable["guardian"] = Role(
    health: 150,
    mana: 50,
    attack: 5,
    armor: 20,
    evade: 1,
    speed: 1,
    luck: 1,
  )
roleTable["necromancer"] = Role(
    health: 60,
    mana: 90,
    attack: 15,
    armor: 10,
    evade: 5,
    speed: 5,
    luck: -5,
  )

proc getRolesName*(): seq[string] =
  var raceSeq: seq[string]
  for k in roleTable.keys:
    raceSeq.add(k)
  return raceSeq

proc getRole*(race: string): Role =
  return roleTable[race]
