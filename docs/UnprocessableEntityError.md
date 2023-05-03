# DeliverrAPI::UnprocessableEntityError

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **code** | [**StatusCodesUNPROCESSABLEENTITY**](StatusCodesUNPROCESSABLEENTITY.md) |  |  |
| **message** | **String** |  | [default to &#39;Unprocessable Entity&#39;] |
| **type** | **String** |  | [optional] |

## Example

```ruby
require 'deliverr_api'

instance = DeliverrAPI::UnprocessableEntityError.new(
  code: null,
  message: null,
  type: null
)
```

