# frozen_string_literal: true

class HomeController < ApplicationController
  # Skip the assignable behavior since this is a static page
  skip_before_action :assign_parent_collection, :assign_parent_member, :assign_collection, :assign_member
  
  class Index < ApplicationView
    def title
      "Spyglasses - AI SEO & Analytics Platform | Detect and Manage AI Traffic"
    end

    def subtitle
      nil # No subtitle for this layout
    end

    def template
      # Custom styles embedded in the view
      style do
        plain <<~CSS
          .hero-section {
            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
            color: white;
            padding: 80px 0;
            text-align: center;
            margin: -2rem -2rem 3rem -2rem;
          }
          
          .hero-section h1 {
            font-size: 3.5rem;
            margin-bottom: 1rem;
            font-weight: 700;
            text-shadow: 2px 2px 4px rgba(0,0,0,0.3);
          }
          
          .hero-section .subtitle {
            font-size: 1.3rem;
            margin-bottom: 2rem;
            opacity: 0.95;
            max-width: 600px;
            margin-left: auto;
            margin-right: auto;
          }
          
          .highlight {
            background: linear-gradient(120deg, #ffd89b 0%, #19547b 100%);
            background-clip: text;
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
            font-weight: 600;
          }
          
          .feature-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
            gap: 2rem;
            margin: 2rem 0;
          }
          
          .feature-card {
            padding: 2rem;
            border-radius: 12px;
            box-shadow: 0 10px 30px rgba(0,0,0,0.1);
            background: white;
            border: 1px solid #e2e8f0;
            transition: transform 0.3s ease;
          }
          
          .feature-card:hover {
            transform: translateY(-5px);
          }
          
          .feature-icon {
            font-size: 3rem;
            margin-bottom: 1rem;
          }
          
          .ai-seo-section {
            background: linear-gradient(135deg, #f7fafc 0%, #edf2f7 100%);
            padding: 60px 2rem;
            margin: 3rem -2rem;
            border-radius: 12px;
          }
          
          .ai-seo-content {
            display: grid;
            grid-template-columns: 1fr 1fr;
            gap: 3rem;
            align-items: center;
          }
          
          .stats-section {
            background: #2d3748;
            color: white;
            padding: 60px 2rem;
            margin: 3rem -2rem;
            border-radius: 12px;
            text-align: center;
          }
          
          .stats-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(200px, 1fr));
            gap: 2rem;
            margin-top: 2rem;
          }
          
          .stat-item h3 {
            font-size: 3rem;
            margin-bottom: 0.5rem;
            color: #63b3ed;
          }
          
          @media (max-width: 768px) {
            .hero-section h1 {
              font-size: 2.5rem;
            }
            
            .ai-seo-content {
              grid-template-columns: 1fr;
              gap: 2rem;
            }
            
            .stats-grid {
              grid-template-columns: repeat(2, 1fr);
            }
          }
        CSS
      end

      # Hero Section
      section(class: "hero-section") do
        div(class: "container") do
          h1 do
            plain "The Future of "
            span(class: "highlight") { "AI SEO" }
            plain " is Here"
          end
          p(class: "subtitle") do
            plain "Discover, track, and optimize your website's AI traffic with the most advanced "
            strong { "AI analytics platform" }
            plain " designed for the age of artificial intelligence."
          end
          link_to("https://www.spyglasses.io", role: "button", target: "_blank") { "Start Free Trial" }
        end
      end

      # Features Section
      section do
        div(class: "container") do
          h2 do
            plain "Revolutionary "
            span(class: "highlight") { "AI Traffic Detection" }
          end
          
          div(class: "feature-grid") do
            article(class: "feature-card") do
              div(class: "feature-icon") { "🤖" }
              h3 { "AI Agent Detection" }
              p do
                plain "Detect and track visits from ChatGPT, Claude, Perplexity, and other AI agents. Our "
                strong { "AI SEO tools" }
                plain " reveal the hidden traffic that traditional analytics miss."
              end
            end

            article(class: "feature-card") do
              div(class: "feature-icon") { "📊" }
              h3 { "Advanced AI Analytics" }
              p do
                plain "Get comprehensive insights into your "
                strong { "AI traffic patterns" }
                plain " with our industry-leading analytics platform designed specifically for AI-driven web interactions."
              end
            end

            article(class: "feature-card") do
              div(class: "feature-icon") { "🛡️" }
              h3 { "Smart Traffic Control" }
              p do
                plain "Protect your content from unwanted AI crawlers while optimizing for beneficial "
                strong { "AI search engine optimization" }
                plain ". Take control of your digital presence."
              end
            end

            article(class: "feature-card") do
              div(class: "feature-icon") { "🚀" }
              h3 { "AI SEO Optimization" }
              p do
                plain "Optimize your website for AI-powered search engines and chatbots. Our platform helps you rank higher in "
                strong { "AI search results" }
                plain " and conversational queries."
              end
            end

            article(class: "feature-card") do
              div(class: "feature-icon") { "🔗" }
              h3 { "Universal Integration" }
              p do
                plain "Seamlessly integrate with any website platform including Rails, Django, WordPress, Next.js, and more. Our "
                strong { "AI analytics tools" }
                plain " work everywhere."
              end
            end

            article(class: "feature-card") do
              div(class: "feature-icon") { "⚡" }
              h3 { "Real-Time Monitoring" }
              p do
                plain "Monitor your "
                strong { "AI traffic" }
                plain " in real-time with instant alerts and detailed reports. Stay ahead of the curve in the evolving landscape of artificial intelligence."
              end
            end
          end
        end
      end

      # AI SEO Section
      section(class: "ai-seo-section") do
        div(class: "container") do
          div(class: "ai-seo-content") do
            div do
              h2 do
                plain "Master "
                span(class: "highlight") { "AI SEO" }
                plain " & Analytics"
              end
              p do
                plain "Traditional "
                strong { "SEO strategies" }
                plain " aren't enough anymore. With AI agents like ChatGPT and Claude becoming primary sources of information discovery, you need specialized "
                strong { "AI SEO tools" }
                plain " to stay competitive."
              end
              p do
                plain "Spyglasses provides the most comprehensive "
                strong { "AI analytics platform" }
                plain " to help you understand, track, and optimize for AI-driven traffic. Whether you're focused on "
                strong { "AI search engine optimization" }
                plain " or need advanced "
                strong { "AI traffic analytics" }
                plain ", we've got you covered."
              end
              p do
                plain "Join the future of digital marketing with our cutting-edge "
                strong { "AI SEO platform" }
                plain " that reveals insights traditional analytics tools simply cannot provide."
              end
            end
            div do
              article(style: "background: white; padding: 2rem; border-radius: 12px; box-shadow: 0 20px 40px rgba(0,0,0,0.1);") do
                h4(style: "margin-bottom: 1rem; color: #2d3748;") { "AI Traffic Sources" }
                div(style: "margin-bottom: 1rem;") do
                  div(style: "background: #8e24aa; height: 20px; border-radius: 10px; margin-bottom: 0.5rem;")
                  small { "ChatGPT • 45% of AI traffic" }
                end
                div(style: "margin-bottom: 1rem;") do
                  div(style: "background: #ed8936; height: 15px; border-radius: 10px; margin-bottom: 0.5rem; width: 70%;")
                  small { "Claude AI • 32% of AI traffic" }
                end
                div(style: "margin-bottom: 1rem;") do
                  div(style: "background: #38b2ac; height: 10px; border-radius: 10px; margin-bottom: 0.5rem; width: 45%;")
                  small { "Perplexity • 23% of AI traffic" }
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

                # config/initializers/spyglasses.rb
                Spyglasses.configure do |config|
                  config.api_key = ENV['SPYGLASSES_API_KEY']
                  config.platform_type = 'rails'
                  config.auto_sync = true
                end

                Rails.application.config.middleware.use Spyglasses::Middleware
              CODE
            end
          end
        end
      end

      # Footer CTA
      section(style: "background: linear-gradient(135deg, #8e24aa 0%, #7b1fa2 100%); color: white; margin-top: 3rem; padding: 3rem 2rem; margin-left: -2rem; margin-right: -2rem; border-radius: 12px; text-align: center;") do
        div(class: "container") do
          h3 { "Ready to Master AI SEO?" }
          p(style: "font-size: 1.1rem; margin-bottom: 2rem;") { "Get started with Spyglasses and take control of AI access to your web applications." }
          div do
            link_to("https://www.spyglasses.io", role: "button", style: "margin: 0.5rem; background: white; color: #8e24aa;", target: "_blank") { "Start Free Trial" }
            link_to("https://github.com/orchestra-code/spyglasses-ruby", role: "button", class: "secondary", style: "margin: 0.5rem; border-color: white; color: white;", target: "_blank") { "View the plugin source on GitHub" }
          end
        end
      end
    end
  end

  def index
    render Index.new
  end
end 