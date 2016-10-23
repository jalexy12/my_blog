class Post < ApplicationRecord
	has_many :post_tags
	has_many :tags, through: :post_tags

	enum category: [:philosophy, :code, :books, :life]
	before_save :convert_to_html

	scope :published, -> { where(published: true) }

	private 

	def convert_to_html
		renderer = PostRenderer.new
		markdown = Redcarpet::Markdown.new(renderer)
		self.converted_content = markdown.render(raw_content)
	end
end
