require 'xan_markup/markupizer'
require 'xan_markup/caller'

module XanMarkup
  module Helper
    def markupize(content, opt={})
      Markupizer.new(content).markupize &Caller.new(self).call
    end
  end
end
