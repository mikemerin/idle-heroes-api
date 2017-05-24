Hero.destroy_all
Stat.destroy_all

groo = Hero.create({
  name: "Groo",
  faction: "forest",
  role: "warrior",
  skills: 4
})

stat1 = Stat.create({
  attack: 2517,
  health: 29832,
  armor: 876,
  speed: 609,
})

groo.stat = stat1

iceblink = Hero.create({
  name: "Iceblink",
  faction: "justice",
  role: "ranger",
  skills: 4
})

stat2 = Stat.create({
  attack: 3234,
  health: 35073,
  armor: 697,
  speed: 594,
})

iceblink.stat = stat2

karim = Hero.create({
  name: "Karim",
  faction: "abyss",
  role: "assassin",
  skills: 3
})

stat3 = Stat.create({
  attack: 4656,
  health: 16593,
  armor: 610,
  speed: 621,
})

karim.stat = stat3
