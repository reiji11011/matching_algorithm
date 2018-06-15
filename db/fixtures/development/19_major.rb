require "#{Rails.root}/lib/import.rb"

# =データの取込
# データファイルを保存しているフォルダ
data_folder = "#{Rails.root}/db/fixtures/#{Rails.env}"

# ==専攻カテゴリー情報の取込
Import.csv_read(data_folder, '02major_category.csv') do |line, idx|
  MajorCategory.seed do |s|
    s.id                 = idx
    s.name               = line[0]
  end
end

# ==専攻情報の取込
Import.csv_read(data_folder, '03major.csv') do |line, idx|
  Major.seed do |s|
    s.id                 = idx
    s.code               = line[0]
    s.name               = line[1]
    s.major_category_id  = line[3]
  end
end
