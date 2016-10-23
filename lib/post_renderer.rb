require 'redcarpet'
class PostRenderer < Redcarpet::Render::HTML

	def header(text, header_level)
		%(<h#{header_level} class="post-header-l#{header_level}">#{text}</h#{header_level})
	end

	def block_code(code, language)
		%(<pre><code class="#{language}">#{code}</code></pre>)
	end

	def paragraph(text)
		%(<p class="post-paragraph">#{text}</p>)
	end
end