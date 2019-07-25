rails generate draft:scaffold house name:string
has_many :boxes, dependent: :destroy
has_many :items, through: :boxes

rails generate draft:scaffold box description:string house:references
has_many :items, dependent: :destroy
belongs_to :house

rails generate draft:scaffold item name:string box:references
belongs_to :box
has_one :house, through: :box
