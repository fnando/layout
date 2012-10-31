shared_examples_for "custom layout" do
  it "renders specified layout" do
    get action

    expect(response.body).to match(/<h1>#{layout}<\/h1>/i)
    expect(response.body).to match(/Viewing the #{action} page/i)
  end
end
