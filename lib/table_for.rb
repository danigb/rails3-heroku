require 'table_for/helper'

module TableFor
  autoload :Builder, 'table_for/builder'

  mattr_accessor :table_for_tag
  @@table_for_tag = :table

  def self.setup
    yield self
  end
end

