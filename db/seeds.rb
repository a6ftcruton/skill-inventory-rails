m1 = FactoryGirl.create(:section, name: "Module 1")
m2 = FactoryGirl.create(:section, name: "Module 2")
m3 = FactoryGirl.create(:section, name: "Module 3")
m4 = FactoryGirl.create(:section, name: "Module 4")

puts " Successfully added sections from seed data. ".center(70, "~*~")

FactoryGirl.create(:skill, name: "Pushing Logic Down the Stack", featured: true, section: m1)
FactoryGirl.create(:skill, name: "Github Workflow", featured: true, section: m2)
FactoryGirl.create(:skill, name: "Reduce/Inject Enumerable", featured: true, section: m4)

FactoryGirl.create(:skill, name: "Deployment", featured: false, section: m1)
FactoryGirl.create(:skill, name: "TDD", featured: false, section: m3)
FactoryGirl.create(:skill, name: "Ruby Object Model", featured: false, section: m1)
FactoryGirl.create(:skill, name: "Exposing An API", featured: false, section: m1)
FactoryGirl.create(:skill, name: "Service Oriented Architechture", featured: false, section: m1)

puts " Successfully added skills from seed data. ".center(70, "~*~")

FactoryGirl.create(:tag)
FactoryGirl.create(:tag)
FactoryGirl.create(:tag)
FactoryGirl.create(:tag)

puts " Successfully added tags from seed data. ".center(70, "~*~")
