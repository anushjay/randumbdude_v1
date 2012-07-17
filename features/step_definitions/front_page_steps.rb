Given /^I have a post$/ do
  @post = Post.create
end

Given /^my post has title "(.*?)"$/ do |title|
  @post[:title] = title
  @post.save
end

Given /^my post has body "(.*?)"$/ do |body|
  @post[:body] = body
  @post.save
end

Given /^my post author with name "(.*?)"$/ do |name|
  @post[:author] = User.create(:name => name)
  @post.save
end

When /^I go to the homepage$/ do
  visit posts_path
end

Then /^I should see "(.*?)"$/ do |title|
  @post[:title] = title
end