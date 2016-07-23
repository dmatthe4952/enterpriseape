json.array!(@invoices) do |invoice|
  json.extract! invoice, :id, :date, :company_id, :tax, :employee_id
  json.url invoice_url(invoice, format: :json)
end
