When /^I view the document page for "([^"]*)"$/ do |title|
  @document = Document.find_by_title(title)
  #raise "@document.id = #{@document.id}"
  visit(document_path(@document))
end

When /^I tag "([^"]*)" with "([^"]*)"$/ do |target_text, tag_list|
  highlight_in_document_body(target_text)
  fill_in "Tag list", :with => tag_list
  click_button "save tags"
end



# this is from http://stackoverflow.com/questions/4473887/cucumber-capybara-selenium-selecting-text
def highlight_in_document_body(target_text)
  page.driver.browser.execute_script %Q{
    body_text = $('.body').text();
    first_char_at = body_text.indexOf('#{target_text}');
    last_char_at = first_char_at + #{target_text.length};
    var selection = window.getSelection();
    var range = window.document.createRange();
    range.setStart($('.body')[0].firstChild, first_char_at);
    range.setEnd($('.body')[0].firstChild, last_char_at);
    selection.removeAllRanges();
    selection.addRange(range);
    $('.body').mouseup();
  }
end