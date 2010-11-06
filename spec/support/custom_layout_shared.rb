shared_examples_for "custom layout" do
  it "should render specified layout" do
    get action
    response.body.should match(/<h1>#{layout}<\/h1>/i)
    response.body.should match(/Viewing the #{action} page/i)
  end
end
