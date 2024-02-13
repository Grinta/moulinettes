# Moulinettes

<div align="center">
  <img src="logo.png" alt="moulinettes logo" title="moulinettes logo" height="300">
  <p align="center">A simple template to run any data migrations within your Rails app.</p>
</div>



## Installation

Add this line to your application's Gemfile:

```ruby
gem "moulinettes"
```

## Usage

Generate a new moulinette using the generator:

```bash
  # Both syntaxes are valid and will generate the same file
  bundle exec rails g moulinettes:moulinette MyMoulinette 
  bundle exec rails g moulinettes:moulinette my_moulinette 
```

This will generate a new file in `lib/tasks/moulinettes` using the [template provided in the gem](lib/generators/moulinettes/yyyymmdd_action_of_a_moulinette_task.rake).

### Options

You can also pass the following options to the generator:

- `--editor` or `-e` to specify the editor to be used to open the file. Default is `$EDITOR`.
- `--open` or `-o` to flag the file to be opened in your default editor after generation. Default is `true`.

You can then run the task using the following command:

```bash
  bundle exec rails moulinettes:my_moulinette
```
