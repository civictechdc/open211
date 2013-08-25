RailsAdmin.config do |config|
  config.authorize_with :cancan

  # config.actions do
  #   # root actions
  #   dashboard do
  #     statistics false
  #   end
  #   # collection actions
  #   index # mandatory
  #   new
  #   export
  #   history_index
  #   bulk_delete
  #   # member actions
  #   show
  #   edit
  #   delete
  #   history_show
  #   show_in_app
  # end

  config.model 'Organization' do
    weight -1

    list do
      field :name
      field :locations
    end

    edit do
      field :name
    end

    create do
      field :name
      field :locations do
        visible false
      end
    end
  end

  config.model 'Service' do
    weight -1

    list do
      field :name
      field :location
    end

    edit do
      field :location
      field :audience
      field :eligibility
      field :fees
      field :funding_sources
      field :how_to_apply
      field :keywords
      field :service_areas
      field :wait

      #field :category
      field :categories
    end
  end

  config.model 'Contact' do
    list do
      field :name
      field :title
      field :location
    end
  end

  config.model 'Location' do
    object_label_method do
      :full_address
    end

    list do
      field :full_address
      field :organization
    end

    edit do
      field :organization
      field :name
      field :description, :text do
        html_attributes rows: 20, cols: 50
      end
      field :short_desc, :text
      field :address do
        help 'Location must have at least one address type'
      end
      field :mail_address do
        help 'Location must have at least one address type'
      end
      field :hours
      field :transportation
      field :ask_for
      field :emails
      field :faxes
      field :phones
      field :languages
      field :urls

      # field :accessibility do
      #   render do
      #     bindings[:form].check_box("accessibility",
      #       bindings[:object].accessibility_enum, [], { :multiple => true })
      #   end
      #   #partial "checkbox"
      # end

      # field :languages do
      #   render do
      #     bindings[:form].select("languages", bindings[:object].languages_enum, {}, { :multiple => true })
      #   end
      # end
    end
  end

  config.model 'Address' do
    object_label_method do
      :street
    end
  end

  config.model 'MailAddress' do
    object_label_method do
      :street
    end
  end

  config.model 'Category' do
    object_label_method do
      :name
    end
    list do
      field :name
      field :parent
    end
    edit do
      field :name
      field :parent
    end
  end
end