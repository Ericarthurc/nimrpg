import tables

type
  Race* = object
    health*: int
    attack*: int

var raceTable = initTable[string, Race]()
raceTable["warrior"] = Race(health: 100, attack: 10)
raceTable["wizard"] = Race(health: 80, attack: 15)

proc getRacesName*(): seq[string] =
  var raceSeq: seq[string]
  for k in raceTable.keys:
    raceSeq.add(k)
  return raceSeq

proc getRace*(race: string): Race =
  return raceTable[race]
