namespace :moulinettes do
  desc "A description of the task goes here"
  task action_of_a_moulinette_task: :environment do
    include Moulinettes

    subjects = YourModel.where(something: "to_find")

    moulinette_on subjects do |subject|
    end

    puts "Done."
  end
end
