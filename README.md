
# SeoHelper

SeoHelper 是一個 Ruby gem,用於簡化網站 SEO 相關標籤的生成。

## 功能

- 生成 title、description、keywords 等 meta 標籤
- 支持設置默認值和自定義格式化
- 提供控制器和視圖輔助方法
- 可配置是否跳過空白值

## 安裝

將以下內容添加到您的 Gemfile:

``` ruby
gem 'seo_helper'
```

然後執行:

`$ bundle install`


## 使用

### 配置

在 `config/initializers/seo_helper.rb` 中進行配置:

``` ruby
SeoHelper.configure do |config|
    config.site_name = "我的網站"
    config.default_page_description = "這是一個很棒的網站"
    config.default_page_keywords = %w(awesome website)
    config.default_page_image = "https://example.com/default.jpg"
end
```


### 在控制器中使用

``` ruby
class PagesController < ApplicationController
    def show
    set_page_title "關於我們"
    set_page_description "了解我們公司的更多信息"
    set_page_keywords %w(公司 介紹 團隊)
    set_page_image "https://example.com/about.jpg"
    end
end
```

### 在視圖中使用

在您的布局文件中:

``` erb
<head>
    <%= render_page_title_tag %>
    <%= render_page_description_meta_tag %>
    <%= render_page_keywords_meta_tag %>
    <%= render_page_image_link_tag %>
</head>
```

## 版本

當前版本: 0.1.0

## 貢獻

歡迎提交問題報告和拉取請求。