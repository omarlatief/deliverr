=begin
#Deliverr API

# **Note:** As of February 24 2023, Deliverr is not accepting new API accounts. Existing integrations already using the Deliverr API in production may continue usage and development.  All other Deliverr accounts initiating Deliverr API requests will be denied access. A new Logistics API is being developed by Shopify and will be replacing the Deliverr API.  # Getting Started  To start using the Deliverr API, you must have an active login account to the Deliverr web portal. To inbound physical inventory, ship orders, process returns or parcel transactions, you'll also need to set up a billing account.  ## If you do not already have a Deliverr account 1. Create an account for free at https://sellerportal.deliverr.com 2. When you are asked to choose an integration, you can click <b>Skip</b> at the upper right corner 3. Once you have logged in, you can start the OAuth process below  ## If you already have a Deliverr account 1. You can access the Products, Webhooks and Reports API immediately regardless of billing status 2. All other APIs available will require you to have set up billing with Deliverr 3. The Returns, Parcel, and Parcel Integration APIs are only accessible to select merchants  ## Guides and examples  Please visit the <a href='https://support.deliverr.com/hc/en-us/sections/6332705638423-Deliverr-API'>Deliverr API Guide</a> to view steps and code examples.  # Release Notes  Please refer to the following <a href='https://support.deliverr.com/hc/en-us/articles/9399822031383'>Deliverr API - Release Notes</a> help center article to view the most recent changes to Deliverr API.  # Status Page  You can find information about the current status of the API endpoints at <a href='https://deliverrstatus.com/'>deliverrstatus.com</a>  

The version of the OpenAPI document: 1.0.0
Contact: support@deliverr.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.5.0

=end

require 'date'
require 'time'

module DeliverrAPI
  class OrderApiLineItem
    # A permanent unique reference for this product generated by and meaningful to the API user. This value will be used when sending orders to identify the product to ship, when reporting products shipped, and when reporting inventory levels or updates. This value should be chosen to represent a PHYSICAL product in the external system, not a virtual product, bundle or kit, unless the bundle or kit is inbounded as a single barcoded product. This value must be unique among all products created via API.
    attr_accessor :external_product_id

    # Unique line item identifier.
    attr_accessor :line_item_id

    # The quantity of the product to ship for this order.
    attr_accessor :quantity

    # Bundle items of this product in case the product is a bundle.
    attr_accessor :bundle_items

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'external_product_id' => :'externalProductId',
        :'line_item_id' => :'lineItemId',
        :'quantity' => :'quantity',
        :'bundle_items' => :'bundleItems'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'external_product_id' => :'String',
        :'line_item_id' => :'String',
        :'quantity' => :'Float',
        :'bundle_items' => :'Array<OrderApiBundleItem>'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DeliverrAPI::OrderApiLineItem` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `DeliverrAPI::OrderApiLineItem`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'external_product_id')
        self.external_product_id = attributes[:'external_product_id']
      end

      if attributes.key?(:'line_item_id')
        self.line_item_id = attributes[:'line_item_id']
      end

      if attributes.key?(:'quantity')
        self.quantity = attributes[:'quantity']
      end

      if attributes.key?(:'bundle_items')
        if (value = attributes[:'bundle_items']).is_a?(Array)
          self.bundle_items = value
        end
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @external_product_id.nil?
        invalid_properties.push('invalid value for "external_product_id", external_product_id cannot be nil.')
      end

      if @external_product_id.to_s.length > 255
        invalid_properties.push('invalid value for "external_product_id", the character length must be smaller than or equal to 255.')
      end

      if @external_product_id.to_s.length < 1
        invalid_properties.push('invalid value for "external_product_id", the character length must be great than or equal to 1.')
      end

      if !@line_item_id.nil? && @line_item_id.to_s.length > 255
        invalid_properties.push('invalid value for "line_item_id", the character length must be smaller than or equal to 255.')
      end

      if !@line_item_id.nil? && @line_item_id.to_s.length < 1
        invalid_properties.push('invalid value for "line_item_id", the character length must be great than or equal to 1.')
      end

      if @quantity.nil?
        invalid_properties.push('invalid value for "quantity", quantity cannot be nil.')
      end

      if @quantity < 1
        invalid_properties.push('invalid value for "quantity", must be greater than or equal to 1.')
      end

      if !@bundle_items.nil? && @bundle_items.length > 20
        invalid_properties.push('invalid value for "bundle_items", number of items must be less than or equal to 20.')
      end

      if !@bundle_items.nil? && @bundle_items.length < 1
        invalid_properties.push('invalid value for "bundle_items", number of items must be greater than or equal to 1.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @external_product_id.nil?
      return false if @external_product_id.to_s.length > 255
      return false if @external_product_id.to_s.length < 1
      return false if !@line_item_id.nil? && @line_item_id.to_s.length > 255
      return false if !@line_item_id.nil? && @line_item_id.to_s.length < 1
      return false if @quantity.nil?
      return false if @quantity < 1
      return false if !@bundle_items.nil? && @bundle_items.length > 20
      return false if !@bundle_items.nil? && @bundle_items.length < 1
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] external_product_id Value to be assigned
    def external_product_id=(external_product_id)
      if external_product_id.nil?
        fail ArgumentError, 'external_product_id cannot be nil'
      end

      if external_product_id.to_s.length > 255
        fail ArgumentError, 'invalid value for "external_product_id", the character length must be smaller than or equal to 255.'
      end

      if external_product_id.to_s.length < 1
        fail ArgumentError, 'invalid value for "external_product_id", the character length must be great than or equal to 1.'
      end

      @external_product_id = external_product_id
    end

    # Custom attribute writer method with validation
    # @param [Object] line_item_id Value to be assigned
    def line_item_id=(line_item_id)
      if !line_item_id.nil? && line_item_id.to_s.length > 255
        fail ArgumentError, 'invalid value for "line_item_id", the character length must be smaller than or equal to 255.'
      end

      if !line_item_id.nil? && line_item_id.to_s.length < 1
        fail ArgumentError, 'invalid value for "line_item_id", the character length must be great than or equal to 1.'
      end

      @line_item_id = line_item_id
    end

    # Custom attribute writer method with validation
    # @param [Object] quantity Value to be assigned
    def quantity=(quantity)
      if quantity.nil?
        fail ArgumentError, 'quantity cannot be nil'
      end

      if quantity < 1
        fail ArgumentError, 'invalid value for "quantity", must be greater than or equal to 1.'
      end

      @quantity = quantity
    end

    # Custom attribute writer method with validation
    # @param [Object] bundle_items Value to be assigned
    def bundle_items=(bundle_items)
      if !bundle_items.nil? && bundle_items.length > 20
        fail ArgumentError, 'invalid value for "bundle_items", number of items must be less than or equal to 20.'
      end

      if !bundle_items.nil? && bundle_items.length < 1
        fail ArgumentError, 'invalid value for "bundle_items", number of items must be greater than or equal to 1.'
      end

      @bundle_items = bundle_items
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          external_product_id == o.external_product_id &&
          line_item_id == o.line_item_id &&
          quantity == o.quantity &&
          bundle_items == o.bundle_items
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [external_product_id, line_item_id, quantity, bundle_items].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      new.build_from_hash(attributes)
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      attributes = attributes.transform_keys(&:to_sym)
      self.class.openapi_types.each_pair do |key, type|
        if attributes[self.class.attribute_map[key]].nil? && self.class.openapi_nullable.include?(key)
          self.send("#{key}=", nil)
        elsif type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :Time
        Time.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :Boolean
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        # models (e.g. Pet) or oneOf
        klass = DeliverrAPI.const_get(type)
        klass.respond_to?(:openapi_one_of) ? klass.build(value) : klass.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        if value.nil?
          is_nullable = self.class.openapi_nullable.include?(attr)
          next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
        end

        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

  end

end
