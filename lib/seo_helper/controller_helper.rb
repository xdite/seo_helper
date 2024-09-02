module SeoHelper
  module ControllerHelper

     # will also append current page number and the site name
     def set_page_title(title, site_name = nil)
       site_name ||= SeoHelper.configuration.site_name

       if params[:page]
         @page_title = SeoHelper.format_current_page(title, params[:page])
       else
         @page_title = title
       end
       @page_title = SeoHelper.format_site_name(@page_title, site_name)
     end

     def set_page_description(description)
       @page_description = description
     end

     def set_page_keywords(keywords)
       @page_keywords = keywords
     end

     def set_page_image(image_src)
       @page_image = image_src
     end
   end

end
