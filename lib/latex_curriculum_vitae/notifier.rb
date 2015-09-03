require 'notifier'

module Notifier
  def self.run
    home = Dir.home
    prefix = "#{home}/.rvm/rubies/default"
    datadir = "#{prefix}/share"
    img = "#{datadir}/latex_curriculum_vitae/Pictures/arbeitsagentur.png"
    Notifier.notify(
        :image => "#{img}",
        :title => "Your Job Application",
        :message => "Your Job Application was created now."
    )
  end
end