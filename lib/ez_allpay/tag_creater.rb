require "ez_allpay/helper/keygen"
module EzAllpay
  module TagCreater

    include ActionView::Helpers::FormTagHelper
    include EzAllpay::Helper::Keygen

    def tag_form_create
      "<form action=#{EzAllpay.api_base_url} method=\"post\">"
    end

    def tag_params_adder(record_attrs)
      record_attrs.map do |key, value|
          tag_adder key, value
      end
    end

    def tag_key_adder
      tag_adder "CheckMacValue", create_calculate_check_mac_key  
    end

    def tag_adder(key, value)
      hidden_field_tag key, value
    end

    def submit_tag_adder
      "<input type=\"submit\" value\"結賬\" />"
    end

  end
end