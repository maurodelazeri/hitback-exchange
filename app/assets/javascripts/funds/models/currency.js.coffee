class Currency extends HitbackModel.Model
  @configure 'Currency', 'key', 'code', 'coin', 'blockchain'

  @initData: (records) ->
    HitbackModel.Ajax.disable ->
      $.each records, (idx, record) ->
        currency = Currency.create(record.attributes)

window.Currency = Currency
