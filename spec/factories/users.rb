FactoryGirl.define do
	factory :user do
		email "ducrouxolivier@gmail.com"
		password "ducrouxolivier@gmail.com"
	end
	factory :joe, :class => User do
		email "ducrouxolivier@gmail.com"
		password "ducrouxolivier@gmail.com"
	end
end
