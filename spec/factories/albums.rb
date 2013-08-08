# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :album do
    cover { Rack::Test::UploadedFile.new(File.join(Rails.root, 'spec', 'support', 'images', 'bas.jpg')) }
    title "titre"
  end
end
