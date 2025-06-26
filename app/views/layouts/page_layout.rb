class PageLayout < ApplicationLayout
  def initialize(subtitle: nil, **kwargs)
    super **kwargs
    @subtitle = subtitle
  end

  def template(&)
    super do
      header(class: "container") do
        if @title and @subtitle
          hgroup do
            h1(&@title)
            h2(&@subtitle)
          end
        else
          h1 { @title }
        end
      end
      main(class: "container", &)
    end
  end
end