class Portfolio < ApplicationRecord
    validates_presence_of :title,:body, :main_image, :thumb_image
    has_many :technologies

    def self.angular
        where(subtitle: 'Angular')
    end

    scope :ruby_on_rails_for_portfolio_items, -> {
        where(subtitle: 'Ruby On Rails')
    }

    after_initialize :set_defaults

    def set_defaults
        self.main_image ||= "https://via.placeholder.com/650"
        self.thumb_image ||= "https://via.placeholder.com/150"
    end
end
