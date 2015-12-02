class MerchantPage
  include PageObject

  div            :navigation_bar,                 :class => "navbar"
  link           :merchant_link,                  :xpath => "html/body/header/div/div/ul[1]/li[1]/a"
  link           :new_merchant_link,              :class => "btn pull-right"
  div            :create_marchant,                :class => "form-actions"
  text_field     :merchant_name,                  :id    =>  "merchant_name"
  text_field     :merchant_external_id,           :id    =>  "merchant_external_id"
  text_field     :merchant_address,               :id    =>  "merchant_address"
  text_field     :merchant_city,                  :id    =>  "merchant_city"
  text_field     :merchant_state,                 :id    =>  "merchant_state"
  text_field     :merchant_postal_code,           :id    =>  "merchant_postal_code"
  text_field     :merchant_phone,                 :id    =>  "merchant_phone"
  text_field     :merchant_latitude,              :id    =>  "merchant_latitude"
  text_field     :merchant_longitude,             :id => "merchant_longitude"
  text_field     :merchant_web_url,               :id    =>  "merchant_web_url"
  text_field     :merchant_email_address,         :id    =>  "merchant_email_address"
  text_field     :merchant_tagline,               :id    =>  "merchant_tagline"
  text_area      :merchant_description,           :id    =>  "merchant_description"
  text_field     :merchant_rating,                :id    =>  "merchant_rating"
  text_field     :merchant_main_category,         :id    =>  "merchant_main_category"
  text_field     :merchant_logo_image_url,        :id    =>  "merchant_logo_image_url"
  text_field     :merchant_brand_image_url,       :id    =>  "merchant_brand_image_url"
  text_field     :merchant_brand_image_url,       :id => "merchant_logo_image_slug"
  text_field     :merchant_brand_image_slug,      :id => "merchant_brand_image_slug"

  expected_element :navagation_bar

  def initialize_page
    has_expected_element?
  end

end
