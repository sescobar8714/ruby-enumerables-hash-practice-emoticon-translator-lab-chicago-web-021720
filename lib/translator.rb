# require modules here
require 'yaml'
require 'pry'

def load_library(file_path)
  file = File.read(file_path)
  emoticons = YAML.load(file)
  new_hash = {
   "get_meaning" => {},
   "get_emoticon" => {}
 }
emoticons.each do |name,emojis|
  new_hash["get_meaning"][emojis[1]] = name
  new_hash["get_emoticon"][emojis[0]] = emojis[1]
end
return new_hash
end



def get_japanese_emoticon(file_path, emoticon)
  #binding.pry
  library = load_library(file_path)
  library["get_emoticon"].each do |name, emojis|
    if key == emoticon
      puts value
    end
  end
end

def get_english_meaning(file_path, emoticon)

end
