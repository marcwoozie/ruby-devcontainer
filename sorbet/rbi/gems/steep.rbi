# This file is autogenerated. Do not edit it by hand. Regenerate it with:
#   srb rbi gems

# typed: strict
#
# If you would like to make changes to this file, great! Please create the gem's shim here:
#
#   https://github.com/sorbet/sorbet-typed/new/master?filename=lib/steep/all/steep.rbi
#
# steep-1.7.1

module Steep
  def self.log_error(exn, message: nil); end
  def self.log_output; end
  def self.log_output=(output); end
  def self.logger; end
  def self.measure(message, level: nil, threshold: nil); end
  def self.measure2(message, level: nil); end
  def self.new_logger(output, prev_level); end
  def self.ui_logger; end
end
class Steep::Sampler
  def average; end
  def count; end
  def initialize; end
  def percentile(p); end
  def sample(message); end
  def slowests(num); end
  def total; end
end
module GCCounter
  def count_objects(title, regexp = nil, skip: nil); end
  def self.count_objects(title, regexp = nil, skip: nil); end
end
