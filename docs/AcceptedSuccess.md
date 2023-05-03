# DeliverrAPI::AcceptedSuccess

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **code** | [**StatusCodesACCEPTED**](StatusCodesACCEPTED.md) |  |  |
| **message** | **String** |  | [default to &#39;Accepted&#39;] |
| **type** | **String** |  | [optional] |

## Example

```ruby
require 'deliverr_api'

instance = DeliverrAPI::AcceptedSuccess.new(
  code: null,
  message: null,
  type: null
)
```

