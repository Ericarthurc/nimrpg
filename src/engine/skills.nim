import tables, std/strformat

type
  Skill = object
    id: int
    skillName: string
    description: string
    damage: int
    manaRequirement: int
    levelRequirement: int

proc `$`(s: Skill): string =
  result = fmt"{s.skillName}"

var skillTable = initTable[string, seq[Skill]]()
skillTable["warrior"] = @[]
skillTable["warrior"].add(Skill(
    id: 1,
    skillName: "head butt",
    description: "Swing your head forward with mighty force!",
    damage: 100,
    levelRequirement: 0,
    manaRequirement: 5
  ))
skillTable["warrior"].add(Skill(
    id: 2,
    skillName: "slash",
    description: "Slash your weapon forward striking whats in front of you!",
    damage: 80,
    levelRequirement: 1,
    manaRequirement: 10
  ))

skillTable["wizard"] = @[]
skillTable["wizard"].add(Skill(
    id: 1,
    skillName: "Lightning Strike",
    description: "Lightning strikes from above!",
    damage: 12,
    levelRequirement: 0,
    manaRequirement: 10,
))

skillTable["ranger"] = @[]

skillTable["thief"] = @[]

skillTable["guardian"] = @[]

skillTable["necromancer"] = @[]

echo skillTable
