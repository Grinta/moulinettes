require "rails/generators"

module Moulinettes
  module Generators
    class MoulinetteGenerator < Rails::Generators::NamedBase
      desc "This generator creates a task file following the moulinettes template"

      source_root File.expand_path(File.dirname(__FILE__))

      def copy_initializer_file
        copy_file "yyyymmdd_action_of_a_moulinette_task.rake", filepath
        gsub_file filepath, "action_of_a_moulinette_task", task_name
        gsub_file filepath, 'desc "A description of the task goes here"', task_description
      end

      def timestamp
        Date.today.strftime("%Y%m%d")
      end

      def task_name
        name.underscore
      end

      def task_description
        'desc "' + task_name.humanize + '"'
      end

      def filename
        "#{timestamp}_#{task_name}.rake"
      end

      def filepath
        dirname = "lib/tasks/moulinettes"
        unless File.directory?(dirname)
          FileUtils.mkdir_p(dirname)
        end
          "#{dirname}/#{filename}"
      end
    end
  end
end