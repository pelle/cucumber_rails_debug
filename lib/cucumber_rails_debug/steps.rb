
Then /^debug$/ do
  debugger
end

Then /^html$/ do
  display { puts @response.body.gsub("\n", "\n            ")}
end

 Then /^params$/ do
  display{ puts @request.parameters.inspect }
 end

def display(decoration="\n#{'*' * 80}\n")
  puts decoration
  yield
  puts decoration 
end
