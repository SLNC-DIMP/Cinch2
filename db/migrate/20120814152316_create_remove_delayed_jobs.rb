class CreateRemoveDelayedJobs < ActiveRecord::Migration
  def self.up
    drop_table :delayed_jobs
  end
end
