Hero.destroy_all
Stat.destroy_all

groo = Hero.create({
  name: "Groo",
  faction: "forest",
  role: "warrior",
  stats_id: 1,
  skills: 4
})

Stat.create({
  attack: 2517,
  health: 29832,
  armor: 876,
  speed: 609
})

iceblink = Hero.create({
  name: "Iceblink",
  faction: "justice",
  role: "ranger",
  stats_id: 2,
  skills: 4
})

Stat.create({
  attack: 3234,
  health: 35073,
  armor: 697,
  speed: 594
})

karim = Hero.create({
  name: "Karim",
  faction: "abyss",
  role: "assassin",
  stats_id: 3,
  skills: 3
})

Stat.create({
  attack: 4656,
  health: 16593,
  armor: 610,
  speed: 621
})
