require 'rails_helper'

RSpec.describe "Articles", type: :request, autodoc: true do
  let!(:user){ create(:user) }
  let!(:headers){
    { Authorization: "Bearer #{user.valid_api_key.access_token}" }
  }
  describe "GET /api/v1/articles" do
    context "ログイン時" do
      it "記事一覧情報が得られること" do
        articles = create_list(:article, 5, user: user)

        get api_v1_articles_path, headers: headers

        expect(response).to have_http_status(200)
        expect(json_response["data"].size).to eq 5
        expect(json_response["data"][0]["attributes"].keys).to contain_exactly("title", "contents", "status")
      end
    end

    context "ログアウト時" do
      it "HTTP Token: Access denied. がレスポンスボディとして返されること" do
        get api_v1_articles_path

        expect(response).to have_http_status(401)
        expect(response.body.chomp).to eq "HTTP Token: Access denied."
      end
    end
  end

  describe "GET /api/v1/articles/:id" do
    let!(:article){ create(:article, user: user) }

    context "ログイン時" do
      it "記事情報が得られること" do
        get api_v1_article_path(article), headers: headers

        json_user = JSON.parse(UserSerializer.new(user).serialized_json)
        response_attributes = json_response["data"]["attributes"]
        response_user_data = json_response.dig("data", "relationships", "user", "data")

        expect(response_attributes["title"]).to eq article.title
        expect(response_attributes["contents"]).to eq article.contents
        expect(response_attributes["status"]).to eq article.status
        expect(response_user_data["id"]).to eq "#{user.id}"
        expect(response_user_data["type"]).to eq "user"
      end
    end

    context "ログアウト時" do
      it "HTTP Token: Access denied. がレスポンスボディとして返されること" do
        get api_v1_article_path(article)

        expect(response).to have_http_status(401)
        expect(response.body.chomp).to eq "HTTP Token: Access denied."
      end
    end
  end
end
