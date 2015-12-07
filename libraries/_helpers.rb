module Sickbeard
  module Helpers
    module Common
      def sickbeard_user
        node['sickbeard']['user']
      end

      def sickbeard_version
        node['sickbeard']['version']
      end

      def sickbeard_home
        node['sickbeard']['home']
      end

      def sickbeard_repository
        node['sickbeard']['repository']
      end
    end

    module Recipe
      include Sickbeard::Helpers::Common
    end

    module Git
      include Sickbeard::Helpers::Common

      def tagged_revision_for_version
        tagged_versions[sickbeard_version]
      end

      def tagged_versions
        {
          'master' => 'master',
          '507' => 'db2658a9c12f0282d98d8eb23cb4575b58fc39c9',
          '506' => 'c017536b9906bff46fa46ed3f730cdb5c7c4434a',
          '505' => '7f9638ffaa84a764b5ab001b0ba3b856ba6e3aba',
          '504' => '191455098ede165b85eb24c47dd1de914e4042fa'
        }
      end
    end
  end
end

Chef::Recipe.send(:include, Sickbeard::Helpers::Recipe)
Chef::Resource::Git.send(:include, Sickbeard::Helpers::Git)
Chef::Resource::Template.send(:include, Sickbeard::Helpers::Common)
