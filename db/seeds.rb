# Put your seed data in here. This should be a series of .create! statements for
# each of your relevant models.
#

# You'll run it with rake db:seed
# ------- BOXES ------------
# ________________________________________
# + name (string)
# + assigned_age_group_id (int)
# + label (boolean)
# + location (string)
# + cleaned (boolean)
# + checked_out (boolean)
# + 
#
# + belongs_to assigned_age_groups
# + has_many toys
# + has_many_and_belongs_to toys
# + has_many_and_belongs_to skills

# _____________

AssignedAgeGroup.create!(age:"0-3 months")
AssignedAgeGroup.create!(age:"3-6 months")
AssignedAgeGroup.create!(age:"6-12 months")
AssignedAgeGroup.create!(age:"12-24 months")
AssignedAgeGroup.create!(age:"3-5 years")

Skill.create!(name: "Cognitive Development", description: "This is the child's ability to learn and solve problems. For example, this includes a two-month-old baby learning to explore the environment with hands or eyes or a five-year-old learning how to do simple math problems.")
Skill.create!(name: "Social and Emotional Development", description: "This is the child's ability to interact with others, including helping themselves and self-control. Examples of this type of development would include: a six-week-old baby smiling, a ten-month-old baby waving bye-bye, or a five-year-old boy knowing how to take turns in games at school.")
Skill.create!(name: "Speech and Language Development", description: "This is the child's ability to both understand and use language. For example, this includes a 12-month-old baby saying his first words, a two-year-old naming parts of her body, or a five-year-old learning to say \"feet\" instead of \"foots\".")
Skill.create!(name: "Fine Motor Skill Development", description: "This is the child's ability to use small muscles, specifically their hands and fingers, to pick up small objects, hold a spoon, turn pages in a book, or use a crayon to draw.")
Skill.create!(name: "Gross Motor Skill Development", description: "This is the child's ability to use large muscles. For example, a six-month-old baby learns how to sit up with some support, a 12-month-old baby learns to pull up to a stand holding onto furniture, and a five-year-old learns to skip.")

Box.create!(name:"A1", assigned_age_group_id: 1, label: false, location: "Main", cleaned: false, checked_out: false)
Box.create!(name:"B1", assigned_age_group_id: 2, label: false, location: "Main", cleaned: false, checked_out: false)
Box.create!(name:"C1", assigned_age_group_id: 3, label: true, location: "Main", cleaned: true, checked_out: true)
Box.create!(name:"D1", assigned_age_group_id: 4, label: true, location: "Main", cleaned: true, checked_out: true)
Box.create!(name:"E1", assigned_age_group_id: 5, label: true, location: "Main", cleaned: false, checked_out: false)

Toy.create!(name:"Flexi-loops", brand:"Oball", mfg_website:"http://www.kidsii.com/brands/oball", quantity_wanted:2, quantity_have:1, upc: "07445181511", mfg_suggested_age_range: "0+", pieces: 24, extended_play_idea: "Here's a fun idea...", store_purchased_from: "Target",  purchase_price: "599", country_of_origin: "China", batteries_required: false)
Toy.create!(name:"Funthings", brand:"Mattel",mfg_website:"http://www.mattel.com",quantity_wanted:1,quantity_have:1,upc: "02444121511",mfg_suggested_age_range: "2-4",pieces: 3, extended_play_idea: "Do this...",store_purchased_from: "Play Store", purchase_price: "100",country_of_origin: "USA",batteries_required: true)
Toy.create!(name:"Duplo Castle", brand:"Lego",mfg_website:"http://www.lego.com",quantity_wanted:2,quantity_have:1,upc: "02444121231",mfg_suggested_age_range: "4-5",pieces: 24, extended_play_idea: "Build a castle and play...",store_purchased_from: "logostore.com", purchase_price: "2499",country_of_origin: "Denmark",batteries_required: false)