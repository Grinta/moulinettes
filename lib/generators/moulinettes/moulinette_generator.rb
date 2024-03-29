require "rails/generators"

module Moulinettes
  module Generators
    class MoulinetteGenerator < Rails::Generators::NamedBase
      class_option :editor, type: :string, default: ENV["EDITOR"], desc: "Open the generated file in the specified editor"
      class_option :open, type: :boolean, default: true, desc: "Open the generated file in your editor"
      class_option :subject, type: :string, default: nil, desc: "The model to use as a subject"
      
      desc "This generator creates a task file following the moulinettes template"

      source_root File.expand_path(File.dirname(__FILE__))

      def copy_initializer_file
        copy_file "yyyymmdd_action_of_a_moulinette_task.rake", filepath
        gsub_file filepath, "action_of_a_moulinette_task", task_name
        gsub_file filepath, "A description of the task goes here", task_description

        if options["subject"].present?
          gsub_file filepath, "subject", options["subject"].underscore
          gsub_file filepath, "YourModel", options["subject"].classify 
        end

        print_warnings

        if options["open"]
          system("#{options["editor"]} #{filepath}")
        end
      end

      def timestamp
        Date.today.strftime("%Y%m%d")
      end

      def task_name
        name.underscore
      end

      def task_description
        task_name.humanize
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

      private

      def print_warnings
        puts <<~HEREDOC
          REMEMBER:
          - Don't you dare do an update_all. It would break PgSQL and the universe.
          - Use moulinette_on subjects helper, it will correctly loop over objects and print progress
          - Create one task for each thing. Make sure it can be run twice.
          - Print feedback as much as possible to show what's going on.
        HEREDOC
      end
    end
  end
end
