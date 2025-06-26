# frozen_string_literal: true

class HomeController < ApplicationController
  class Index < ApplicationView
    def title
      "Spyglasses Rails Demo"
    end

    def subtitle
      "AI Agent Detection in Action"
    end

    def template
      # Hero Section
      section(class: "hero") do
        div(class: "container") do
          p(class: "lead") do
            plain "This Rails application demonstrates "
            strong { "Spyglasses" }
            plain " - an AI agent detection service that protects your web content from unauthorized AI crawlers and training bots."
          end
        end
      end

      # Features Section
      section do
        div(class: "container") do
          h2 { "How It Works" }
          
          div(class: "grid") do
            # Real-time Detection
            article do
              h3 { "🔍 Real-time Detection" }
              p do
                plain "Automatically identifies AI agents, crawlers, and training bots visiting your site using advanced pattern matching and user agent analysis."
              end
            end

            # Flexible Blocking
            article do
              h3 { "🛡️ Flexible Blocking" }
              p do
                plain "Configure custom allow/block rules for different AI services. Protect your content while allowing legitimate access when needed."
              end
            end

            # Analytics & Insights
            article do
              h3 { "📊 Analytics & Insights" }
              p do
                plain "Track which AI services are accessing your content, monitor detection patterns, and gain insights into automated traffic."
              end
            end
          end
        end
      end

      # Detection Status
      section do
        div(class: "container") do
          h2 { "Current Detection Status" }
          
          div(class: "detection-status") do
            # Check if current request is from AI
            if request.headers['User-Agent']&.match?(/ChatGPT|Claude|GPTBot|ClaudeBot|Perplexity/i)
              article(class: "ai-detected") do
                h3(style: "color: #e74c3c;") { "🤖 AI Agent Detected!" }
                p do
                  plain "Your request has been identified as coming from an AI agent or crawler. "
                  strong { "User Agent: " }
                  code { request.headers['User-Agent']&.truncate(100) }
                end
              end
            else
              article(class: "human-detected") do
                h3(style: "color: #27ae60;") { "✅ Human Visitor" }
                p do
                  plain "Your request appears to be from a human visitor. "
                  strong { "User Agent: " }
                  code { request.headers['User-Agent']&.truncate(100) }
                end
              end
            end
          end
        end
      end

      # Integration Example
      section do
        div(class: "container") do
          h2 { "Rails Integration" }
          p { "This demo shows Spyglasses integrated into a Rails application with just a few lines of code:" }
          
          pre do
            code do
              plain <<~CODE
                # Gemfile
                gem 'spyglasses', '~> 1.1'

                # config/application.rb
                config.middleware.use Spyglasses::Middleware,
                  api_key: ENV['SPYGLASSES_API_KEY'],
                  platform_type: 'rails',
                  auto_sync: true
              CODE
            end
          end
        end
      end

      # Demo Features
      section do
        div(class: "container") do
          h2 { "Explore the Demo" }
          p { "This Rails application includes a complete blog system to test with:" }
          
          div(class: "grid") do
            article do
              h4 { "📝 Blog System" }
              p { "Create blogs, write posts, and see how Spyglasses protects your content." }
              link_to("/blogs", role: "button") { "View Blogs" }
            end
            
            article do
              h4 { "🔧 Test Detection" }
              p { "Try accessing this site with different user agents to see detection in action." }
              button(onclick: "location.reload()", role: "button", class: "secondary") { "Refresh Page" }
            end
          end
        end
      end

      # Footer CTA
      section(style: "background-color: var(--pico-muted-color); margin-top: 2rem; padding: 2rem 0;") do
        div(class: "container") do
          div(style: "text-align: center;") do
            h3 { "Ready to Protect Your Content?" }
            p { "Get started with Spyglasses and take control of AI access to your web applications." }
            div do
              link_to("https://spyglasses.dev", role: "button", style: "margin: 0.5rem;") { "Learn More" }
              link_to("https://github.com/spyglasses", role: "button", class: "secondary", style: "margin: 0.5rem;") { "View on GitHub" }
            end
          end
        end
      end
    end
  end

  def index
    render Index.new
  end
end 