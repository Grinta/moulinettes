require "moulinettes"

namespace :moulinettes do
  desc "A description of the task goes here"
  task action_of_a_moulinette_task: :environment do

    # Edit this query to find migration task subjects
    subjects = YourModel.where(something: "to_find")

    moulinette_on subjects do |subject, progress_bar|
      # Do stuff with your subjects here, one at a time
      progress_bar.log("#{subject.id}")
    end

    # REMEMBER:
    # - Don't you dare do an update_all. It would break PgSQL and the universe.
    # - Use moulinette_on subjects helper, it will correctly loop over objects and print progress
    # - Create one task for each thing. Make sure it can be run twice.
    # - Print feedback as much as possible to show what's going on.

    puts "Done."
  end
end
