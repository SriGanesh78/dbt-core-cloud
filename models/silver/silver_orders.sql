SELECT
  id,
  date(date_format(created_at,'yyyy-MM-dd')) as order_date,
  user_id,
  product_id,
  quantity,
  unit_price,
  unit_price * quantity as order_amount
from {{ ref('bronze_orders') }}