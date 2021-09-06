require "tty-progressbar"

class Moulinettes
  PROGRESS_BAR_WIDTH = 100

  def self.moulinette_on(subjects)
    bar = TTY::ProgressBar.new("[:bar] :percent", total: subjects.size, width: PROGRESS_BAR_WIDTH, output: $stdout)

    subjects.find_each do |subject|
      begin
        yield(subject, bar)
      rescue StandardError => error
        bar.log("Error #{error} for #{subject.class.name} with id=#{subject.id}")
      ensure
        bar.advance
      end
    end
  end
end