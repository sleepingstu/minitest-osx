require "minitest"
require "terminal-notifier"

module Minitest
  def self.plugin_osx_init(options)
    self.reporter << OsxNotificationReporter.new(options[:io], options)
  end

  class OsxNotificationReporter < StatisticsReporter
    def report
      super

      text = "%d failures, %d errors, %d skips in %ss"  % [failures, errors, skips, total_time]

      title = (passed? ? "Successful \u{1f497}" : "Failed \u{1f4a9}")

      TerminalNotifier.notify(text, :title => 'Minitest', :subtitle => title)
    end
  end
end
