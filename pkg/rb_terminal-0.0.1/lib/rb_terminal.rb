require 'rubygems'
require 'appscript'
module RbTerminal
  class Terminal
    include Appscript
    def initialize(init_command="")
      @terminal = app('Terminal')
      @terminal.do_script(init_command)
      @current_window = @terminal.windows.first
      yield self if block_given?
    end
  
    def tab(command, *args)
      options = args.first && args.first.is_a?(Hash) ? args.first : {}
      create_tab
      @current_tab.normal_text_color.set(options[:text_color]) if options[:text_color]
      @current_tab.background_color.set(options[:background_color]) if options[:background_color]
      @current_tab.cursor_color.set(options[:cursor_color]) if options[:cursor_color]
      @terminal.do_script(command, :in => @current_tab)
    end
  
    private
  
    def create_tab
      app("System Events").application_processes["Terminal.app"].keystroke("t", :using => :command_down)
      @current_tab = @current_window.tabs.last
    end
  end
end