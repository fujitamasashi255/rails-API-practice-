require 'factory_bot_rails'

user = FactoryBot.create(:user)
FactoryBot.create(:social_profile, user: user)
article = FactoryBot.create(:article, user: user)
FactoryBot.create(:comment, user: user, article: article)
