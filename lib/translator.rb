# require modules here
require "yaml"

def load_library(file_path)
    hash = YAML.load_file(file_path)
    new_hash = {}
    hash.each do |k,v|
      if new_hash["get_meaning"].nil?
        new_hash["get_meaning"] = {}
      end
      if new_hash["get_meaning"][v[1]].nil?
        new_hash["get_meaning"][v[1]] = k
      end
      if new_hash["get_emoticon"].nil?
        new_hash["get_emoticon"] = {}
      end
      if new_hash["get_emoticon"][v[0]].nil?
        new_hash["get_emoticon"][v[0]] = v[1]
      end
    end
  new_hash
end

def get_japanese_emoticon(file_path, emoticon)
    emoticon_hash = load_library(file_path)
    sorry_message = "Sorry, that emoticon was not found"
      emoticon_hash.each do |outer_k, outer_v|
        outer_v.each do |k, v|
          if k == emoticon
            return v
          end
        end
      end
    sorry_message
end

def get_english_meaning(file_path, emoticon)
    emoticon_hash = load_library(file_path)
    sorry_message = "Sorry, that emoticon was not found"
      emoticon_hash.each do |outer_k, outer_v|
        outer_v.each do |k, v|
          if k == emoticon
            return v
          end
        end
      end
    sorry_message
  # code goes here
end
