namespace :moulinettes do
  desc "A description of the task goes here"
  task action_of_a_moulinette_task: :environment do
    include Moulinettes

    # Edit this query to find migration task subjects
    subjects = YourModel.where(something: "to_find")

    moulinette_on subjects do |subject, progress_bar|
      # Do stuff with your subjects here, one at a time
      progress_bar.log("#{subject.id}")
    end

    puts "Done."
  end
end
