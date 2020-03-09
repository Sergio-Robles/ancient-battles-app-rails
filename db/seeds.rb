# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

u1 = User.create(name: "Sergio")
u2 = User.create(name: "Rikesh")

a1 = Army.create(name: "The Swords of Sevilla", user: u1)
a2 = Army.create(name: "The Ancient Plebs", user: u2) 


au1 = ArmyUnit.create(army: Army.all.sample, unit: Unit.all.sample)
au2 = ArmyUnit.create(army: Army.all.sample, unit: Unit.all.sample)


ut1 = UnitType.create(name: "General")
ut2 = UnitType.create(name: "Infantry")
ut3 = UnitType.create(name: "Cavalry")
ut4 = UnitType.create(name: "Missile")
ut5 = UnitType.create(name: "Artillery")


#General
u1 = Unit.create(name: "Julius Caesar", size: 25, price: 1500, attack: 60, defence: 50, unit_type: ut1)
u2 = Unit.create(name: "Hannibal Barca", size: 25, price: 1500, attack: 60, defence: 50, unit_type: ut1)
u3 = Unit.create(name: "Seleucus I Nictator", size: 25, price: 1000, attack: 50, defence: 40, unit_type: ut1)
u4 = Unit.create(name: "Leonidas I", size: 25, price: 1100,attack: 55, defence: 45, unit_type: ut1)
u5 = Unit.create(name: "Vercingetorix", size: 25, price: 1000,attack: 50, defence: 40, unit_type: ut1)

#Infantry 
u6 = Unit.create(name: "Roman Triarii", size: 120, price: 790,attack: 31, defence: 64, unit_type: ut2)
u7 = Unit.create(name: "Roman Veteran Legionaries", size: 120, price: 850, attack: 59, defence: 48, unit_type: ut2)
u8 = Unit.create(name: "Carthaginian Late Hoplites", size: 120, price: 650,attack: 36,defence: 51, unit_type: ut2)
u9 = Unit.create(name: "Carthaginian Lybian Infantry", size: 120, price: 730,attack: 41,defence: 51, unit_type: ut2)
u10 = Unit.create(name: "Seleucid Silver Shield Swordsmen", size: 120, price: 1280,attack: 43,defence: 67, unit_type: ut2)
u11 = Unit.create(name: "Seleucid Silver Shield Pikemen", size: 120, price: 1280,attack: 44,defence: 42, unit_type: ut2)
u12 = Unit.create(name: "Royal Spartans", size: 120, price: 1200,attack: 44,defence: 67, unit_type: ut2)
u13 = Unit.create(name: "Heroes of Sparta", size: 120, price: 1000,attack: 48,defence: 65, unit_type: ut2)
u14 = Unit.create(name: "Gallic Oathsworn", size: 120, price: 1250,attack: 48,defence: 69, unit_type: ut2)
u15 = Unit.create(name: "Gallic Spear Nobles", size: 120, price: 1100,attack: 34,defence: 67, unit_type: ut2)

#Cavalry
u16 = Unit.create(name: "Seleucid Indian Armoured Elephants", size: 25, price: 1800, attack: 64, defence: 24, unit_type: ut3)
u17 = Unit.create(name: "Seleucid Hellenic Cataphracts", size: 80, price: 1420, attack: 46, defence: 23, unit_type: ut3)
u18 = Unit.create(name: "Spartan Hippeus", size: 80, price: 1070, attack: 40, defence: 25, unit_type: ut3)
u19 = Unit.create(name: "Gallic Noble Horse", size: 80, price: 1300, attack: 51, defence: 44, unit_type: ut3)
u20 = Unit.create(name: "Gallic Heavy Horse", size: 80, price: 700, attack: 42, defence: 42, unit_type: ut3)
u21 = Unit.create(name: "Carthaginian Cavalry", size: 80, price: 610, attack: 41, defence: 34, unit_type: ut3)
u22 = Unit.create(name: "Carthaginian African War Elephants", size: 24, price: 1600, attack: 64, defence: 24, unit_type: ut3)
u23 = Unit.create(name: "Roman Praetorian Cavalry", size: 80, price: 1250, attack: 49, defence: 42, unit_type: ut3)
u24 = Unit.create(name: "Roman Legionary Cavalry", size: 80, price: 620, attack: 33, defence: 30, unit_type: ut3)

#Missle 
u25 = Unit.create(name: "Roman Auxiliary Balearic Slingers", size: 120, price: 450, attack: 29,defence: 38, unit_type: ut4)
u26 = Unit.create(name: "Carthaginian Lybian Peltasts", size: 120, price: 440,attack: 32,defence: 44, unit_type: ut4)
u27 = Unit.create(name: "Seleucid Syrian Heavy Archers", size: 120, price: 400,attack: 35,defence: 15, unit_type: ut4)
u28 = Unit.create(name: "Spartan Gorgo's Skirmishers", size: 120, price: 400,attack: 27,defence: 19, unit_type: ut4)
u29 = Unit.create(name: "Gallic Hunters", size: 120, price: 520, attack: 35,defence: 13, unit_type: ut4)

#Artillery 
u30 = Unit.create(name: "Roman Heavy Onager", size: 20, price: 1790, attack: 230, defence: 14, unit_type: ut5)
u31 = Unit.create(name: "Carthaginian Heavy Onager", size: 20, price: 1790, attack: 230, defence: 14, unit_type: ut5)
u32 = Unit.create(name: "Seleucid Greek Bastion Ballista", size: 20, price: 560, attack: 180, defence: 14, unit_type: ut5)
u33 = Unit.create(name: "Spartan Greek Scorpion", size: 20, price: 520, attack: 120, defence: 14, unit_type: ut5)
u34 = Unit.create(name: "Gallic Celtic Bastion Onager", size: 20, price: 580, attack: 200, defence: 14, unit_type: ut5)















