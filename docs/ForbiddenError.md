# DeliverrAPI::ForbiddenError

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **code** | [**StatusCodesFORBIDDEN**](StatusCodesFORBIDDEN.md) |  |  |
| **message** | **String** |  | [default to &#39;Forbidden&#39;] |
| **type** | **String** |  | [optional] |

## Example

```ruby
require 'deliverr_api'

instance = DeliverrAPI::ForbiddenError.new(
  code: null,
  message: null,
  type: null
)
```

