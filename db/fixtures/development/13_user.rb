User.seed do |u|
  u.id = 1
  u.first_name = 'Reiji'
  u.middle_name = 'x'
  u.last_name = 'sugama'
  u.university = 'Tokyo'
  u.graduate_year = '2020(suring)'
  u.major_id = 1
  u.major_category_id = 1
  u.visa_type = 'college'
  u.status = 'job seeker'
end
User.seed do |u|
  u.id = 2
  u.first_name = 'Eiji'
  u.middle_name = 'y'
  u.last_name = 'Mishiro'
  u.university = 'Tokyo'
  u.graduate_year = '2020(suring)'
  u.major_id = 5
  u.major_category_id = 5
  u.visa_type = 'college'
  u.status = "I'm not"
end
User.seed do |u|
  u.id = 3
  u.first_name = 'Yoshi'
  u.middle_name = 'z'
  u.last_name = 'Nori'
  u.university = 'Tokyo'
  u.graduate_year = '2020(suring)'
  u.major_id = 8
  u.major_category_id = 8
  u.visa_type = 'college'
  u.status = 'I want to find job'
end

