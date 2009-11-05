module PlaysTheGame
  def start_game(options)
    minesweeper_cmd = File.expand_path(File.dirname(__FILE__) + '/../../bin/minesweeper')
    cmd = "#{minesweeper_cmd}"
    cmd << " --size=#{options[:size].inspect.gsub(/ /,'')}"
    cmd << " --mines=#{options[:mines].inspect.gsub(/ /,'')}" if options[:mines]
    @game = IO.popen("#{cmd}", File::RDWR)
  end
end

World PlaysTheGame