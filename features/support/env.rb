require 'colorize'

After do |scenario|
  if scenario.failed?
    $stderr.puts scenario.exception.message.red
    $stderr.puts scenario.exception.backtrace.join("\n").red
  end
end
