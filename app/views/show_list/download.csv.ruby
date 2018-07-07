require 'csv'

CSV.generate do |csv|
  cols = [
    WantList.human_attribute_name("id"),
    WantList.human_attribute_name("product"),
    WantList.human_attribute_name("url"),
    WantList.human_attribute_name("comment"),
    WantList.human_attribute_name("want_lists_count")
  ]

  csv << cols
  @wantlists.each do |list|
    col_values = [
      list.id,
      list.product,
      list.url,
      list.comment,
      list.want_lists_count
    ]
    csv << col_values
  end
end
