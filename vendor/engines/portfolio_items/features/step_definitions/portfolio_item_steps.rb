Given /^I have no portfolio_items$/ do
  PortfolioItem.delete_all
end

Given /^I (only )?have portfolio_items titled "?([^\"]*)"?$/ do |only, titles|
  PortfolioItem.delete_all if only
  titles.split(', ').each do |title|
    PortfolioItem.create(:title => title)
  end
end

Then /^I should have ([0-9]+) portfolio_items?$/ do |count|
  PortfolioItem.count.should == count.to_i
end
