import tables

type
  Role* = object
    health*: int
    attack*: int

var roleTable = initTable[string, Role]()
roleTable["human"] = Role(health: 100, attack: 10)
roleTable["elf"] = Role(health: 80, attack: 15)

proc getRolesName*(): seq[string] =
  var raceSeq: seq[string]
  for k in roleTable.keys:
    raceSeq.add(k)
  return raceSeq

proc getRole*(race: string): Role =
  return roleTable[race]
