class EmojiRunner
  class << self
    def run(code)
      code.split("\n").each do |line|
        case line.strip[0]
        when "🗣" 
          puts line.gsub("🗣", "")
        when "🎤"
          puts line.gsub("🎤", "")  
          gets
        end
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
