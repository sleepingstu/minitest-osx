require "minitest"
require "terminal-notifier"

module Minitest
  def self.plugin_osx_init(options)
    self.reporter << OsxNotificationReporter.new(options[:io], options)
  end

  class OsxNotificationReporter < StatisticsReporter

    cattr_accessor :notifier_options

    @@notifier_options = {}

    def report
      super

      text = "%d failures, %d errors, %d skips in %ss"  % [failures, errors, skips, total_time]

      title = (passed? ? "Successful \u{1f497}" : "Failed \u{1f4a9}")

      TerminalNotifier.notify(text, self.notifier_options.merge({:title => 'Minitest', :subtitle => title}) )
    end
  end
end
