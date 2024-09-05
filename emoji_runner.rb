class EmojiRunner
  class << self
    def run(code)
      pr = code.chars.find { |chr| chr == "🗣" }
      if pr
        puts code.gsub(/🗣/, "")
      end
    end
  end
end

def read_file(file_name)
  file = File.open(file_name, "r")
  data = file.read
  file.close
  return data
end

content = read_file(ARGV[0])

EmojiRunner.run(content)
