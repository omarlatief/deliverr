# DeliverrAPI::ReturnsApiReturnItem

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **product** | [**ReturnsApiProductDetail**](ReturnsApiProductDetail.md) |  |  |
| **quantity** | **Float** | Quantity of product send when creating return order. |  |

## Example

```ruby
require 'deliverr_api'

instance = DeliverrAPI::ReturnsApiReturnItem.new(
  product: null,
  quantity: null
)
```

