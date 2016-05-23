require "system_command_helper/version"

module SystemCommandHelper
  attr_accessor :no_exec, :quiet

  def sys(cmd)
    unless @quiet
      puts "\e[35m#{Dir.pwd}$\e[0m #{cmd}"
    end
    unless @no_exec
      result = system cmd
      if result != 0 && respond_to?(:sys_error, true)
        sys_error(cmd)
      end
      result
    end
  end

  def cap(cmd)
    unless @quiet
      puts "\e[35m#{Dir.pwd}$\e[0m `#{cmd}`"
    end
    unless @no_exec
      `#{cmd}`
    end
  end
end
