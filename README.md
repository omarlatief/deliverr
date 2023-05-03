# deliverr_api

DeliverrAPI - the Ruby gem for the Deliverr API


**Note:** As of February 24 2023, Deliverr is not accepting new API accounts. Existing integrations already using the Deliverr API in production may continue usage and development. 
All other Deliverr accounts initiating Deliverr API requests will be denied access. A new Logistics API is being developed by Shopify and will be replacing the Deliverr API.

# Getting Started

To start using the Deliverr API, you must have an active login account to the Deliverr web portal.
To inbound physical inventory, ship orders, process returns or parcel transactions, you'll also need to set up a billing account.

## If you do not already have a Deliverr account
1. Create an account for free at https://sellerportal.deliverr.com
2. When you are asked to choose an integration, you can click <b>Skip</b> at the upper right corner
3. Once you have logged in, you can start the OAuth process below

## If you already have a Deliverr account
1. You can access the Products, Webhooks and Reports API immediately regardless of billing status
2. All other APIs available will require you to have set up billing with Deliverr
3. The Returns, Parcel, and Parcel Integration APIs are only accessible to select merchants

## Guides and examples

Please visit the <a href='https://support.deliverr.com/hc/en-us/sections/6332705638423-Deliverr-API'>Deliverr API Guide</a> to view steps and code examples.

# Release Notes

Please refer to the following <a href='https://support.deliverr.com/hc/en-us/articles/9399822031383'>Deliverr API - Release Notes</a> help center article to view the most recent changes to Deliverr API.

# Status Page

You can find information about the current status of the API endpoints at <a href='https://deliverrstatus.com/'>deliverrstatus.com</a>



This SDK is automatically generated by the [OpenAPI Generator](https://openapi-generator.tech) project:

- API version: 1.0.0
- Package version: 1.0.0
- Build package: org.openapitools.codegen.languages.RubyClientCodegen

## Installation

### Build a gem

To build the Ruby code into a gem:

```shell
gem build deliverr_api.gemspec
```

Then either install the gem locally:

```shell
gem install ./deliverr_api-1.0.0.gem
```

(for development, run `gem install --dev ./deliverr_api-1.0.0.gem` to install the development dependencies)

or publish the gem to a gem hosting service, e.g. [RubyGems](https://rubygems.org/).

Finally add this to the Gemfile:

    gem 'deliverr_api', '~> 1.0.0'

### Install from Git

If the Ruby gem is hosted at a git repository: https://github.com/GIT_USER_ID/GIT_REPO_ID, then add the following in the Gemfile:

    gem 'deliverr_api', :git => 'https://github.com/GIT_USER_ID/GIT_REPO_ID.git'

### Include the Ruby code directly

Include the Ruby code directly using `-I` as follows:

```shell
ruby -Ilib script.rb
```

## Getting Started

Please follow the [installation](#installation) procedure and then run the following code:

```ruby
# Load the gem
require 'deliverr_api'

# Setup authorization
DeliverrAPI.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2.0
  config.access_token = 'YOUR ACCESS TOKEN'
  # Configure a proc to get access tokens in lieu of the static access_token configuration
  config.access_token_getter = -> { 'YOUR TOKEN GETTER PROC' } 
  # Configure faraday connection
  config.configure_faraday_connection { |connection| 'YOUR CONNECTION CONFIG PROC' }
end

api_instance = DeliverrAPI::BundlesApi.new
api_bundle_model = DeliverrAPI::ApiBundleModel.new({external_bundle_id: 'external_bundle_id_example', title: 'title_example', sku: 'sku_example', bundle_contents: [DeliverrAPI::BundleContent.new({product_id: 'product_id_example', quantity: 3.56})]}) # ApiBundleModel | 

begin
  result = api_instance.create_bundle(api_bundle_model)
  p result
rescue DeliverrAPI::ApiError => e
  puts "Exception when calling BundlesApi->create_bundle: #{e}"
end

```

## Documentation for API Endpoints

All URIs are relative to *http://localhost:3000*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*DeliverrAPI::BundlesApi* | [**create_bundle**](docs/BundlesApi.md#create_bundle) | **POST** /bundles/v1/bundle | 
*DeliverrAPI::BundlesApi* | [**get_bundle**](docs/BundlesApi.md#get_bundle) | **GET** /bundles/v1/bundle/{bundleId} | 
*DeliverrAPI::BundlesApi* | [**get_bundle_by_external_bundle_id**](docs/BundlesApi.md#get_bundle_by_external_bundle_id) | **GET** /bundles/v1/bundle/externalId/{externalBundleId} | 
*DeliverrAPI::BundlesApi* | [**get_bundle_inventory**](docs/BundlesApi.md#get_bundle_inventory) | **GET** /bundles/v1/bundle/{bundleId}/inventory | 
*DeliverrAPI::BundlesApi* | [**link_alias_to_bundle**](docs/BundlesApi.md#link_alias_to_bundle) | **PATCH** /bundles/v1/bundle/{bundleId}/link/{externalBundleId} | 
*DeliverrAPI::BundlesApi* | [**unlink_alias_from_bundles**](docs/BundlesApi.md#unlink_alias_from_bundles) | **PATCH** /bundles/v1/bundle/unlink/externalId/{externalBundleId} | 
*DeliverrAPI::OAuthApi* | [**authorization_redirect**](docs/OAuthApi.md#authorization_redirect) | **GET** /oauth/v1/authorize | 
*DeliverrAPI::OAuthApi* | [**exchange_token**](docs/OAuthApi.md#exchange_token) | **POST** /oauth/v1/token | 
*DeliverrAPI::OrdersApi* | [**cancel_order**](docs/OrdersApi.md#cancel_order) | **POST** /orders/v1/order/{orderId}/cancel | 
*DeliverrAPI::OrdersApi* | [**create_order**](docs/OrdersApi.md#create_order) | **POST** /orders/v1/order | 
*DeliverrAPI::OrdersApi* | [**get_order**](docs/OrdersApi.md#get_order) | **GET** /orders/v1/order/{orderId} | 
*DeliverrAPI::OrdersApi* | [**get_order_by_external_id**](docs/OrdersApi.md#get_order_by_external_id) | **GET** /orders/v1/order/externalId/{externalOrderId} | 
*DeliverrAPI::OrdersApi* | [**retry_order**](docs/OrdersApi.md#retry_order) | **POST** /orders/v1/order/{orderId}/retry | 
*DeliverrAPI::ParcelIntegrationApi* | [**create_label_generation_job**](docs/ParcelIntegrationApi.md#create_label_generation_job) | **POST** /parcel-integration/v1/job | 
*DeliverrAPI::ParcelsApi* | [**create_parcel**](docs/ParcelsApi.md#create_parcel) | **POST** /parcels/v1/parcel | 
*DeliverrAPI::ParcelsApi* | [**get_parcel**](docs/ParcelsApi.md#get_parcel) | **GET** /parcels/v1/parcel/{parcelId} | 
*DeliverrAPI::ParcelsApi* | [**get_parcel_tracking**](docs/ParcelsApi.md#get_parcel_tracking) | **GET** /parcels/v1/parcel/{parcelId}/tracking | 
*DeliverrAPI::ParcelsApi* | [**get_quote**](docs/ParcelsApi.md#get_quote) | **POST** /parcels/v1/parcel/quote | 
*DeliverrAPI::ParcelsApi* | [**get_tracking_url**](docs/ParcelsApi.md#get_tracking_url) | **GET** /parcels/v1/trackingUrl/{parcelId} | 
*DeliverrAPI::ProductsApi* | [**create_product**](docs/ProductsApi.md#create_product) | **POST** /products/v1/product | 
*DeliverrAPI::ProductsApi* | [**create_product_barcode**](docs/ProductsApi.md#create_product_barcode) | **POST** /products/v1/product/{productId}/barcode | 
*DeliverrAPI::ProductsApi* | [**get_all_inventory**](docs/ProductsApi.md#get_all_inventory) | **GET** /products/v1/product/inventory | 
*DeliverrAPI::ProductsApi* | [**get_product**](docs/ProductsApi.md#get_product) | **GET** /products/v1/product/{productId} | 
*DeliverrAPI::ProductsApi* | [**get_product_by_external_product_id**](docs/ProductsApi.md#get_product_by_external_product_id) | **GET** /products/v1/product/externalId/{externalProductId} | 
*DeliverrAPI::ProductsApi* | [**get_product_inventory**](docs/ProductsApi.md#get_product_inventory) | **GET** /products/v1/product/{productId}/inventory | 
*DeliverrAPI::ProductsApi* | [**get_products**](docs/ProductsApi.md#get_products) | **GET** /products/v1/product/products | 
*DeliverrAPI::ProductsApi* | [**get_warehouse_details**](docs/ProductsApi.md#get_warehouse_details) | **GET** /products/v1/product/warehouse | 
*DeliverrAPI::ProductsApi* | [**link_alias_to_product**](docs/ProductsApi.md#link_alias_to_product) | **PATCH** /products/v1/product/{productId}/link/{externalProductId} | 
*DeliverrAPI::ProductsApi* | [**unlink_alias_from_products**](docs/ProductsApi.md#unlink_alias_from_products) | **PATCH** /products/v1/product/unlink/externalId/{externalProductId} | 
*DeliverrAPI::ProductsApi* | [**update_product**](docs/ProductsApi.md#update_product) | **PATCH** /products/v1/product/{productId} | 
*DeliverrAPI::ReportsApi* | [**generate_report**](docs/ReportsApi.md#generate_report) | **POST** /reports/v1/report | 
*DeliverrAPI::ReportsApi* | [**get_report_status**](docs/ReportsApi.md#get_report_status) | **GET** /reports/v1/status/{reportReference} | 
*DeliverrAPI::ReturnsApi* | [**cancel_order_return**](docs/ReturnsApi.md#cancel_order_return) | **PUT** /returns/v1/orders/{returnId}/cancel | 
*DeliverrAPI::ReturnsApi* | [**create_order_return**](docs/ReturnsApi.md#create_order_return) | **POST** /returns/v1/orders | 
*DeliverrAPI::ReturnsApi* | [**get_order_return**](docs/ReturnsApi.md#get_order_return) | **GET** /returns/v1/orders/{returnId} | 
*DeliverrAPI::StorageApi* | [**get_inbound_order**](docs/StorageApi.md#get_inbound_order) | **GET** /storage/v1/inbounds/{shippingPlanId} | 
*DeliverrAPI::WebhooksApi* | [**create_webhook**](docs/WebhooksApi.md#create_webhook) | **POST** /webhooks/v1/webhook | 
*DeliverrAPI::WebhooksApi* | [**delete_webhook**](docs/WebhooksApi.md#delete_webhook) | **DELETE** /webhooks/v1/webhook/{webhookId} | 
*DeliverrAPI::WebhooksApi* | [**get_webhook**](docs/WebhooksApi.md#get_webhook) | **GET** /webhooks/v1/webhook/{webhookId} | 
*DeliverrAPI::WebhooksApi* | [**get_webhooks**](docs/WebhooksApi.md#get_webhooks) | **GET** /webhooks/v1/webhook | 
*DeliverrAPI::WebhooksApi* | [**trigger_mock_webhook_event**](docs/WebhooksApi.md#trigger_mock_webhook_event) | **POST** /webhooks/v1/event | 


## Documentation for Models

 - [DeliverrAPI::AcceptedSuccess](docs/AcceptedSuccess.md)
 - [DeliverrAPI::Address](docs/Address.md)
 - [DeliverrAPI::ApiBundleInventoryResponseModel](docs/ApiBundleInventoryResponseModel.md)
 - [DeliverrAPI::ApiBundleModel](docs/ApiBundleModel.md)
 - [DeliverrAPI::ApiBundleModelResponse](docs/ApiBundleModelResponse.md)
 - [DeliverrAPI::ApiInboundShipmentStatus](docs/ApiInboundShipmentStatus.md)
 - [DeliverrAPI::ApiInventoryResponseModel](docs/ApiInventoryResponseModel.md)
 - [DeliverrAPI::ApiOrderShipmentStatus](docs/ApiOrderShipmentStatus.md)
 - [DeliverrAPI::ApiOrderStatus](docs/ApiOrderStatus.md)
 - [DeliverrAPI::ApiProductModel](docs/ApiProductModel.md)
 - [DeliverrAPI::ApiProductModelResponse](docs/ApiProductModelResponse.md)
 - [DeliverrAPI::ApiUpdateProductModel](docs/ApiUpdateProductModel.md)
 - [DeliverrAPI::ApiWarehouseResponseModel](docs/ApiWarehouseResponseModel.md)
 - [DeliverrAPI::BadCreateShippingRequestError](docs/BadCreateShippingRequestError.md)
 - [DeliverrAPI::BadOrderRequestError](docs/BadOrderRequestError.md)
 - [DeliverrAPI::BadParcelRequestError](docs/BadParcelRequestError.md)
 - [DeliverrAPI::BadRequestError](docs/BadRequestError.md)
 - [DeliverrAPI::BarcodeOption](docs/BarcodeOption.md)
 - [DeliverrAPI::BoxLabelsFormat](docs/BoxLabelsFormat.md)
 - [DeliverrAPI::BundleContent](docs/BundleContent.md)
 - [DeliverrAPI::BundleMembership](docs/BundleMembership.md)
 - [DeliverrAPI::CategoryEnum](docs/CategoryEnum.md)
 - [DeliverrAPI::ConflictError](docs/ConflictError.md)
 - [DeliverrAPI::ContainerSize](docs/ContainerSize.md)
 - [DeliverrAPI::CountryCode](docs/CountryCode.md)
 - [DeliverrAPI::Currency](docs/Currency.md)
 - [DeliverrAPI::DeliverrAddress](docs/DeliverrAddress.md)
 - [DeliverrAPI::Error](docs/Error.md)
 - [DeliverrAPI::ExpiredTrackingData](docs/ExpiredTrackingData.md)
 - [DeliverrAPI::ForbiddenError](docs/ForbiddenError.md)
 - [DeliverrAPI::HazmatInfo](docs/HazmatInfo.md)
 - [DeliverrAPI::HazmatStatus](docs/HazmatStatus.md)
 - [DeliverrAPI::InboundStatus](docs/InboundStatus.md)
 - [DeliverrAPI::InjectionLocation](docs/InjectionLocation.md)
 - [DeliverrAPI::IntegrationChannelId](docs/IntegrationChannelId.md)
 - [DeliverrAPI::InternalServerError](docs/InternalServerError.md)
 - [DeliverrAPI::InventoryPool](docs/InventoryPool.md)
 - [DeliverrAPI::InventoryUpdateWebhookEvent](docs/InventoryUpdateWebhookEvent.md)
 - [DeliverrAPI::Item](docs/Item.md)
 - [DeliverrAPI::LabelGenerationJobRequest](docs/LabelGenerationJobRequest.md)
 - [DeliverrAPI::LabelGenerationJobResponse](docs/LabelGenerationJobResponse.md)
 - [DeliverrAPI::LabelLanguage](docs/LabelLanguage.md)
 - [DeliverrAPI::LengthUnit](docs/LengthUnit.md)
 - [DeliverrAPI::LotTrackingDetails](docs/LotTrackingDetails.md)
 - [DeliverrAPI::MockWebhookDetails](docs/MockWebhookDetails.md)
 - [DeliverrAPI::MyPartialProductCustomsInfo](docs/MyPartialProductCustomsInfo.md)
 - [DeliverrAPI::NotFoundError](docs/NotFoundError.md)
 - [DeliverrAPI::OrderApiBundleItem](docs/OrderApiBundleItem.md)
 - [DeliverrAPI::OrderApiCreateRequest](docs/OrderApiCreateRequest.md)
 - [DeliverrAPI::OrderApiLineItem](docs/OrderApiLineItem.md)
 - [DeliverrAPI::OrderApiShipmentItem](docs/OrderApiShipmentItem.md)
 - [DeliverrAPI::OrderApiStatusModel](docs/OrderApiStatusModel.md)
 - [DeliverrAPI::OrderShipmentObject](docs/OrderShipmentObject.md)
 - [DeliverrAPI::OrderStatusWebhookEvent](docs/OrderStatusWebhookEvent.md)
 - [DeliverrAPI::Package](docs/Package.md)
 - [DeliverrAPI::PackageDimensions](docs/PackageDimensions.md)
 - [DeliverrAPI::PackageType](docs/PackageType.md)
 - [DeliverrAPI::ParcelAddress](docs/ParcelAddress.md)
 - [DeliverrAPI::ParcelCountryCode](docs/ParcelCountryCode.md)
 - [DeliverrAPI::ParcelCreateRequest](docs/ParcelCreateRequest.md)
 - [DeliverrAPI::ParcelCreateResponse](docs/ParcelCreateResponse.md)
 - [DeliverrAPI::ParcelGetResponse](docs/ParcelGetResponse.md)
 - [DeliverrAPI::ParcelPackageDimensions](docs/ParcelPackageDimensions.md)
 - [DeliverrAPI::ParcelStatus](docs/ParcelStatus.md)
 - [DeliverrAPI::ParcelTrackingGetResponse](docs/ParcelTrackingGetResponse.md)
 - [DeliverrAPI::ParcelUnprocessableEntityError](docs/ParcelUnprocessableEntityError.md)
 - [DeliverrAPI::ParcelWeightUnit](docs/ParcelWeightUnit.md)
 - [DeliverrAPI::PlanItem](docs/PlanItem.md)
 - [DeliverrAPI::Price](docs/Price.md)
 - [DeliverrAPI::ProductCustomsInfo](docs/ProductCustomsInfo.md)
 - [DeliverrAPI::QcItemStatus](docs/QcItemStatus.md)
 - [DeliverrAPI::QuoteCreateRequest](docs/QuoteCreateRequest.md)
 - [DeliverrAPI::QuoteCreateResponse](docs/QuoteCreateResponse.md)
 - [DeliverrAPI::Report](docs/Report.md)
 - [DeliverrAPI::ReportGenerationRequest](docs/ReportGenerationRequest.md)
 - [DeliverrAPI::ReportGenerationResponse](docs/ReportGenerationResponse.md)
 - [DeliverrAPI::ReportStatus](docs/ReportStatus.md)
 - [DeliverrAPI::ReturnStatus](docs/ReturnStatus.md)
 - [DeliverrAPI::ReturnsApiCreateOrderRequest](docs/ReturnsApiCreateOrderRequest.md)
 - [DeliverrAPI::ReturnsApiCustomer](docs/ReturnsApiCustomer.md)
 - [DeliverrAPI::ReturnsApiInspectedReturnItem](docs/ReturnsApiInspectedReturnItem.md)
 - [DeliverrAPI::ReturnsApiInspectionDetail](docs/ReturnsApiInspectionDetail.md)
 - [DeliverrAPI::ReturnsApiMarketplaceOrder](docs/ReturnsApiMarketplaceOrder.md)
 - [DeliverrAPI::ReturnsApiOrder](docs/ReturnsApiOrder.md)
 - [DeliverrAPI::ReturnsApiProductDetail](docs/ReturnsApiProductDetail.md)
 - [DeliverrAPI::ReturnsApiReturnItem](docs/ReturnsApiReturnItem.md)
 - [DeliverrAPI::ReturnsApiShippingLabel](docs/ReturnsApiShippingLabel.md)
 - [DeliverrAPI::ReturnsDestinationAddress](docs/ReturnsDestinationAddress.md)
 - [DeliverrAPI::ReturnsProductIdentifiers](docs/ReturnsProductIdentifiers.md)
 - [DeliverrAPI::ReturnsPublicApiCarriers](docs/ReturnsPublicApiCarriers.md)
 - [DeliverrAPI::ReturnsPublicApiMarketplace](docs/ReturnsPublicApiMarketplace.md)
 - [DeliverrAPI::ReturnsPublicApiShippingMethod](docs/ReturnsPublicApiShippingMethod.md)
 - [DeliverrAPI::ReturnsSourceAddress](docs/ReturnsSourceAddress.md)
 - [DeliverrAPI::SellerReportType](docs/SellerReportType.md)
 - [DeliverrAPI::ServiceLevel](docs/ServiceLevel.md)
 - [DeliverrAPI::Shipment](docs/Shipment.md)
 - [DeliverrAPI::ShipmentItem](docs/ShipmentItem.md)
 - [DeliverrAPI::ShipmentType](docs/ShipmentType.md)
 - [DeliverrAPI::ShippingCarrierType](docs/ShippingCarrierType.md)
 - [DeliverrAPI::ShippingLabelFormat](docs/ShippingLabelFormat.md)
 - [DeliverrAPI::ShippingLabelResponse](docs/ShippingLabelResponse.md)
 - [DeliverrAPI::ShippingPlanRequest](docs/ShippingPlanRequest.md)
 - [DeliverrAPI::ShippingPlanResponse](docs/ShippingPlanResponse.md)
 - [DeliverrAPI::ShippingPlanStatus](docs/ShippingPlanStatus.md)
 - [DeliverrAPI::ShippingRateError](docs/ShippingRateError.md)
 - [DeliverrAPI::ShippingRateRequest](docs/ShippingRateRequest.md)
 - [DeliverrAPI::ShippingRateResponse](docs/ShippingRateResponse.md)
 - [DeliverrAPI::ShippingServiceType](docs/ShippingServiceType.md)
 - [DeliverrAPI::StatusCodesACCEPTED](docs/StatusCodesACCEPTED.md)
 - [DeliverrAPI::StatusCodesBADREQUEST](docs/StatusCodesBADREQUEST.md)
 - [DeliverrAPI::StatusCodesCONFLICT](docs/StatusCodesCONFLICT.md)
 - [DeliverrAPI::StatusCodesFORBIDDEN](docs/StatusCodesFORBIDDEN.md)
 - [DeliverrAPI::StatusCodesINTERNALSERVERERROR](docs/StatusCodesINTERNALSERVERERROR.md)
 - [DeliverrAPI::StatusCodesNOTFOUND](docs/StatusCodesNOTFOUND.md)
 - [DeliverrAPI::StatusCodesUNAUTHORIZED](docs/StatusCodesUNAUTHORIZED.md)
 - [DeliverrAPI::StatusCodesUNPROCESSABLEENTITY](docs/StatusCodesUNPROCESSABLEENTITY.md)
 - [DeliverrAPI::StorageApiInboundResponse](docs/StorageApiInboundResponse.md)
 - [DeliverrAPI::StorageItem](docs/StorageItem.md)
 - [DeliverrAPI::TokenResponse](docs/TokenResponse.md)
 - [DeliverrAPI::TrackingResultTimestamps](docs/TrackingResultTimestamps.md)
 - [DeliverrAPI::TrackingStatus](docs/TrackingStatus.md)
 - [DeliverrAPI::UnId](docs/UnId.md)
 - [DeliverrAPI::UnauthorizedError](docs/UnauthorizedError.md)
 - [DeliverrAPI::UnprocessableEntityError](docs/UnprocessableEntityError.md)
 - [DeliverrAPI::WarehouseDetails](docs/WarehouseDetails.md)
 - [DeliverrAPI::WarehouseIdType](docs/WarehouseIdType.md)
 - [DeliverrAPI::WebhookAuthType](docs/WebhookAuthType.md)
 - [DeliverrAPI::WebhookCreateModel](docs/WebhookCreateModel.md)
 - [DeliverrAPI::WebhookMockUpdateType](docs/WebhookMockUpdateType.md)
 - [DeliverrAPI::WebhookModel](docs/WebhookModel.md)
 - [DeliverrAPI::WebhookOrderStatus](docs/WebhookOrderStatus.md)
 - [DeliverrAPI::WebhookRequestMethod](docs/WebhookRequestMethod.md)
 - [DeliverrAPI::WebhookType](docs/WebhookType.md)
 - [DeliverrAPI::WebhookTypeINVENTORYUPDATE](docs/WebhookTypeINVENTORYUPDATE.md)
 - [DeliverrAPI::WebhookTypeORDERSTATUSUPDATE](docs/WebhookTypeORDERSTATUSUPDATE.md)
 - [DeliverrAPI::WeightUnit](docs/WeightUnit.md)


## Documentation for Authorization


### OAuth2.0


- **Type**: OAuth
- **Flow**: accessCode
- **Authorization URL**: https://api.deliverr.com/oauth/v1/authorize
- **Scopes**: 
  - api/products: access to products endpoints
  - api/orders: access to orders endpoints
  - api/returns: access to returns endpoints
  - api/parcels: access to parcel endpoints
  - api/reports: access to reports endpoints
  - api/webhooks: access to webhooks endpoints
  - api/parcel-integration: access to parcel integration endpoints

