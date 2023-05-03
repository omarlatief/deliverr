# DeliverrAPI::ReturnsApiInspectionDetail

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **status** | [**QcItemStatus**](QcItemStatus.md) |  |  |
| **quantity** | **Float** | Number of items belonging to a inspection status. |  |

## Example

```ruby
require 'deliverr_api'

instance = DeliverrAPI::ReturnsApiInspectionDetail.new(
  status: null,
  quantity: null
)
```

