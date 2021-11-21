import std/strformat, tables, sequtils

import engine/[races, roles, skills]


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

  var getterRace = getRace(result.race)
  var getterRole = getRole(result.role)

  result.health = getterRace.health + getterRole.health
  result.mana = getterRace.mana + getterRole.mana
  result.attack = getterRace.attack + getterRole.attack
  result.armor = getterRace.armor + getterRole.armor
  result.evade = getterRace.evade + getterRole.evade
  result.speed = getterRace.speed + getterRole.speed
  result.luck = getterRace.luck + getterRole.luck

proc `$`(p: Player): string =
  result = &"{p.name}\n{p.race}\n{p.role}"
  result = result & &"\n{p.playerLevel}\n{p.health}\n{p.mana}"
  result = result & &"\n{p.attack}\n{p.armor}\n{p.evade}"
  result = result & &"\n{p.speed}\n{p.luck}\n{p.skills}"

var PlayerOne = newPlayer()
echo PlayerOne
