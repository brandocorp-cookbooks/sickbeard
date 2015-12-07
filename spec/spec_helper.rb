require 'chefspec'
require 'chefspec/berkshelf'

ChefSpec::Coverage.start!

##################
# Monkey Patches #
##################

# silence all logging from chef-client
Chef::Log.init('/dev/null')

# silence the deprecation warnings
module Kernel
  def deprecated(*)
    # noop
  end
end

# silence 'warning: constant already defined' stuff
$VERBOSE = nil
