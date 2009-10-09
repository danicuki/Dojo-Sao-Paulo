require 'optparse'

class UserInterface
  def initialize(command_line_args)
    cli_args_parser.parse!(command_line_args)
    
    unless @size
      puts cli_args_parser
      exit
    end
  end

  def start
    # Immediately quit: no other functionality required yet.
    print_revealed_board
  end

  private
  
  def cli_args_parser
    OptionParser.new do |opts|
      opts.accept(Array, /\[.*\]/) do |arg|
        eval(arg)
      end
      
      opts.on("--size=[width,height]", :REQUIRED, Array) do |size|
        @size = size
      end
      
			@mines = []      
			opts.on("--mines=[[x,y],[x',y'], ... ]", Array) do |mines|
        @mines = mines
      end
    end
  end

	def height
		@size[1]
	end
	
	def width
		@size[0]
	end

  def print_revealed_board
		
    height.times do |yl|
	 		y = yl + 1
			width.times do |xl|
				x = xl + 1
				if @mines.index([x,y])
					 print "*"
				elsif @mines.index([x-1, y-1]) || 
					    @mines.index([x-1, y  ]) ||
					    @mines.index([x-1, y+1]) ||
							@mines.index([x  , y-1]) ||
					    @mines.index([x  , y  ]) ||
							@mines.index([x  , y+1]) ||
					    @mines.index([x+1, y-1]) ||
					    @mines.index([x+1, y  ]) ||
					    @mines.index([x+1, y+1])   
					print "1" 
				else
					print "."
				end
			end
			puts "\n"
		end
  end
end