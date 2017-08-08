class ShoesDatatable < ApplicationDatatable
  delegate :edit_shoe_path, to: :@view
  delegate :t, to: :@view
  delegate :image_tag, to: :@view
  delegate :content_tag, to: :@view

  private


  def data
    shoes.map do |shoe|
      [].tap do |column|
        column << shoe.model
        column << shoe.brand.name
        column << shoe.isbn
        column << shoe.release_year.to_s
        column << shoe.sku
        column << (shoe.image_url ?  image_tag(shoe.image_url, class: 'image-shoe-table') : '-')

        links = []
        links << link_to(content_tag('i','visibility', class: 'material-icons'), shoe)
        links << link_to(content_tag('i','edit', class: 'material-icons'), edit_shoe_path(shoe))
        links << link_to(content_tag('i','delete', class: 'material-icons'),
                         shoe, method: :delete,
                         data: { confirm: t('helpers.alert.confirm')  })
        column << links.join('')
      end
    end
  end

  def count
    Shoe.count
  end

  def total_entries
    shoes.total_count
    # will_paginate
    # users.total_entries
  end

  def shoes
    @shoes ||= fetch_shoes
  end

  def fetch_shoes
    search_string = []
    columns.compact.each do |term|
      search_string << "#{term} like :search"
    end

    # will_paginate
    shoe = Shoe.all.joins(:brand)
    shoe = shoe.order("#{sort_column} #{sort_direction}") if sort_column
    shoe = shoe.page(page).per(per_page)
    shoe = shoe.where(search_string.join(' or '), search: "%#{params[:search][:value]}%")
    shoe.includes(:brand)
  end

  def columns
    ['model', 'brands.name', 'isbn', 'release_year', 'sku', 'image',nil]
  end
end