# Put your seed data in here. This should be a series of .create! statements for
# each of your relevant models.
#
# You'll run it with rake db:seed

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